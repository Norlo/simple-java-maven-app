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
    }
}