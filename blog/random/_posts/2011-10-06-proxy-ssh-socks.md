---
layout: post
title: "proxy shh + socks"
---

## {{ page.title }}
<p class="date">{{ page.date | date_to_string }}</p>

<div class="p"><strong>Problema:</strong> páginas como foobar.com:3468, youtube, facebook, twitter, estan bloqueadas
</div>

<div class="p"><strong>Solución</strong>: Utilizar un tunel shh
</div>

<div class="p"><strong>Ingredientes:</strong>
</div>

<ul>
  <li>Cuenta ssh, (<a href="http://cjb.net" target="_blank">cjb.net</a> es la mejor opción que he encontrado hasta ahora)</li>
  <li>Cliente ssh</li>
  <li>Que no se bloquee el tráfico ssh (22 por defecto, pero puede cambiarse al 80)</li>
</ul>

<div class="p"><strong>Procedimiento:</strong>
</div>

<ol>
  <li>Crear un tunel <strong>$  ssh -C2qTnN -D 9090 username@maquina_remota.com</strong></li>
  <li>Configurar firefox, editar - preferencias - avanzado - red - configuración - configuración manual del proxy</li>
  <li>SOCKS Proxy 127.0.0.1 Puerto 9090</li>
</ol>