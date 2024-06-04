+++
title="Bitacora + dotfiles y re-instalación"
date=2024-06-02
description="Tips y bitácora de lo que es hacer dotfiles y reinstalar un sistema"
+++

## WORK IN PROGRESS
Falta todavia, pero cuando termine va a haber una bitácora, y al inicio los pasos que tomé. (De forma estructurada)



## Intro
Hacer dotfiles es un trabajo arduo en un inicio, pero luego es una práctica que no puede faltar.
Hay muchas formas, yo utilizo un `.git` en mi home, donde excluyo todo en el `.gitignore` e incluyo
específicamente lo que me interesa utilizando el parametro `-f` del comando `git add`.

## Comandos útiles

| Comando | Utilidad    |
|---------|-------------|
| `pacman -Qqent > native.txt` | Guardá los paquetes oficiales que instalaste (Excluye los q son dependencias) |
| `pacman -Qqemt > foreign.txt` | Guardá los paquetes no-oficiales (AUR) que instalaste (Excluye los q son dependencias) |
| `pacman -Sy - < <(curl $URL_DEL_TXT)` | Instalá los paquetes desde un `.txt` en internet |
| `curl $URL_DEL_BASH`&#x7c;`bash` | Ejecuta un script de un `.bash` de internet |


## Bitácora
##### 01/06/2024 - 22:29
Creí que iba a ser mucho mas rápido, pero tal vez ni un fin de semana me alcance, especialmente la parte de la re-configuración de terminales,
ya que me pasé a UXTerm debido a que voy a usar `tmux` para todo lo referido a Tabs y coso...

##### 01/06/2024 - 23:33
Me pasé a rxvt-unicode al final (URxvt), cambié el theme a gruvbox-material (dark).

##### 01/06/2024 - 23:44
Terminé de configurar el urxvt, también refactoricé algunas configuraciónes de nvim. (El lualine y el theme.lua)

##### 02/06/2024 - 00:09
Me quedé jugando unas partiditas de lichess... seguimos con los paquetes, diferenciando AUR de los oficiales.

##### 02/06/2024 - 00:46
Con bastante sueño ya, estoy con esto desde hoy temprano pero arranqué a "bitacorear" ahora, me sirve para
concentrarme y para llevar un registro de mis propios pasos, y bueno, si algun gordo nerd le interesa leer esto.

Ya terminé de acomodar los paquetes en native (Oficiales) y foreign.txt (AUR), ahora voy por un script que sea `install.sh`.

Antes quería automatizar el particionado de discos, ahora realmente prefiero hacer esa parte a mano, y el post-install automático. Creo que es lo mas rápido y lo más directo tbh.

##### 02/06/2024 - 01:03
Lo único malo de urxvt es que con nvim no puedo abrir links. Ahora vamos a subir todo esto y acomodar 2
pájaros de un tiro, mi blog en github, y los static files que sirven a la instalación de mis dotfiles


##### 02/06/2024 - 03:25
Está quedando bien, y con un estilo que representa muy bien mi personalidad, me voy a dormir, hacia bastante
no usaba CSS.

##### 02/06/2024 - 13:10
Me re dormí, [pero ya me desperté frente a la pc me senté, el desayuno ya tomé el <s>correo</s> RSS checaré...](https://youtu.be/55zFvFSVgUg?t=38).
Me hice unos buenos mates, y a seguir.

##### 02/06/2024 - 15:59
Listo, logré acomodar mi css, armé el estilo bookie.toml, disponible en mi repo :) (Redacción -666 :p)
Ahora a hacer el deploy de github-pages

##### 02/06/2024 - 18:30
Listo el deploy de github-pages, muy importante no hay que ejecutar el deploy en la branch main, porque
te va a sobre-escribir todo, ya sé que para algunxs es OBVIO, pero para personas que estan aprendiendo
sobre la marcha (como yo, y mis amigos imaginarios que leen este blog ahre), es algo que no es tan obvio,
además de que no hay un cheatsheet conceptual que explique CADA cosa que existe, es prueba y error, ahora
a seguir con el `install.sh` y con el sistema (Cabe destacar qeu en el medio webié, hice housekeeping y
toqué guitarra como 1 hora)

##### 02/06/2024 - 20:33
Terminé el install.sh pero ahora quiero asegurarme de tener todos mis dotfiles configurados, por ahora tengo
la terminal (y [Xresources](https://wiki.archlinux.org/title/X_resources) por consecuencia), nvim (a confirmar...), newsboat,
.bashrc y no sé que mas...

##### 02/06/2024 - 20:58
Me falta hacer el script de backup y ya estoy.

##### 03/06/2024 - 00:42
Renegué un montón con el tar para que me acomode multiples directorios en un solo `gzip`. Ya ahora tengo que dormir para trabajar mañana, no alcanzaron 3 días, que proceso arduo xD

##### 03/06/2024 - 21:13
Terminé de trabajar a las 17, pero estuve descansando y escribiendo otro artículo, ahora voy a seguir haciendo el backup, pero antes modificaré la polybar, realmente quiero que matcheen los colores...
lo mejor de esto es que después tengo que hacerlo con mi pc personal c:

##### 03/06/2024 - 22:22
Terminé de acomodar la branch `work`, ahora voy a acomodar los `dotfiles` globales

1. `/etc/lightdm/lightdm.conf`
2. `/etc/lightdm/slick-greeter.conf`
3. `/etc/X11/xinit/xinitrc`
4. `/etc/vconsole.conf`
5. `/usr/share/backgrounds/greeter-background.jpg`

#### 04/06/2024 - 00:27
Listo los archivos, también modifiqué el script `backup.sh` y agregué el `sudo cp .globdotfiles/* /` al `install.sh`. Ahora a grabar la imágen de `archlinux` en un usb con `Ventoy`






