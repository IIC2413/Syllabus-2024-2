# Ayudantía Web + SQL

## Video Ayudantía

[https://youtu.be/aAPgyJAbA0o](https://youtu.be/aAPgyJAbA0o)

## Conexión con base de datos localmente

1. ### Instalación del servidor local de PHP

Si aún no tienes un servidor local de PHP instalado, puedes hacerlo de la siguiente manera:

- Para **Ubuntu/Debian**:
  ```bash
  sudo apt install php php-pgsql
  ```
- Para **macOS (usando Homebrew)**:
  ```bash
  brew install php  
  ```              

2. ### Instalar PostgreSQL

También deben instalar PostgreSQL para gestionar la base de datos. Los comandos varían según el sistema operativo:

- Para **Ubuntu/Debian**:
  ```bash
  sudo apt install postgresql postgresql-contrib
  ```
- Para **macOS (usando Homebrew)**:
  ```bash
  brew install postgresql  
  ``` 

### 3. Iniciar PostgreSQL

Una vez instalado, es necesario iniciar el servidor de PostgreSQL. Los comandos varían según el sistema operativo:

- Para **Ubuntu/Debian**:
  ```bash
  sudo service postgresql start
  ```

- Para **macOS (usando Homebrew)**:
  ```bash
  brew services start postgresql
  ```

### 4. Acceder a la consola de PostgreSQL

Para ingresar a la consola de PostgreSQL, utiliza los siguientes comandos:

- **Ubuntu/Debian:**
  ```bash
  sudo -u postgres psql
  ```
- Para **macOS (usando Homebrew)**:
  ```bash
  psql postgres
  ```

### 5. Crear un usuario en PostgreSQL

Dentro de la consola de PostgreSQL, puedes crear un nuevo usuario con la siguiente instrucción:

```sql
CREATE USER tu_usuario WITH PASSWORD 'tu_contraseña';
```

### 6. Crear una base de datos y conectarse a esta
Después de crear el usuario, procede a crear una base de datos y conectarte a esta:

```sql
CREATE DATABASE grupoXX;
\c grupoXX
```

### 7. Crear tablas en la base de datos

Una vez conectado a la base de datos, puedes crear las tablas necesarias para tu proyecto. Aquí tienes un ejemplo de una tabla `spotify` usado en la ayudantía:

```sql
CREATE TABLE spotify (
    track_name VARCHAR(255),
    artist_name VARCHAR(255),
    released_year INT,
    streams BIGINT,
    danceability_percent INT
);
```

### 8. Poblar la tabla desde un archivo CSV

Si tienes un archivo CSV con los datos, puedes poblar la tabla usando el comando `\COPY`:

```sql
\COPY spotify(track_name, artist_name, released_year, streams, danceability_percent) 
FROM 'ruta_absoluta/archivo.csv' 
DELIMITER ',' 
CSV HEADER;
```
### 9. Iniciar el servidor PHP localmente

Una vez que tengas tu código PHP listo, puedes iniciar un servidor local de PHP con el siguiente comando en el directorio donde se encuentra tu archivo `index.php`. Este comando es el mismo tanto para **Ubuntu/Debian** como para **macOS**:

```bash
php -S localhost:8000
```

De esta forma, puedes iniciar tu servidor local y empezar a trabajar.

## Conexión con base de datos en el Servidor

### 1. Acceder al servidor

El servidor está ubicado en `bdd1.ing.puc.cl`.

Para acceder necesitamos un cliente SSH. En el caso de Unix o Mac, podemos simplemente usar la terminal incluida por defecto. Para Windows modernos, PowerShell sirve, mientras que en versiones de Windows antiguos se necesita instalar un cliente SSH. Recomendamos el uso de [Putty](https://www.putty.org/).

Una vez en la terminal, aplicamos el siguiente comando:

```bash
ssh grupoXX@bdd1.ing.puc.cl
```

Por ejemplo, si somos el grupo 2, usamos `ssh grupo2@bdd1.ing.puc.cl` y para el grupo 37, usamos `ssh grupo37@bdd1.ing.puc.cl`. El password por defecto de cada grupo es: `grupo<num_grupo>`. Nuevamente, en los ejemplos sería `grupo2` o `grupo37`.

Una vez establecida la conexión, podrán navegar usando comandos de terminal Unix. Recomendamos leer algún tutorial si no están familiarizados con estos.

### Cambio de Clave del Usuario

Una vez que ingresen al servidor usando **SSH**, deberían cambiar su contraseña para evitar el ingreso de usuarios malintencionados. Para ello deben utilizar el siguiente comando:
```bash
passwd
```

Este comando les pedirá su clave actual y su clave nueva dos veces. Si es su primera vez usando una consola, no se asusten si al escribir no les salen asteriscos para la contraseña, eso es normal.

### Ruta de la Aplicación Web Hosteada en el Servidor

Sus próximas entregas consisten en presentar consultas en un sitio web, para luego ir añadiendo funcionalidades adicionales. Se ingresará a la aplicación desde la siguiente dirección:
```bash
http://bdd1.ing.puc.cl/grupoXX/ruta/al/archivo.php
```

Esta ruta ejecutará o mostrará el contenido del archivo:
```
~/Sites/ruta/al/archivo.php
```

Se les pedirá una contraseña, que en principio es la misma que utilizaron para ingresar al servidor por primera vez (`grupoXX`). Se sugiere que también la cambien para evitar accesos no autorizados.

## 2. Subir archivos al servidor

### Opción 1: Utilizar FileZilla
<img width="1196" alt="image" src="https://github.com/user-attachments/assets/2cd9dfa8-9e44-43eb-a864-b80d9432b4ab">

Esta es la interfaz de FileZilla luego de descargarlo e instalarlo. El sector izquierdo corresponde a los directorios y archivos en su computador, mientras que el lado derecho corresponde al servidor.

En la parte superior hay campos para completar con servidor, usuario, contraseña y puerto. Deben rellenarlas con los siguientes datos:
```yml
servidor: bdd1.ing.puc.cl
user: grupoXX
password: mypassword
port: 22
```

<img width="1196" alt="image" src="https://github.com/user-attachments/assets/875184a9-c5c2-40c6-8700-d8230a6d0d87">

La transferencia de archivos es bidireccional y para ello pueden arrastrar los archivos o hacerles doble click. También es posible mover, renombrar o eliminar archivos y carpetas en el servidor. Deben subir a la carpeta Sites los archivos relacionados a la entrega.

### Opción 2: Con comandos desde la terminal
Existen comandos similares a `cp` (copy), pero que permiten transferir archivos a otros computadores. El más simple de estos es `scp`, que tiene el siguiente formato:
```bash
# scp [*opciones] origen destino

# por ejemplo, para subir un archivo:
scp origen/archivo.csv grupoXX@bdd1.ing.puc.cl:~/path/destino/archivo.csv 
# y para bajarlo:
scp grupoXX@bdd1.ing.puc.cl:~/origen/archivo.csv path/destino/archivo.csv 
```

Si se quiere subir archivos recursivamente, como para subir carpetas enteras, se puede utilizar la opción `-r`:
```bash
scp -r datos/ grupoXX@bdd1.ing.puc.cl:~/datos/
```

Otros ejemplos:
```bash
# Subir un archivo de entrega
scp entrega-X-lista.pdf grupoXX@bdd1.ing.puc.cl:~/EntregaX/Informe.pdf
# Descargar todo lo subido en una entrega
scp -r grupoXX@bdd1.ing.puc.cl:~/Sites/
```

> Los usuarios de Windows pueden ocupar el comando pscp en lugar de scp, el que se instala automáticamente junto con Putty, a menos que tengan alguna terminal que posea el comando scp.

Otro comando similar es `rsync`, que se encuentra generalmente en macOS ([brew](https://formulae.brew.sh/formula/rsync)) y Linux. También se puede instalar en [Windows con GitBash](https://gist.github.com/hisplan/ee54e48f17b92c6609ac16f83073dde6). Este en vez de copiar los archivos, solo sube las diferencias, por lo que suele ser más rápido. Como `rsync` sube solo las diferencias, se puede utilizar para actualizar el código local con el del servidor rápidamente al estilo de `git push`. Por ejemplo, para subir archivos de `carpeta/` a `Sites/`:
```bash
rsync carpeta/ grupoXX@bdd1.ing.puc.cl:~/Sites/
```

También se pueden entregar más opciones como mostrar cambios, no borrar archivos más nuevos del servidor, borrar archivos que no existen localmente, subir recursivamente (para directorios) y excluir archivos (mostrados en ese orden):
```bash
rsync --itemize-changes   \
      --update            \
      --delete            \
      --recursive         \
      --exclude='archivo' \
      carpeta/ grupoXX@bdd1.ing.puc.cl:~/Sites/
```


## 3. Interactuar con la consola de PostgreSQL

Cuando se conecten al servidor por medio de `ssh grupoXX@bdd1.ing.puc.cl`, deben ejecutar el siguiente comando para ingresar a su base de datos:
```bash
psql
```

Una vez dentro de la terminal de PostgreSQL, deben ejecutar el siguiente comando para cambiar la contraseña:

```sql
ALTER USER <grupoXX> ENCRYPTED PASSWORD 'newpassword';
```

Debería mostrarles el siguiente output
```sql
ALTER ROLE
```

Con eso esta listo el cambio de clave.

En el servidor, por defecto, tienen creadas sus bases de datos, entonces desde acá pueden retomar el **paso 7** descrito anteriormente para crear sus respectivas tablas. 

Finalmente, para ver lo subido al servidor, deben ingresar a:
```bash
https://bdd1.ing.puc.cl/grupoXX/index.php
```

Para más información, recomiendo revisar la [documentación oficial de PostgreSQL](https://www.postgresql.org/docs/current/index.html).