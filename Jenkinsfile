pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build') {
            steps {
                bat '"C:\\Maven\\apache-maven-3.9.12\\bin\\mvn.cmd" clean package'
            }
        }
    }
}