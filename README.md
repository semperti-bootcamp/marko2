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
 
Se debe probar aplicacion Java Maven con el siguiente comando en directorio /CODE

** mvn spring-boot:run

## Instrucciones para correr esta aplicación

	1. Configurar la conexión de la base de datos desde Code/src/main/resources/application.properties
	2. Ubicate en la carpeta del código y ejecutá "mvn spring-boot:run".
	3. Revisá la siguiente dirección http://localhost:8080
	4. [Opcional] Por defecto, la aplicación almacena los PDFs en el directorio <User_home>/upload. Si querés cambiar este directorio, podés utilizar la propiedad -Dupload-dir=<path>.
	5. [Opcional] Los PDFs predefinidos pueden encontrarse en la carpeta PDF. Si querés ver los PDFs, tenés que copiar los contenidos de esta carpeta a lo definido en el paso anterior.
	

![](/Imagenes/Loginjavapp.png)




## Datos de autenticación

	El sistema viene con 4 cuentas pre-definidas:
		1. publishers:
			- username: publisher1 / password: publisher1
			- username: publisher2 / password: publisher2
		2. public users:
			- username: user1 / password: user1
			- username: user2 / password: user2
			
![](/Imagenes/Login2.png)
