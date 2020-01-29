FROM golang:latest

WORKDIR /Downloads/doodle/wantedly

# Copy the local package files to the container’s workspace.
ADD . /go/src/github.com/nonnonno/docker_webapp/api

# Install api binary globally within container 
RUN go install github.com/nonnonno/docker_webapp/api 

# Expose default port (8080)
EXPOSE 8080

