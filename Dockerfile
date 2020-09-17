FROM caddy:builder AS builder

RUN caddy-builder \
	github.com/caddy-dns/lego-deprecated

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
