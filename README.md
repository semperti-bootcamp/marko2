# Requisitos
 - Provisionar VM con Ansible:
   - JDK 1.8+
   - Maven
   - MySQL 5.6+

*
## Instrucciones para correr esta aplicación

	1. Se instala Ansible y todas sus dependencias con el comando: yum install -y ansible
	2. Se crea playbook de ansible para instalar JDK 1.8, Maven y Mysql llamados jdk1.8.yml, maven.yml y msyql.yml 
	3. Se ejecuta con el comando: ansible playbook jdk1.8.yml (realizar el mismo comando para cada playbook
	
![Instalacion de Maven](https://github.com/semperti-bootcamp/marko2/blob/configurar-VM-con-Ansible/Imagenes/maven.png)
![Instalacion de Mysql](https://github.com/semperti-bootcamp/marko2/blob/Crear-VM/mysql.png)
![instalacion de maven](https://github.com/semperti-bootcamp/marko2/blob/Crear-VM/maven.png)
