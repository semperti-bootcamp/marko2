pipeline {


    agent {
        node (){
            label 'bc-marko'
        } 
    }
    environment {
        ANSIBLE_HOST_KEY_CHECKING = 'false'
          registry = "markoaular/javaapp"
           registryCredential = 'markoaular'
		   AppVersion = "3.0.1"
    }

    stages {   
        stage('Unit Test & Package') {
            steps {
                    sh "mvn test -f /root/Code/"   
                    sh "mvn package -f /root/Code/"   
                
            }
        }
        
          stage('Clean & Deploy Snapshot') {
            steps {
                    sh "mvn versions:set -DnewVersion=$env.AppVersion-SNAPSHOT -f /root/Code/pom.xml"
                    sh "mvn -B clean deploy -DnewVersion=$env.AppVersion-SNAPSHOT -f /root/Code/ -DskipTests"   
                
            }
        }
        stage('Release & Deploy Image to Nexus'){
            steps{  
                  
                   sh "mvn -B release:clean release:prepare release:perform    -f /root/Code/ -DcheckModificationExcludeList=**  -DskipTests"   
                 
              
            }
        }
  
    stage('Building image') {
      steps{
        script {
          dockerImage = docker.build registry + ":$env.AppVersion"
        }
      }
    }
    stage('Deploy Image') {
      steps{
        script {
          docker.withRegistry( '', registryCredential ) {
            dockerImage.push()
          }
        }
      }
    }
    stage('Remove Unused docker image') {
      steps{
        sh "docker rmi $registry:$env.AppVersion"
      }
    }
        
        
        
  }

