pipeline {

    checkout scm

    agent { dockerfile true }
    stages {
        stage('Test') {
            steps {
                sh 'docker --version'
            }
        }
    }
}
