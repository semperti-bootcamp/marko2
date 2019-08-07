# Subir Docker Imagen a Nexus ##( Nota:No se usara Nexus repository para subir imagen docker por conflicto en port)


## Usaremos repositorio de dockerhub
## Pasos para subir la imagen a dockerhub :

´´´	1. docker login docker.io
	2. docker tag <name-imagen>:<tag> <name-repository>/<name-imagen>:<tag>
	3. docker push <name-repository>/<name-imagen>:<tag>
	4. docker rmi  <name-repository>/<name-imagen>:<tag> --force
	5. docker pull <name-repository>/<name-imagen>:<tag>
	6. docker run  -d -p 8080:8080 --net=host <name-imagen>:<tag>
	7. docker ps -a ´´´
