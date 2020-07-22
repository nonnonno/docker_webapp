FROM golang:latest as builder

#ENV CGO_ENABLED=0
#ENV GOOS=linux
#ENV GOARCH=amd64
WORKDIR /go/src/
EXPOSE 8080
COPY api.go .
RUN go run api.go

# runtime image
FROM alpine
#COPY --from=builder /go/src/github.com/nonnonno/docker_webapp
CMD /app/main $PORT 

