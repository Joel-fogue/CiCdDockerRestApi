node {
    checkout scm
    def restApiImage = docker.build("rest_api:${env.BUILD_ID}")
    docker.withRegistry('http://my-registry:55000/') {
      restApiImage.push(${env.BUILD_ID})
    }
}
