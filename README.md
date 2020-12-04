# Taller2-TICS
Esta app web fue desarrollada en python 3, por lo que se debe tener instalado para poder correr la app.

Luego se debe hacer la instalacion de las librerias que se utilizaron en caso de ser necesario, estas librerias son:

    -Django        v3.1 o más
    -psycopg2      v2.8 o más

la forma en la que se instalan es por medio de los siguientes comandos ingresados por consola:

    -pip install django
    -pip install psycopg2

A continuacion se debe configurar la base de datos, para esto el motor utilizado fue postgresql13, debera descargarlo e instalarlo desde
la pagina de postgresql. Luego en la carpeta "Base de datos", encontrara todo lo necesario para ella, a continuacion se lista la funcion
de cada archivo:

    -Import tables.sql              Corresponde a las consultas SQL que generan las tablas en la BD
    -Generador.py                   Corresponde al archivo que genera los datos para la BD
    -Mediciones,Riegos              Archivos creados por el generador
    -Sensores,Sensores_Medi         Archivos creados por el generador
    -Carpeta "Backup"               Los archivos que se encuentran en esta carpeta corresponde a los datos usados para los casos de prueba

El procedimiento entonces seria una vez instalado postgres, importar las tablas con el archivo "import tables.sql" y luego ingresar los datos
ya sea con los Backups, los archivos que se encuentran creados, o crear nuevos archivos con el generador.
Notar tambien que se debe verificar la conexion con la BD, para esto en el archivo "settings.py" en la carpeta Regadio, se encuentra la siguiente
linea de codigo:

    DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': '#',
        'USER': '#',
        'PASSWORD': '#',
        'HOST': 'localhost',
        'PORT': '5432',
    }
}

donde los # deben ser reemplazados por las credenciales de la BD que se creo, mientras que HOST y PORT se dejan por defecto.

Una vez se hayan realizado todos los pasos anteriores, se debe ubicar en la misma carpeta que el archivo "manage.py" y escribir el siguiente
comando por consola:

    -python manage.py runserver

luego se dirige a la pagina http://127.0.0.1:8000/ y podra utilizar la aplicacion.