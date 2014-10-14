Autenticación con Google
=========
Sistemas y Tecnologías web
---------------------------


Objetivo
-----

Crear una aplicación donde su acceso sea mediante Google Omniauth. Una vez autenticado, sólo mostrará los datos proporcionados por Google.

Funcionamiento
-----

Hay dos formas posibles de ver el funcionamiento de la aplicación, una mediante la web, gracias a Heroku, y otra desde local.

1. Visualización en Heroku
    
    Para poder ver la aplicación en dicha plataforma, haz click [aquí].
    Una vez ahí sólo has de poner cualquier usuario twitter, y verás la popularidad de sus amigos.

2. Visualización en local

    Primero se ha de clonar el repositorio de github [my-google-oauth], de la siguiente forma: 
    
    ```sh
    user@ubuntu-hp:~$ git clone git@github.com:alu0100700435/my-google-oauth.git
    ```
    Una vez clonado el repositorio, y situado en el directorio, modifique el archivo config_filled.yml con sus claves(recomendado),las que puede conseguir a través de la consola de google APIs. Y a continuación ejecuta bundler:
    
    ```sh
    user@ubuntu-hp:~/my-google-oauth$ bundle install
    ```
    
    Una vez hecho todo lo anterior, procede a ejecutar *rake*, y por defecto se empezará a ejecutar, abre el navegador y escribe en la barra de direcciones *localhost:9292* y accederás a la web de la aplicación:
    
    ![ejemplo navegador](https://raw.githubusercontent.com/alu0100700435/my-google-oauth/gh-pages/public/ejemplo.png) 
    
    Y ya, sólo has de dar autorizacion mediante google, y podrás ver el resultado.
    
    

[aquí]:http://my-google-oauth.herokuapp.com
[my-google-oauth]:https://github.com/alu0100700435/my-google-oauth
