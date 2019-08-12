pipeline {

    agent {
        node (){
            label 'bc-marko'
        }
    }
    environment {
        ANSIBLE_HOST_KEY_CHECKING = 'false'
	VERSION = "3.1"
    }

    stages {
        stage('Stage 1 - Slave configuration')
            steps {
		sh "sudo yum -y install ansible curl wget unzip "
            }
        }

        stage('Stage 2 - Unit Test') {
            steps {
                sh "mvn test -f Code/pom.xml"
            }
        }

        stage('Stage 3 - Release to Nexus') {
            steps {
                sh "mvn versions:set -DnewVersion=$env.VERSION -f Code/pom.xml"
                sh "mvn clean deploy -f Code/pom.xml -DskipTests" 
            }
        }
        stage('Stage 4 - Snapshot to Nexus') {
            steps {
                sh "mvn versions:set -DnewVersion=$env.VERSION-SNAPSHOT -f Code/pom.xml"
                sh "mvn clean deploy -f Code/pom.xml -DskipTests" 
            }
        }
        stage('Stage 5 - Docker build, tag & push images ') {
            steps {
		withCredentials([usernamePassword(credentialsId: '95864747', usernameVariable: 'USERNAME', passwordVariable: 'PASSWORD')]) {	
			dir("${env.WORKSPACE}/ansible"){
				sh "ansible-playbook docker.yml  -e VERSION=$env.VERSION -e USERNAME=$USERNAME -e PASSWORD=$PASSWORD"
			}
		} 
            }
	}
        stage('Stage 6 - Docker pull & run') {
            steps {
		dir("${env.WORKSPACE}/ansible"){
			sh "pwd"
                	sh "ansible-playbook runimagedocker.yml -e VERSION=$env.VERSION"
		}
		timeout(300) {
		    waitUntil {
		       script {3
			 def r = sh script: 'curl http://10.252.7.163:8080', returnStatus: true
			 return (r == 0);
		       }
		    }
		} 
            }
        }
        stage('Stage 7 - Run javapp') {
            steps {
		sh "curl http://10.252.7.163:8080"
            }
        }
    }
}
