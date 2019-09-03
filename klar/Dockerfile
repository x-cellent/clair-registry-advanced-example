FROM golang:1.11-alpine as builder

WORKDIR /go

RUN apk --update add git \
 && go get -d github.com/optiopay/klar \
 && go build ./src/github.com/optiopay/klar

FROM alpine:3.8
RUN apk --no-cache add ca-certificates
COPY --from=builder /go/klar /
ENTRYPOINT ["/klar"]
