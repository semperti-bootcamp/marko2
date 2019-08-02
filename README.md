# Requisitos

*Crear VM con Centos7
 La VM debe cumplir con lo siguiente:
 -Conexion a internet
 -Instalar ANSIBLE y todas sus dependencias.
 -Docker
  
  Procedimiento de instalacion Ansible en Centos7: 
  https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-ansible-on-centos-7

*Realizar configuracion de archivos hosts de ansible (Este archivo contiene las ip o direcciones de equipos a provisionar)

- Provisionar VM mediante ANSIBLE con lo siguiente:
 - Maven
 - JDK 1.8+
 - Mysql 5.6+
 - Exponer puerto 8080

*Correr playbooks de ansible con el comando:

 ansible playbook  nombredelplayobook.yml

 ver screens de instalacion de playbooks https://imgur.com/a/nmKJvnL
 
Se debe probar aplicacion Java Maven con el siguiente comando en directorio ./CODE

** mvn spring-boot:run

Para comprobar el funcionamiento de la aplicacion ir a localhost:8080
ver imagen https://github.com/semperti-bootcamp/marko2/blob/master/Imagenes/Loginjavapp.png



