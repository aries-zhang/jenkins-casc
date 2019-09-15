# jenkins-casc
An example of how Jenkins configuration as code works


```
docker build -t jenkins-casc .
docker run --name jenkins-casc-demo -d -p 8081:8080 -v jenkins_home:/var/jenkins_home jenkins-casc
```