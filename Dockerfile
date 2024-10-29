FROM debian:stable-slim

COPY main /bin/main

CMD ["/bin/main"]