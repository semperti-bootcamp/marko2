# Requisitos

## Dockerizar aplicacion Java

- Se debe proveer el Dockerfile y los archivos necesarios para generar la imagen
- Debe quedar corriendo el container
- Debe proveerse un link para probar el funcionamiento del contenedor

## Instalar Docker

1. Ejecutar comando: yum install -y docker
2. encender el servicio: systemctl start docker
3. habilitar servicio: systemctl enable docker

## Crear imagen Docker


1. Creamos un dockerfile para construir imagen con la configuracion deseada:
	
	*FROM openjdk:8-jdk-alpine
        *COPY journals-SNAPSHOT-1.0.jar /tmp/journals-SNAPSHOT-1.0.jar
        *CMD ["java","-jar","tmp/journals-SNAPSHOT-1.0.jar"]
        *EXPOSE 8080
2. Ejecutamos el siguiente comando para construir imagen a partir del dockerfile:

 	docker build --tag <nombre-imagen>:<tag/version> .
	
3. Corremos la imagen con el comando:

	docker run -ti -d -p 8080:8080 --net=host  <nombre-imagen>:<tag/version>
