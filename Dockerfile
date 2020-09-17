FROM caddy:builder AS builder

RUN caddy-builder \
	github.com/caddy-dns/lego-deprecated \
	github.com/gamalan/caddy-tlsredis

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
