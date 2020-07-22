FROM golang:1.9

RUN mkdir /echo
RUN go get github.com/ant0ine/go-json-rest/rest
COPY api.go /echo

CMD ["go","run","/echo/api.go"]
