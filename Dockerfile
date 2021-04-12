FROM golang:alpine3.13 as compiler
WORKDIR /
COPY goapp.go /
RUN go build goapp.go 

FROM   hello-world:latest
COPY   --from=compiler /goapp /
CMD    ["./goapp"]
