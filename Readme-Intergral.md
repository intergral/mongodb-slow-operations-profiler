# Building and deploying the profiler as docker image

## Configuration of the profiler

The configuration of the profiler is defined in the file `src/main/resources/config.json` which is integrated into the WAR file of the web application by the maven build. Please note a configuration change implies a complete rebuild of the web application followed by a docker build and deploy. However, as the configuration typically does not change this is not a problem.

## Building the docker image

- Execute `mvn clean package` to create the WAR file.
- Execute `docker build -t docker.bbn.intergral.com:5000/mongodb-profiler:2.4.2.0 .` to build the docker image.

## Executing the docker image

- Execute `docker run -p 8080:8080 --rm=true docker.bbn.intergral.com:5000/mongodb-profiler:2.4.2.0` to execute the docker image on your locale machine.
- Open `http://localhost:8080/mongodb-profiler/app` in your web browser to access the profiler. 

## Pushing the docker image to the intranet repository

- Execute `docker push docker.bbn.intergral.com:5000/mongodb-profiler:2.4.2.0` to push the docker image to the internal docker repository.

