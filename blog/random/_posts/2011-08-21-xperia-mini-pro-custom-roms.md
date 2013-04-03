---
layout: post
title: "xperia mini pro - custom roms"
---

## {{ page.title }}
<p class="date">{{ page.date | date_to_string }}</p>

<div class="p"> Nada, hace poco me he hecho de un xperia mini pro (por $2800), después de haber perdido un xperia mini =(, y este fin de semana he experimentado hasta dejarlo con una configuración aceptable (a mi gusto), así que dejo un breve resumen de los pasos que seguí para ayudarme en el futuro.
</div>

<div class="p">Este tutorial no debería seguirse a menos que se tenga exactamente el mismo teléfono y se desee obtener el mismo resultado.
</div>

<div class="p">ANTES
</div>

<ul>
    <li>Android <strong>1.6</strong> (SonyEricson) / <strong>Donut</strong></li>
    <li>versión de banda base <strong><span style="color: rgb(255, 0, 0);">M76XX-TSNCJOLYM-53404006</span></strong></li>
    <li>Modelo: u20a</li>
</ul>

<div align="center" id="img">
<a href="/assets/img/41.png"><img src="/assets/img/41.png" style="width: 170px; height: 227px;"></a>
<a href="/assets/img/42.jpeg"><img src="/assets/img/42.jpeg" style="width: 169px; height: 226px;"></a>
<a href="/assets/img/43.png"><img src="/assets/img/43.png" style="width: 171px; height: 228px;"></a>
</div>

<div class="p">DESPUÉS
</div>

<ul>
    <li>Android <strong>2.3.5</strong> (GinTonic.Se 1.3) / <strong>Gingerbread</strong></li>
    <li>versión de banda base <strong><span style="color: rgb(255, 0, 0);">M76XX-TSNCJOLYM-53404015</span></strong></li>
    <li>Modelo: u20i</li>
</ul>

<div align="center" id="img">
<a href="/assets/img/44.png"><img src="/assets/img/44.png" style="width: 168px; height: 224px;"></a>
<a href="/assets/img/45.png"><img src="/assets/img/45.png" style="width: 166px; height: 223px;"></a>
<a href="/assets/img/46.png"><img src="/assets/img/46.png" style="width: 167px; height: 223px;"></a>
</div>

<div class="p">Descarga:
</div>

<ul>
    <li><strong>build.prop</strong> (útil para cambiar la banda <strong><span style="color: rgb(0, 0, 255);">53404006</span></strong> -&gt; <strong><span style="color: rgb(0, 128, 0);">53404015</span></strong>)</li>
    <li><strong>root-xrecovery_x10miniPro.exe</strong> (rootea e instala xrecovery, requiere Windows)</li>
    <li><strong>mybackupPro.apk</strong> (backup de contactos, sms, apps)</li>
</ul>

<ul>
	<li><a href="http://www.multiupload.com/4W2VJ6URER">http://www.multiupload.com/4W2VJ6URER</a></li>
</ul>

<h3>FAQ</h3>

<div class="p">
<em>¿Qué es android?</em><br><br>
Android es un sistema operativo enfocado a teléfonos y tabletas, principal competencia del sistema operativo que viene en los iphone, esta basado en linux, aunque modifica muchas partes esenciales del mismo. Tiene miles de aplicaciones, gps, reconocimiento de voz, skype, twitter, facebook, youtube, angrybirds, etc.<br><br>
<em>¿Qué es un custom rom?</em><br><br>
Un custom rom es un sistema operativo modificado que reemplaza el que Sony Ericson/Telcel han puesto en tu teléfono.<br><br>
<em>¿Cúal es la ventaja de un custom rom?</em><br><br>
En primer lugar que corre una versión más reciente de android, adquiriendo un aumento en el rendimiento, por ejemplo android 2.2 es dos veces más rapido que android 2.1, y android 2.3 es 25% más rapido que la versión 2.2<br><br>
También puede hacer otras cosas, por ejemplo mover las aplicaciones a la memoria externa (app2sd) o compartir internet a otros dispositivos a través de usb/wifi (requiere plan de datos).<br><br>
<em>¿Cuáles son los requerimientos?</em><br><br>
Tener instalado xrecovery y haber 'rooteado' el teléfono, adicionalmente se puede tener a la mano PC Companion o SEUS (sony ericson update service) para regresar el teléfono a su instalación de fabrica.<br><br>
<em> ¿Qué es 'rootear'?</em><br><br>
Rootear se refiere a obtener permisos de administrador, por defecto los teléfonos traen medidas de seguridad que evitan, por ejemplo, eliminar aplicaciones que vienen por defecto (muestras de juegos, ideas telcel, etc). Con un teléfono rooteado es posible eliminarlas.<br><br>
<em>¿Qué es xrecovery?</em><br><br>
Xrecovery es un programa que se utiliza para instalar custom roms, se accede a el presionando la flecha &lt;- al arranque del movil (cuando aparece la leyenda 'sony ericson')<br><br>
<em> ¿Cómo se instala un custom rom?</em><br><br>
Los custom rom se distribuyen como archivos zip (1 archivo zip por rom), y se instalan con xrecovery<br><br>
<em>¿Qué implicaciones legales conlleva instalar un custom rom?</em><br><br>
Se pierde la garantía, sin embargo el proceso puede ser revertido si es que en algún momento se requiere reinstalar la versión con la que venía el teléfono.
</div>

<h3>Backup</h3>

<div class="p">Si el teléfono ya estaba siendo utilizado con anterioridad, es probable que haya datos que no se deseen perder, en el market existen aplicaciones que ayudan a hacer esto, adicionalmente de los datos que se sincronizan con la cuenta de google que se definio en el teléfono.
</div>

<div class="p">Personalmente utilice <strong>mybackup pro</strong> (sms's) y <strong>titanium backup</strong> (aplicaciones), mybackup pro viene incluido en el link de descarga, titanium puede adquirirse desde el market.
</div>

<div class="p">Para instalar aplicaciones fuera del market, hay que habilitar <strong>'Origenes Desconocidos'</strong><br><br>
</div>

<ul>
	<li>Ajustes/Aplicaciones/Origenes Desconocidos</li>
</ul>

<h3>Rootear e instalar xrecovery</h3>

<div class="p">Existen métodos y aplicaciones que otorgan permisos e instalan xrecovery, pero el más simple que encontré fue usar 1click:
</div>

<ul>
	<li>root-xrecovery_x10miniPro.exe (viene incluido en el zip)</li>
</ul>

<div class="p">Para usarlo se siguen los siguientes pasos:
</div>

<ol>
        <li>Preparar el teléfono, habilitar la "depuración USB" en <strong>ajustes/aplicaciones/desarrollo</strong></li>
        <li>Extraer el archivo (yo lo hice con WindRar)</li>
        <li>Conectar el teléfono a la computadora</li>
        <li>Abrir oneclickroot</li>
        <li>Hacer click en 'root' y esperar que finalice (no debe demorar mas de 2 min)</li>
        <li>Hacer click en 'xrecover' y esperar otro par de minutos</li>
        <li>Reiniciar</li>
</ol>

<div class="p">Ahora el teléfono debería estar rooteado y tener xrecovery (se puede probar presionando la flecha al arranque - aparecerá un menú)
</div>

<h3>Cambiar banda base</h3>

<div class="p">Muchos de los custom roms solo son compatibles con la versión 53404015, por lo que se tiene que actualizar a esa versión antes de volcar los roms, de lo contrario el teléfono entrará en un ciclo de reinicio infinito.
</div>

<div class="p">Para eso se copia
</div>

<ul>
	<li><strong>build.prop</strong> a <strong>/system</strong></li>
</ul>

<div class="p">Lo que requiere un navegador de archivos con permisos de administrador, se puede usar <strong>'File Expert'</strong> (accesible a través del market), aunque por defecto no esos permisos, sin embargo se puede habilitar en:
</div>

<ul>
    <li>File Expert/menu/mas/ajustes/ajustes de explorador de archivos/<strong>explorador root</strong></li>
</ul>

<div class="p">Se reinicia el programa y se reemplaza <strong>build.prop</strong> por <strong>/system</strong>
</div>

<div class="p">Después de reiniciar, se conecta a una computadora, donde este corriendo PC Companion (viene incluido en el teléfono), y desde ahí se reestablece al setup de fábrica, el tiempo aproximado dependiendo de la conexión es de 40min (a 100kb/s).
</div>

<div class="p">Después de reiniciar el teléfono la banda base debería ser la <span style="color: rgb(0, 128, 0);">53404015</span>. Si es así se siguen los pasos de "<strong>Rootear e instalar xrecovery</strong>" para reinstalar los componentes necesarios.
</div>

<h3>Instalar custom roms</h3>

<div class="p">Es recomendable hacer un backup del rom de fábrica, de esta manera si no convence el custom rom, se puede recuperar el sistema original, para probar con otro.
</div>

<div class="p">Para crear un backup se reinicia el teléfono, y se presiona la tecla que tiene una flecha, aparecerá un menú, ahí se selecciona (se mueve con las teclas de volúmen, y se selecciona con la tecla de en medio)
</div>

<ul>
	<li>backup and restore/<strong>Backup</strong></li>
</ul>

<div class="p">Eso creará una copia de seguridad en <strong>/sdcard/xrecovery</strong>, para recuperarla se selecciona:
</div>

<ul>
	<li>backup and restore/<strong>restore</strong></li>
</ul>

<div class="p">Algunos de los custom roms disponibles para el xperia mini pro, estan listados aquí:
</div>

<ul>
	<li><a href="http://tinyurl.com/3smura5">http://tinyurl.com/3smura5</a></li>
</ul>

<div class="p">Después de probar algunos, he decidido usar de forma continua <strong>GinTonic.SE | v1.3</strong> (120MB~), disponible en:
</div>

<ul>
	<li><a href="http://forum.xda-developers.com/showthread.php?t=1207740">http://forum.xda-developers.com/showthread.php?t=1207740</a></li>
</ul>

<div class="p">La instalación de este y de otros, pasa por:
</div>

<ul>
	<li>Reiniciar el telefono</li>
	<li>Entrar en xrecovery (presionar varias veces la tecla de la fecla derecha</li>
	<li>Ir a <strong>install zip from sdcard/choose zip from sdcard</strong> y seleccionar el archivo zip</li>
	<li>Esperar la instalación</li>
	<li>Ir a <strong>wipe data/factory reset</strong></li>
	<li>Reiniciar</li>
</ul>

<div class="p">Con eso, arrancará el nuevo SO, se llenará el perfil (cuenta de gmail), se instalará mybackupPro/titanium y se recuperaran los datos/aplicaciones.
</div>

<div class="p">Estos custom roms ya viene rooteados y con xrecovery, así que no es necesario volver a correr 1click por tercera vez.
</div>

<h3>EXTRA (intermedio)</h3>

<div class="p">Instalar (desde el market)
</div>

<ul>
	<li>Taskiller</li>
	<li>AdFree</li>
</ul>

<div class="p">Liberar espacio
</div>

<div class="p">Para mover las aplicaciones a la tarjeta externa se va a:
</div>

<ul>
    <li><strong>menu/administrar aplicaciones/descargadas</strong>, luego se selecciona la aplicación y se presiona <strong>mover a sdcard</strong>, libera aprox el 50% del tamaño de la app.
    </li>
</ul>

<ul>
    <li>Otro truco es eliminar <strong>/data/dalvik-cache</strong> y reiniciar (libera 13~ MB)</li>
</ul>

<ul>
    <li>O eliminar la cache de los programas en <strong>/data/data</strong>, para saber cual app guarda más datos, se puede abrir una consola (viene incluida con el rom) y se escribe:</li>
</ul>

<pre class="sh_sh">
$ du -sk /data/data/* | sort -rn | head
</pre>

<div class="p">Y luego:
</div>

<pre class="sh_sh">
$ rm -rf /data/data/some_app/cache
</pre>

<ul>
    <li>También se puede mover las caches de algunos programas a otros lugares, para eso se hace un softlink</li>
</ul>

<pre class="sh_sh">
$ mkdir -p /sdcard/cache/market
$ cd /data/data/com.android.vending
$ rm -R cache
$ ln -s /sdcard/cache/market cache
</pre>