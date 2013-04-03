---
layout: post
title: "kernel -ck en ubuntu precise"
---

## {{ page.title }}
<p class="date">{{ page.date | date_to_string }}</p>

<div class="p"><strong><a href="http://ck-hack.blogspot.mx/" target="_blank">-ck</a></strong> es la extensión de los parches de <a href="http://en.wikipedia.org/wiki/Con_Kolivas" target="_blank">Con Kolivas</a> para incrementar el rendimiento de Linux en PC's y laptops "normales". Tradicionalmente el kernel viene optimizado para servidores, clusters, y mainframes, de ahí que estos parches sean populares entre las personas que desean mejorar su entorno para juegos, multimedia y trabajo ordinario (navegación en internet, edición de textos, mensajería instantanea, etc).
</div>

<!--<div class="p"><strong><a href="http://www.liquorix.net/" target="_blank">http://www.liquorix.net/</a></strong> es un sitio donde se alojan kernels optimizados para el escritorio basados en Debian-->
<!--</div>-->

<div class="p">Se ha discutido un par de veces si deberían incluirse en los repositorios de Ubuntu, sin embargo hasta el momento no se ha llegado a ningún acuerdo principalmente porque no hay suficientes personas para mantenerlos, lo único que existe son algunos ppa's, y todos ellos estan desactualizados. Uno de los últimos intentos fue:
</div>

<ul>
  <li><a href="https://lists.launchpad.net/ck-patchset/msg00019.html" target="_blank">https://lists.launchpad.net/ck-patchset/msg00019.html</a></li>
</ul>

<div class="p">Los pasos para compilar un kernel con estas modificaciones son:
</div>

<ul>
	<li>Descargar el kernel vanilla</li>
	<li>Descargar y aplicar los parches: -ubuntu, -bfq, -ck</li>
	<li>Configurar el kernel</li>
	<li>Compilar</li>
	<li>Instalar</li>
</ul>

<div class="p">Afortunadamente los usuarios de ubuntu-br.org han estado siguiendo la discusión de cerca, y han creado un script que automatiza el proceso:
</div>

<ul>
	<li><a href="http://ubuntuforum-br.org/index.php/topic,29799.0.html" target="_blank">Kernel Omnislash (Unofficial) - Aprendendo a voar sem segredos!!!</a></li>
	<li><a href="http://sourceforge.net/projects/scriptkernel/files/" target="_blank">http://sourceforge.net/projects/scriptkernel/files/</a></li>
</ul>

<div class="p">Después de revisarlo, lo he modificado un poco (para evitar algunos errores y agregar un par de cosas) y lo he puesto en: <a href="https://github.com/chilicuil/learn/blob/master/sh/kernel-ck-ubuntu" target="_blank">https://github.com/chilicuil/learn/blob/master/sh/kernel-ck-ubuntu</a>
</div>

<div class="p">La idea es que cada tanto revise el script y lo modifique para tener siempre la última versión de los parches para la última versión LTS de Ubuntu, al menos hasta que aprenda a empaquetarlo para subirlo a un ppa, si desean usarlo pueden descargarlo y ejecutarlo así:
</div>

<pre class="sh_sh">
$ wget https://raw.github.com/chilicuil/learn/master/sh/kernel-ck-ubuntu
$ time bash kernel-ck-ubuntu
$ sudo dpkg -i ./linux-*.deb
</pre>

<div id="img">
  <center><a href="/assets/img/59.png" target="_blank"><img style="width: 583px; height: 363px;" src="/assets/img/59.png"></a>
</div>

<div class="p">Y reiniciar el equipo
</div>

<div class="p">Si no desean compilarlo, he preparado paquetes para amd64 y para x86
</div>

<ul>
	<li><a href="http://ubuntuone.com/0tFgExMBfl0ajtOAJkuZhM" target="_blank">amd64</a></li>
	<li><a href="http://ubuntuone.com/7gnOVHx5CaS1tH2aV8LTGb" target="_blank">x86</a></li>
</ul>