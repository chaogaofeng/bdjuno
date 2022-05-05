FROM golang:1.17-alpine AS builder
RUN apk update && apk add --no-cache build-base make git
ADD https://github.com/CosmWasm/wasmvm/releases/download/v1.0.0-beta10/libwasmvm_muslc.x86_64.a /lib/libwasmvm_muslc.a
RUN sha256sum /lib/libwasmvm_muslc.a | grep 2f44efa9c6c1cda138bd1f46d8d53c5ebfe1f4a53cf3457b01db86472c4917ac

WORKDIR /go/src/github.com/forbole/bdjuno
COPY . ./
RUN BUILD_TAGS=muslc LINK_STATICALLY=true make build

FROM alpine
WORKDIR /bdjuno
COPY --from=builder /go/src/github.com/forbole/bdjuno/build/bdjuno /usr/bin/bdjuno
CMD [ "bdjuno" ]
