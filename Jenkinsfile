pipeline {

    checkout scm

    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'dotnet --version'
                sh 'docker --version'
            }
        }
    }
}