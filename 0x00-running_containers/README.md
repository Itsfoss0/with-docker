## Exercise 1.1: Getting started

Running three nginx containers and then stoping two of them
![Output from running docker ps -a](../assets/running_nginx.png)

## Exercises 1.2 Cleanup

Removing all docker containers and images from the docker deamon.

![Output from after cleaning the system with docker prune](../assets/clean.png)

## Exercise 1.3: Secret message

The secret is

> _*You can find the source code here: https://github.com/docker-hy*_

![Finding the secret message](../assets/secret.png)

## Exercises 1.4

Start an ubuntu container to listen for url to curl

```bash
docker run -i ubuntu --name server sh -c 'while true; do echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website; done'
```

Install curl on the container by spawning another process

```bash
docker exec server apt-get update && apt-get install curl --yes
```

![Screenshot showing curl returning a 301 redirect](../assets/curl.png)

## Exercise 1.6: Hello Docker Hub

![Screenshot showing the secret message ](../assets/pull_exercise.png)

The secret message is

> "This is the secret message"

The password is _basics_

## Exercise 1.7: Image for script

Build and run a curler image

![Screenshot showing the curler image runnining](../assets/curler.png)

## Exercise 1.8: Two line Dockerfile

Using devopsdockeruh/simple-web-service:alpine as a base image for an image

The following screenshot shows the image built on from the `devopsdockeruh/simple-web-service:alpine`
running a web service without any arguments being passed. The [dockerfile](../0x01_building-containers/Dockerfile-web-server) for this image is relative short as it only has two lines


```dockerfile
FROM devopsdockeruh/simple-web-service:alpine 
CMD  server
```

![Container running web service](../assets/web-server.png)


## Exercise 1.9: Volumes
The following screenshot shows the container running with the volume bound to it. 

![Screenshot of container running with volume bound](../assets/volumes.png)

The command used 

```
docker run -v /home/itsfoss/volumes/text.log:/usr/src/app/text.log devopsdockeruh/simple-web-service
```


## Exercise 1.10: Ports open
This exercises involves exposing a simple web server to be able to access it via a browser. Browsers typically use port 80 for http and 443 for http by default. Both of these ports and considered [priviledged](https://serverfault.com/a/112798/1067316), which generally require additional privileges to be able to listen on them. As seen from the screenshots, we ran docker without a sudo prefix because we added our user to the docker group. 


![Screenshot showing the command to publish port 8080 of the container](../assets/expose.png)


We can then access the service in the browser by typing `localhost` in  the URL bar. 

![Accessing the mapped port via the browser](../assets/path.png)