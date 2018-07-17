# Sistemas de control de versiones
# GIT

Configuración del git
-- global
git config --global --list o -l (ver la configuración global) 

--configurar el usuario global 
git config --global user.name "John Doe"
--configurar el correo global
git config --global user.email johndoe@example.com

-- como obtener ayuda 
git help
git help <comando> -- con este podemos ver la ayuda de un comando en especifico

-- incializar un repositorio
git init

-- ver el estado del repositorio
git status

--adicionar archivos al repositorio o para pasar archivos de modifier to stage
git add <nombre archivo> -- este pasa un archivo especifico
git add . -- este pasa todos los archivos
-- cambiar archivos a estado modified a stage
git add [nombre archivo]

-- commit 
git commit
git commit -m "mensaje del commit"


-- consultar los commits
git log
git log --stat
git log -p esto muestra los combios en cada una de las confirmaciones pasa  salir crt+c o q
git log -[numero de confirmaciones que quiero ver] ver lconfirmaciones	



-- clonar repositorios
git clone "URL del repositorio"

-- para ignorar archivos en la raiz del repositorio agrego un archivo .gitignore con el contenido de lo que queiero que ignore

-- ver cambios detallados
git diff

--eliminar archivos
primero se borra el archivo
git rm [archivo] este comando sirve para preparar los archivos eliminados

-- mover archivos renombrarlos
git mv [nombre archivo 1] [nombre archivo 2]


-- modificar el ultimo commit solo se puede modificar mensaje, y agregar archivos:
1. despues del ultimo commit
2. opcional si se agregan archivos usar el comando git add
3. git commit --amend



-- actualizar el repositorio remoto
git push
git push -u [remoto] [branch] envio el remoto y lo coloco como default
git push [remoto] [brach] envio el remoto pero no cambio el default


-- acualizar el repositoirio local
git pull

--repositorios remotos
git remote ver los repositorios remotos asociados al repositorio local
git remote -v ver los repositorios remotos asociados al repositorio local pero con los URIs
git remote add [nombre del nuevo remoto] [URIs] agregar un nuevo remoto
git remote rename [remoto a cambiar nombre] [nuevo nombre]
git remote rm [remoto]

git push [nombre remoto] [nombre branch]


BORRAR LAS CREDENCIALES DE LOS USUARIOS abrir el cmd Ubicarse en la ruta C:\Program Files\Git\mingw64\libexec\git-core y ejecutar el comando git-credential-manager.exe uninstall


--para crear etiquetas
git tag [etiqueta]
git tag show [etiqueta]

--ramas
git branch [nombre rama] crear rama
git checkout [nombre rama] pasarse a la rama

git checkout -b [nombre rama] crea una rama y se cambia a esa rama
git branch -d [rama]
git branch lista las ramas











--git fetch
crear un branch de lo que esta en el remoto



