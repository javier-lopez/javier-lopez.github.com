---
layout: post
title: "conexión a ssh transpasando nats en dominio personalizado"
---

## {{ page.title }}
###### {{ page.date | date_to_string }}

Muy bien, admito que el título pudo ser mejor, pero piensen en esto, una forma de conectarse a una computadora sin tener que modificar las reglas de nateo de un router y utilizando siempre el mismo dominio (su dominio), incluso cuando la maquina a la que deseen conectarse este cambiando entre redes. Todo esto con solo 1 comando, si esto no los emociona, pueden dejar de leer ahora.

[![alt text](/assets/img/68.jpg)](/assets/img/68.jpg)

Si han pensado en dyndns y proyectos similares han estado cerca, pero dyndns solo permite mantener un sub dominio (no muy atractivo) y se tienen que seguir configurando los routers para permitir el paso a los puertos que nos interesan. Antes de continuar un poco de background, soy un fanatico de la personalización, mi computadora tiene una configuración que me ha tomado años definir, y que me permite (en mi propia opinion) hacer mas cosas con menos esfuerzo. Cientos de aliases, 5-6 entornos chroots preconfigurados, maquinas virtuales locales (y remotas, ec2), un archivo .bash_history de ~38,000 lineas... También soy fan de la portabilidad, no me gusta llevar nada conmigo a excepción de un telefono, unos audifonos y un libro.

Así pues, la solución que he contemplado es conectarme a mi equipo desde donde sea que este, ahora mismo lo hago de esta forma:

<pre class="sh_sh">
[algun_lugar] $ ssh home.javier.io
</pre>

No importa donde este, tampoco importa en que red se encuentre mi equipo personal, este comando funcionará, =) Esto no solo puede usarse para logearse a su computadora, si se dedican al desarrollo web y quieren mostrar su trabajo en menos de 1min y solo por el tiempo que deseen puede servirles.

Todo empieza con una cuenta en <http://pagekite.net> un startup de [Bjarni Einarsson](http://bre.klaki.net/), hacker islandes.

Una vez con su una cuenta, podran correr:

<pre class="sh_sh">
$ curl -s https://pagekite.net/pk/ |sudo bash #lo que instalara pagekite que es 1 solo archivo
$ pagekite.py 80 yourname.pagekite.me
</pre>

Y tendran su servidor web accesible en la red, tomaré por sentado que pueden instalar y configurar pagekite hasta aquí. Ahora mostraré como hacerlo para que resuelva a un dominio personalizado y con el protocolo ssh en lugar del http (corriendo en el puerto 1003).

Esto es más o menos lo que pasa cuando se utiliza pagekite:

<pre class="sh_sh">
$ ssh home.javier.io
</pre>

           192.168.1.x       home.javier.io  home.javier.pagekite.me   192.168.1.x
           :::::::::::        :::::::::::          ::::::::::::        :::::::::::::::
           | cliente |   =>   | dominio |    =>    | pagekite |     => | servidor ssh|
           :::::::::::        :::::::::::          ::::::::::::        :::::::::::::::

Hay que notar, que aunque el servidor ssh corre en el puerto 1003 (o en el que ustedes quieran), al momento de conectarse, se hace la referencia al puerto por defecto (22), esto es corto y seguro.

### Dns

- Cname

Para que esto funcione, home.javier.io debe apuntar a pagekite, esto se hace agregando una entrada CNAME al dns de su dominio, para mi caso, he creado una entrada de **home** a **home.javier.pagekite.me** desde <http://iwantmyname.com>, que es donde registro mis dominios.

[![alt text](/assets/img/69.png)](/assets/img/69.png)

- Subdominio en [pagekite.me](http://pagekite.net)

Cuando se registra una cuenta, pagekite otorga un subdominio en forma de **su_nick.pagekite.me**, sin embargo a esos subdominios tambien se les [pueden agregar más](https://pagekite.net/signup/?more=free) subdominios a la vez, **subdominio.su_nick.pagekite.me**: 

[![alt text](/assets/img/70.png)](/assets/img/70.png)

- Kite home.javier.io

Finalmente, [se crea una entrada](https://pagekite.net/signup/?more=cname#cnameForm) con **home.javier.io** en el registreo de kites.

[![alt text](/assets/img/71.png)](/assets/img/71.png)

De regreso al [índice](https://pagekite.net/home/), la cuenta debería lucir así.

[![alt text](/assets/img/72.png)](/assets/img/72.png)

### Servidor

Si han finalizado los pasos anteriores, podrán configurar la máquina a la que deseen conectarse agregando un archivo **$HOME/.pagekite.rc**:

    ###[ Current settings for pagekite.py v0.5.6a. ]#########
    #
    ## NOTE: This file may be rewritten/reordered by pagekite.py.
    #
     
    ##[ Default kite and account details ]##
    kitename = javier.pagekite.me
    kitesecret = KITESECRET_KEY
     
    ##[ Front-end settings: use pagekite.net defaults ]##
    defaults
     
    ##[ Back-ends and local services ]##
    service_on = http:@kitename : localhost:80 : @kitesecret
    service_on = raw-22:@kitename : localhost:1003 : @kitesecret
    service_on = raw-22:home.javier.pagekite.me : localhost:1003 : @kitesecret
    service_on = raw-22:home.javier.io : localhost:1003 : @kitesecret
     
    ##[ Miscellaneous settings ]##
    savefile = /home/chilicuil/.pagekite.rc
     
    ###[ End of pagekite.py configuration ]#########
    END

Una vez hecho eso, se descarga y arranca pagekite.

    [maquina_a_la_que_quiero_conectarme] $ ./pagekite.py
    >>> Hello! This is pagekite v0.5.6a.                            [CTRL+C = Stop]
        Connecting to front-end 69.164.211.158:443 ...                             
         - Protocols: http http2 http3 https websocket irc finger httpfinger raw   
         - Protocols: minecraft                                                    
         - Ports: 79 80 443 843 2222 3000 4545 5222 5223 5269 5670 6667 8000 8080  
         - Ports: 8081 9292 25565                                                  
         - Raw ports: 22 virtual                                                   
        Quota: You have 2559.74 MB, 29 days and 4 connections left.                
        Connecting to front-end 173.230.155.164:443 ...                            
    ~<> Flying localhost:1003 as ssh://home.javier.io:22/ (HTTP proxied)           
    ~<> Flying localhost:1003 as ssh://home.javier.pagekite.me:22/ (HTTP proxied)  
    ~<> Flying localhost:1003 as ssh://javier.pagekite.me:22/ (HTTP proxied)       
    ~<> Flying localhost:80 as https://javier.pagekite.me/                         
     << pagekite.py [flying]   Kites are flying and all is well.

Lo que pondrá todo en marcha.

### Cliente

Para conectarse desde cualquier cliente via ssh. Debe configurarse un proxy, para ssh se edita **$HOME/.ssh/config**:

    Host home.javier.io
        CheckHostIP no
        ProxyCommand /bin/nc -X connect -x %h:443 %h %p

OJO: debe ser la version de nc de openbsd, en Ubuntu se llama **netcat-openbsd**, Y despues:

<pre class="sh_sh">
$ ssh home.javier.io
chilicuil@home.javier.io's password: 
</pre>

Pagekite es software libre, pueden correr la parte que hace de intermediaria en un [vps](http://es.wikipedia.org/wiki/Servidor_virtual_privado) o en una computadora que tenga ip pública, aunque es mucho más fácil hacerlo usando su propio servicio y apoyan su desarrollo al mismo tiempo.