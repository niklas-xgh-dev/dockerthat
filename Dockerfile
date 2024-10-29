FROM debian:stable-slim

COPY main /bin/main

ENV PORT=8080

CMD ["/bin/main"]