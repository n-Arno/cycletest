FROM alpine:latest AS builder

WORKDIR /root/
COPY . /root/

RUN apk add build-base linux-headers wget python3 go && \
    chmod +x lib.sh && ./lib.sh && \
    go build

FROM busybox:latest

COPY --from=builder /root/cycletest /cycletest

ENTRYPOINT ["/cycletest"]
