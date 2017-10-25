pipeline {
    agent none
    stages {
        stage('Build') { 
            agent {
                docker {
                    image 'maven:3.5-jdk-8' 
                    args '-v /root/.m2:/root/.m2' 
                }
            }
            steps {
                sh 'mvn -B -DskipTests clean package' 
            }
        }
        stage('Test') {
            agent {
                docker {
                    image 'maven:3.5-jdk-8' 
                    args '-v /root/.m2:/root/.m2' 
                }
            }
            steps {
                sh 'mvn test'
            }
        }
        stage('Build Image') { 
            steps {
                docker.build("norlo/simple-java-maven-app:${env.BUILD_NUMBER}")
            }
        }
        stage('Deliver') { 
            steps {
                sh 'echo "Hallo"' 
            }
        }
    }
}