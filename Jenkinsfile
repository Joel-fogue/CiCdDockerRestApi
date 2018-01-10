pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
    }
    
  }
  stages {
    stage('Initialize') {
      steps {
        sh '''echo $USER
echo $PATH
'''
      }
    }
  }
}