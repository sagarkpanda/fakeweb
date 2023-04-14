Building a docker image.

To build the image, we need to run the docker build command: docker build -t <name:tag> . 

docker build -t fbweb:1.0 .

After Entering this command , we shall see a updates like these:

If there are no errors, this will will be completed with this kind of message:

To view the list of Images we can use : docker images command.

└──| docker images
REPOSITORY   TAG       IMAGE ID       CREATED         SIZE
fb           1.0       b2e5606b89b5   3 minutes ago   163MB
