# SQL Scripts for Database Management

Este repositorio contiene scripts SQL para la gestión de bases de datos. Los scripts están organizados en carpetas por tipo de tarea (migraciones, triggers, funciones, etc.).

1.SCRIPT DE GENERACIÓN PARA DESPLEGAR LA BASE DE DATOS
2.COMPROBAR LOS EVENTOS GLOBALES  Y ACTIVARLOS
SET GLOBAL event_scheduler = ON;
3.IR A LOS TRIGGERS POPULARITY Y LUEGO SEGUIR LOS INSERTS PARA HACER LOS TEST

## Estructura
- **/generation**: Script de gerenación de la base de datos.
- **/migrations**: Scripts para migraciones de la base de datos.
- **/triggers**: Scripts para la creación de triggers.
- **/functions**: Scripts para la creación de funciones y procedimientos almacenados.

## Uso
Para ejecutar un script, conéctate a la base de datos y ejecuta el archivo correspondiente en el orden indicado en los nombres de archivo.


