# Start from a base image
FROM alpine:latest

# Add metadata
LABEL maintainer="firas4"
LABEL description="My first Alpine image"

# Update and install packages
RUN apk update && apk add --no-cache \
    bash \
    curl \
    git

# Create a directory
RUN mkdir -p /app

# Set working directory
WORKDIR /app

# Copy files (if you have any)
# COPY . /app

# Set environment variable
ENV MY_NAME=firas

# Expose a port (if needed)
# EXPOSE 8080

# Default command when container starts
CMD ["echo", "Hello from Alpine!"]
