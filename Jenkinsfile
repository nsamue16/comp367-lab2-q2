pipeline {
    agent any
    tools {
        maven "MAVEN3"
    }
    environment {
        DOCKERHUB_PWD = credentials('CredentialID_DockerHubPWD')
    }
    stages {
        stage("Check out") {
            steps {
                git branch: 'main', url: 'https://github.com/nsamue16/comp367-lab2-q2'
            }
        }
        stage("Build maven project") {
            steps {
                bat 'mvn clean package'
            }
        }
        stage("Docker build") {
            steps {
                script {
                    bat 'docker build -t itsnate416/comp367-webapp:1.0 .'
                }
            }
        }
        stage("Docker login") {
            steps {
                script {
                    bat 'docker login -u itsnate416 -p %DOCKERHUB_PWD%'
                }
            }
        }
        stage("Docker push") {
            steps {
                script {
                    bat 'docker push itsnate416/comp367-webapp:1.0'
                }
            }
        }
    }
}