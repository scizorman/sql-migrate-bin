FROM golang:1.13-alpine AS builder

LABEL maintainer "Tetsutaro Ueda <tueda1207@gmail.com>"

RUN apk add --no-cache \
  git \
  gcc \
  libc-dev \
  upx

ENV GO111MODULE=off

RUN go get -u github.com/pwaller/goupx

RUN go get \
  -u \
  -ldflags="-w -s" \
  github.com/rubenv/sql-migrate/...

RUN goupx /go/bin/sql-migrate

FROM alpine:3

COPY --from=builder /go/bin/sql-migrate /usr/local/bin/sql-migrate

ENTRYPOINT [ "sql-migrate" ]

CMD [ "--help" ]
