# Proyecto de Reservas de Coworking

Este proyecto permite gestionar reservas de espacios en un coworking mediante una aplicación web basada en Java EE con Servlets y JSP.

## Requisitos Previos

Antes de desplegar el proyecto, asegúrese de tener instalados los siguientes requisitos:

- **Java Development Kit (JDK):** Versión 17 o superior.
- **Apache Tomcat:** Versión 9.0 o superior.
- **Maven (opcional):** Para gestión de dependencias si se usa.

## Pasos para el Despliegue

1. **Clonar el repositorio**  
   Para obtener el código fuente del proyecto, ejecutar el siguiente comando en la terminal:

   ```sh
   git clone https://github.com/StevenNNZ/parcial_backend.git
   ```

2. **Importar el proyecto**  
   Abrir un IDE compatible con Java EE, como Eclipse o NetBeans, y cargar el proyecto como un proyecto web dinámico.

3. **Configurar el servidor Tomcat**  
   - Agregar Apache Tomcat en el IDE.
   - Configurar el proyecto para desplegarlo en Tomcat.

4. **Compilar y desplegar**  
   - Compilar el código desde el IDE
   - Iniciar el servidor Tomcat y desplegar el proyecto.

5. **Acceder a la aplicación**  
   Una vez desplegado, la aplicación estará disponible en:

   ```sh
   [http://localhost:8080/ProyectoReservaCoworking/index.jsp](http://localhost:8080/parcial_backend/listado-reservas.jsp)
   ```

## Funcionalidades

- **Formulario de reserva:** Permite a los usuarios registrar una nueva reserva.
- **Listado de reservas:** Muestra todas las reservas almacenadas en la sesión.
- **Eliminación de reservas:** Opción para eliminar una reserva específica.
