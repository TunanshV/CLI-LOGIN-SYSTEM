# Build Stage
FROM golang:1.25.3-alpine AS builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download
COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -o cli-app .

# Final Stage
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/cli-app .
# Entry point keeps the container alive and attaches it to standard input
ENTRYPOINT ["./cli-app"]