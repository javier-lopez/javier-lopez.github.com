---
layout: post
title: "rm + papelería"
---

## {{ page.title }}
<p class="date">{{ page.date | date_to_string }}</p>

<div class="p">Nada, a veces me pasa que hago:
</div>

<pre class="sh_sh">
$ rm foo
</pre>

<div class="p">y poco después me doy cuenta que hubiera preferido no hacerlo, con esto en mente me puse a hacer un pequeño <a href="https://github.com/chilicuil/learn/blob/master/sh/rm_" target="_blank">script</a> alrededor de rm para enviar los archivos a la papelería en lugar de eliminarlos, lo he hecho compatible con nautilus.
</div>

<div class="p"> <em>Ejemplo</em>: Elimino desde terminal <strong>$ rm imagen.png</strong> y luego desde nautilus voy a papelería y lo restauro, o viceversa, lo puedo eliminar desde la papelería y cuando esté en la consola lo recupero con <strong>$ rm -u imagen.png</strong>
</div>

<div align="center"><img src="/assets/img/53.png" style="width: 552px; height: 230px;">
</div>

<div class="p">Para usarlo lo he movido a <strong>/usr/local/bin</strong> y luego he creado un alias en <strong>~/.bashrc</strong>:
</div>

<pre class="sh_sh">
$ alias rm='/usr/local/bin/rm'
</pre>