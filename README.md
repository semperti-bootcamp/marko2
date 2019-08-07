# Requisitos
 - Cargar un snapshot de la aplicacion java
 - Cargar un release de la aplicacion java
 - Se debe realizar mendia script de Ansible

## Instrucciones:
# Ir al directorio /Code y editar archivo pom.xml agregar lo siguiente
 <distributionManagement>  
      <repository>  
          <id>nexus-releases</id>  
          <name>Nexus Release Repository</name>  
          <url>http://10.252.7.162:8081/repository/maven-releases/</url>  
      </repository>  
      <snapshotRepository>  
          <id>nexus-snapshots</id>  
          <name>Nexus Snapshot Repository</name>  
         <url>http://10.252.7.162:8081/repository/maven-snapshots/</url>
      </snapshotRepository>  
  </distributionManagement> 
  
  # Agregar nuestro SCM 
   
   <scm>
    <connection>scm:git:git@github.com:semperti-bootcamp/marko2.git</connection>
    <url>git@github.com:semperti-bootcamp/marko2.git</url>
    <developerConnection>scm:git:git@github.com:semperti-bootcamp/marko2.git</developerConnection>
      <tag>journals-3.3</tag>
  </scm>

# Configuracion de Maven para conexion con repositorio Nexus, este archivo se encuentra en el path de MAVEN/settings.xml
 
 <server>
        <id>nexus-snapshots</id>
        <username>USER</username>
        <password>PASSWORD</password>
    </server>
    <server>
        <id>nexus-releases</id>
        <username>USER</username>
        <password>PASSWORD</password>
    </server>
    
 # Crear Snapshot y subir a Nexus
  
   mvn versions:set -DnewVersion=3.0-SNAPSHOT
   mvn deploy
   
 # Hacer Release a Nexus
   mvn -B release:clean release:prepare release:perform
	
	
# Crear script de Ansible para deploy de app java a Nexus

Ejecutamos el siguiente comando  ansible-playbook ./ansible/deploy_to_nexus.yml

