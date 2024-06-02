+++
title="Bitacora dotfiles + re-instalación"
date=2024-06-02
description="Tips y bitácora de lo que es hacer dotfiles y reinstalar un sistema"
+++

## Intro
Hacer dotfiles es un trabajo arduo en un inicio, pero luego es una práctica que no puede faltar.
Hay muchas formas, yo utilizo un `.git` en mi home, donde excluyo todo en el `.gitignore` e incluyo
específicamente lo que me interesa utilizando el parametro `-f` del comando `git add`.

## Pro tips

| Comando | Utilidad    |
|---------|-------------|
| `pacman -Qqent` | Guardá los paquetes que instalaste (Excluye los q son dependencias) |

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


## Visualización de paquetes
Para obtener los paquetes nativos hacemos:
`pacman -Qn` y vamos a tener una lista importante, luego podemos guardarla a un archivo e iterar por ello

Para obtener los paquetes de AUR hacemos:
`pacman -Qm`

## Backup

1. Backup de nuestro usuario con `~/.scripts/backup.bash`
2. Reinstalar arch y ejecutar el `arch-chroot`
3. Ejecutar `curl https://wsadev01.github.io/setup.bash | bash`
