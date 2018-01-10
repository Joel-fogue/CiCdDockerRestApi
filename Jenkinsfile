pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      label 'rest_api'
      args '-p 8000:8000'
    }
    
  }
  stages {
    stage('Initialize') {
      steps {
        sh 'docker --version'
      }
    }
  }
}
