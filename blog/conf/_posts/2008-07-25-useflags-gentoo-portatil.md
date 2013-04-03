---
layout: post
title: "use flags (gentoo) para portatil"
---

## {{ page.title }}
<p class="date">{{ page.date | date_to_string }}</p>

<div class="p">Flags para un portatil basado en un pentium-m, con soporte para gnome y sin soporte para kde, multimedia, red, programacion y algunas otras cosas.
</div>
<div class="p">
        <font color="#0000ff">#**************Variables USE****************</font><br>
        <font color="#0000ff">#Actualizado a vie feb 29 17:42:10 CST 2008</font><br>
        <br>
        <br>
        <font color="#0000ff">#Consola</font><br>
        USE="${USE} bash-completion gpm ncurses slang fbcon"<br>
        <br>
        <font color="#0000ff">#Entorno grafico<br>
        </font> USE="${USE} dbus X gnome -kde cairo libnotify "<br>
        <br>
        <font color="#0000ff">#Grabacion/Lectura cd/dvd</font><br>
        USE="${USE} cdr -dvdr dvdread "<br>
        <br>
        <font color="#0000ff">#Hardware</font><br>
        USE="${USE} -3dfx -3dnow acpi -apm -altivec bluetooth hal ieee1394 ipod lirc lm_sensors<br>
        mmx hddtemp -mpi -multilib -netboot nocd pcmcia pda ppds -scanner sse sse2 usb wifi<br>
        gphoto2 opengl"<br>
        <br>
        <font color="#0000ff">#Desarrollo</font><br>
        USE="${USE} cscope dbm doc emacs examples expat -fortran -gcj gtk -ifc -jikes java java6<br>
        javascript -mule pcre perl php python -qt3 -qt4 readline ruby sdl spl subversion"<br>
        <br>
        <font color="#0000ff">#Red</font><br>
        USE="${USE} -aim cups -freewnn ftp -icq idn imap ipv6 jabber libgda mime mozilla msn -oscar<br>
        samba sockets socks5 ssl vhosts -yahoo evo mailwrapper rss"<br>
        <br>
        <font color="#0000ff">#Sonido y codecs de audio</font><br>
        USE="${USE} alsa -oss ao esd osc ladspa lame libsamplerate pulseaudio aac -arts audiofile<br>
        &nbsp;-cddb cdparanoia dts flac jack lash mad matroska mikmod modplug mp3 musepack musicbrainz&nbsp; ogg openal shorten sox speex vorbis "<br>
        <br>
        <font color="#0000ff">#Tipos de archivos</font><br>
        USE="${USE} bzip2 pdf xml zlib "<br>
        <br>
        <font color="#0000ff">#Imagenes</font><br>
        USE="${USE} imagemagick gif jbig jpeg jpeg2k lcms mng openexr png raw svg -wmf xpm"<br>
        <br>
        <font color="#0000ff">#Video y codecs de video</font><br>
        USE="${USE} a52 aalib dv dvb dvd encode exif ffmpeg gstreamer libcaca mpeg mplayer quicktime theora v4l2 vcd -win32codecs xv xvid"<br>
        <br>
        <font color="#0000ff">#Seguridad</font><br>
        USE="${USE} clamav cracklib crypt pam syslog "<br>
        <br>
        <font color="#0000ff">#Otros</font><br>
        USE="${USE} -accessibility -bindist cdinstall -debug fam nptl offensive -old-linux posix session<br>
        source spell threads truetype unicode videos xprint xscreensaver nls"<br>
        <br>
        <br>
        <font color="#0000ff">#Use Flags peligrosas: alpha, amd64, arm, hppa, ia64, mips, ppc, ppc64</font><br>
        <font color="#0000ff"> # ppc-macos, s390, sh, sparc, x86 </font><br>
        <br>
        <font color="#0000ff">#*******************************************</font><br>
        <font color="#0000ff">#*******************************************</font><br>
        <br>
        <br>
        Para recompilar el sistema despues de cambiar las use flags:</div>

<pre class="sh_sh">
$ emerge --update --deep --with-bdeps=y --newuse world
</pre>