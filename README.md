http://bit.ly/aspnetcoredocker

# aspnetcore-generator-api
Sample ASP.NET Core API that generates random data, has swagger UI too

BEFORE RUNNING DOCKER-COMPOSE UP:
1. Change the ownership of the local jenkins_home directory on the docker_host i.e the docker_host is the physical machine or VM
  a. Open a terminal or shell and run the following commands:
      - sudo chown -R 1000:1000 /$HOME/jenkins_home
