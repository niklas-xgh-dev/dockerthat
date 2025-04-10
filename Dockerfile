FROM debian:stable-slim

# Add metadata labels
LABEL maintainer="NJXGH"
LABEL version="1.0"
LABEL description="Simple Go hello world application"

# Set working directory
WORKDIR /app

COPY main /bin/main

# Document that the container listens on port 8080
EXPOSE 8080

ENV PORT=8080

# Set healthcheck (doesn't change functionality but helps container orchestrators)
HEALTHCHECK --interval=30s --timeout=3s CMD curl -f http://localhost:${PORT}/health || exit 1

CMD ["/bin/main"]