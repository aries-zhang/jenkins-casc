# jenkins-casc
An example of how Jenkins configuration as code works


```
docker build -t jenkins-casc .
docker run --name jenkins-casc-demo -d -p 8081:8080 jenkins-casc
```

If you are behind a proxy:
```
docker build -t jenkins-casc . --build-arg CURL_OPTIONS="-ksSfL -x ${YOUR_PROXY_URL}"
```