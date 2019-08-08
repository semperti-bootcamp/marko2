pipeline {

    agent {
        node (){
            label 'bc-marko'
        }
    }
    environment {
        ANSIBLE_HOST_KEY_CHECKING = 'false'
    }

    stages {
        }
        stage('Unit Test') {
            steps {
                sh "mvn test -f Code/pom.xml"
            }
        }
        stage('Release to Nexus') {
            steps {
                sh "mvn versions:set -DnewVersion=3.0 -f Code/pom.xml"
                sh "mvn clean deploy -f Code/pom.xml -DskipTests" 
            }
        }
        stage('Snapshot to Nexus') {
            steps {
                sh "mvn versions:set -DnewVersion=3.0-SNAPSHOT -f Code/pom.xml"
                sh "mvn clean deploy -f Code/pom.xml -DskipTests" 
            }
        }
        stage('Docker build & tag images') {
            steps {
                sh "sudo docker build --tag javapp:3.0 ."
                sh "sudo docker tag javapp:3.0 95864747/javapp:3.0"
            }
        }
    }
}