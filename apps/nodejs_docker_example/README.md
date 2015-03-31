https://docs.docker.com/examples/nodejs_web_app/


### Building the image
Go to the directory that has your Dockerfile and run the following command to build a Docker image. The -t flag lets you tag your image so it's easier to find later using the docker images command:
`$ sudo docker build -t <your username>/centos-node-hello .`


#### View Docker Images
`$ sudo docker images`


#### Run the image

`$ sudo docker run -p 49160:8080 -d <your username>/centos-node-hello`
```
# Get container ID
$ sudo docker ps

# Print app output
$ sudo docker logs <container id>

# Example
Running on http://localhost:8080
```

#### Test running app
`$ curl -i localhost:49160`
