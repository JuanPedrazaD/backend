# Proyecto Reserva Coworking

## 1. Descripción del Proyecto

Este es un sistema de reservas para espacios de trabajo desarrollado con **Java Servlets y JSP**, utilizando **Apache Tomcat** como servidor de aplicaciones. La interfaz está estilizada con **Bootstrap**.

# 2. Requisitos Previos

Para ejecutar el proyecto, se requiere lo siguiente:

- **Java 11 o superior**
- **Apache Tomcat 9 o superior**
- **NetBeans IDE 20** (opcional, pero recomendado)
- **XAMPP** (si se usa base de datos en el futuro)

# 3. Pasos para el Despliegue

## Clonación del Proyecto

git clone https://github.com/usuario/ProyectoReservaCoworking.git

1. Abrir **NetBeans** y cargar el proyecto.

## Configuración del Servidor

1. Asegurarse de que **Apache Tomcat** está instalado y configurado en **NetBeans**.
2. Ir a **Tools > Servers** y agregar Apache Tomcat si no está registrado.

## Despliegue en Tomcat

1. Limpiar y compilar el proyecto en NetBeans (**Run > Clean and Build**).
2. Ejecutar el proyecto (**Run > Deploy**).
3. Asegurarse de que **Tomcat** esté corriendo.

4. Acceder al sistema desde el navegador.

# 4. Acceso a la Aplicación

Una vez desplegado, el sistema estará disponible en:

http://localhost:8080/ProyectoReservaCoworking/index.jsp

# 5. Estructura del Proyecto

- `index.jsp` → Página de inicio
- `reservas.jsp` → Formulario para realizar reservas
- `listado-reservas.jsp` → Lista de reservas registradas
- `eliminar-reservas.jsp` → Opción para eliminar reservas
- `src/servlets` → Contiene los **Servlets** del backend
- `src/entity` → Contiene la clase `Reserva.java`
