FROM caddy:2.0.0-builder AS builder

RUN caddy-builder \
	github.com/caddy-dns/lego-deprecated \
	github.com/gamalan/caddy-tlsredis

FROM caddy:2.0.0-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
