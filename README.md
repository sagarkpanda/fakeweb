<!-- <h1> Kubenetes Deployment using Argo CD </h1> -->
<h1> Build a docker image and push to Docker Hub/Nexus Repositoy </h1>

<p align="center">
<img alt="NGINX" width="270px" src="https://raw.githubusercontent.com/sagarkrp/sagarkrp/main/images/docker.svg" style="padding-right:10px;" />
</p>
</br>

## Read the whole Article here: 
## Docker hub: <a href = "https://medium.com/@sagarkrp/docker-chapter-2-build-and-push-your-first-docker-image-7d7f9d71f1ca" target ="_blank"><img src = "https://img.shields.io/badge/medium-%23E4405G.svg?&style=for-the-badge&logo=medium&logoColor=black&white" height="22px"></a>

## Nexus: <a href = "https://medium.com/@sagarkrp/how-to-push-docker-images-to-nexus-repository-using-jenkins-4cc77d247a65" target ="_blank"><img src = "https://img.shields.io/badge/medium-%23E4405G.svg?&style=for-the-badge&logo=medium&logoColor=black&white" height="22px"></a>

<h3>- Build the Image </h3>

- To build the image, we need to run the docker build command: ```docker build -t <name:tag> . ```

```docker build -t fbweb:1.0 . ```

- After Entering this command, we shall see a updates like these:

``` └──| docker build -t fbweb:1.0 .
[+] Building 22.3s (6/8)                                                                                                         
 => [internal] load .dockerignore                                                                                           0.0s
 => => transferring context: 2B                                                                                             0.0s
 => [internal] load build definition from Dockerfile                                                                        0.0s
 => => transferring dockerfile: 205B                                                                                        0.0s
 => [internal] load metadata for docker.io/library/ubuntu:22.10                                                             4.1s
 => [1/4] FROM docker.io/library/ubuntu:22.10@sha256:a82eebb42083a134e009a6b81a7e5d2eecc37112fa8ae40642bd3c5153b7e4f0       2.3s
 => => resolve docker.io/library/ubuntu:22.10@sha256:a82eebb42083a134e009a6b81a7e5d2eecc37112fa8ae40642bd3c5153b7e4f0       0.0s
 => => sha256:a82eebb42083a134e009a6b81a7e5d2eecc37112fa8ae40642bd3c5153b7e4f0 1.13kB / 1.13kB                              0.0s
 => => sha256:8c8f22bacbfba9678edddcc3b6d1e56cce02eff9cbf27ab46116de30cb79a3d6 424B / 424B                                  0.0s
 => => sha256:558d44db75c8f69c29f427cf88e6a71c39320f7607584baa6860f6e4f6121892 2.30kB / 2.30kB                              0.0s
 => => sha256:5c19388d38e1ea904672812dd0aac505220c9254e2621a1684e0fe29e2dba80e 26.70MB / 26.70MB                            1.7s
 => => extracting sha256:5c19388d38e1ea904672812dd0aac505220c9254e2621a1684e0fe29e2dba80e                                   0.5s
 => [internal] load build context                                                                                           0.0s
 => => transferring context: 76.93kB                                                                                        0.0s
 => [2/4] RUN apt update -y                                                                                                11.7s
 => [3/4] RUN apt install lighttpd -y                                                                                       4.2s 
 => => # 0 upgraded, 14 newly installed
 
 ```

- If there are no errors, this will will be completed with this kind of message:

```
=> exporting to image                                                                                                      0.3s 
 => => exporting layers                                                                                                     0.3s 
 => => writing image sha256:9443bff58bb37cea0eec454cb7628f1ab6de13328f7533d9d55772df77b691d6                                0.0s 
 => => naming to docker.io/library/fbweb:1.0                                                                                0.0s 
```

To view the list of Images we can use : docker images command.

``` 
└──| docker images
REPOSITORY   TAG       IMAGE ID       CREATED        SIZE
fbweb        1.0       bcb23d33bf82   1 minutes ago   163MB 
```
<h2> - Running the application: </h2>

- Now lets run this image with the following command:

```
──| docker run --name fb -td -p 80:80 fbweb:1.0 
551eddaa8434ac7665e85bf7e959493eb21783ad4f332fdcc5b678e5769ae233

──| docker ps
CONTAINER ID   IMAGE       COMMAND                  CREATED         STATUS         PORTS                               NAMES
551eddaa8434   fbweb:1.0   "/bin/sh -c 'service…"   6 seconds ago   Up 6 seconds   0.0.0.0:80->80/tcp, :::80->80/tcp   fb

```

- Lets Browse our application:

![Screenshot-2023041514_1](https://user-images.githubusercontent.com/42873729/232205427-ff29a73a-2f36-4367-b391-50de702f6c3d.png)


