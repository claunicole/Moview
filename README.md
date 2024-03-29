
# Proyecto Moview
---

## Desarrollador:

Claudia González Fuentes. 
- (Github @claunicole)[https://github.com/claunicole]
- (Linkedin)[https://www.linkedin.com/in/claudia-gonzalez-fuentes/]

---

## Acerca de Moview:

*Moview es un sitio que permite ver y crear reseñas de películas.


---
### Inicio Rapido

Para arrancar el proyecto en un ambiente local, realice lo siguiente:

1- Descargue el contenido de este repositorio.

2.- Asegurese de tener las gemas instaladas, para eso se debe escribir en el terminal "bundle install.

3.- Asegurese de tener PostgreSQL funcionando correctamente.

4.- Crear un archivo database.yml dentro de la carpeta config, rellene los campos necesarios siguiendo las instrucciones del archivo database.yml.example 

5.- Activar Redis con el comando: redis-server.

6.- Utilizar el comando "rails server" lo que permitirá correr el servidor de forma local.

---

### Vistas

-   *Landing* : En la página inicial es posible ver una lista de todas las reseñas de peliculas creadas y un boton que permite ir a la vista del detalle de cada una.
El Navbar permite ir a iniciar sesión, registrarse y ademas utilizar el buscador para encontrar una reseña en especifico.

-   *Detalle de las reseñas* : Aquí se muestran los detalles de cada reseña, el titulo de la película, fecha de lanzamiento, reseña y ademas una sección de comentarios.

-   *Inicio de sesión y Registro de usuarios* : En esta vista es posible ver un formulario que permitira a los usuarios crear su cuenta e iniciar sesion para poder tener acceso a todas las funcionalidades del sitio, tales como: crear una una nueva reseña, editar y borrarlas, ademas de realizar comentarios dentro de cada reseña.

---

### Gemas utilizadas

- Rails 7.0.3
- Bootstrap 5.2
- Friendly_id 5.4.0
- Sidekiq 6.5
- Annotate
- Devise
---
## Documentación

Para mayor referencia del proyecto, revise la [Documentación Moview](https://docs.google.com/presentation/d/1EDSi0o85jb0A73uxaNKAXFDeZB4ZA-2uZE5xp-0zNAE/edit?usp=sharing)
---
