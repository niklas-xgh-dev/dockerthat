# Simple Go Web Server

A minimal HTTP server built with Go that returns a basic HTML page.

## Features

- Single endpoint serving "Hello from Docker" HTML page
- Configured timeouts for better security
- Containerized with Docker

## Usage

### Running locally

```bash
go run main.go
```

### With Docker

```bash
# Build the image
docker build -t go-hello .

# Run the container
docker run -p 8080:8080 go-hello
```

Visit http://localhost:8080 in your browser to see the page.
