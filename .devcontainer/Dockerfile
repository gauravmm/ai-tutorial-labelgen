# Use Ubuntu as base image
FROM mcr.microsoft.com/devcontainers/base:ubuntu-24.04

# Avoid prompts from apt
ENV DEBIAN_FRONTEND=noninteractive

# Install basic dependencies
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    git \
    ghostscript \
    xz-utils \
    ca-certificates \
    imagemagick \
    fonts-liberation \
    && rm -rf /var/lib/apt/lists/*

RUN sed -i '/pattern="PDF"/c\\  <policy domain="coder" rights="read|write" pattern="PDF" />' /etc/ImageMagick-6/policy.xml

# Install Typst
# Using the latest release from GitHub
RUN TYPST_VERSION=$(curl -s https://api.github.com/repos/typst/typst/releases/latest | grep '"tag_name"' | sed -E 's/.*"v([^"]+)".*/\1/') && \
    curl -L "https://github.com/typst/typst/releases/download/v${TYPST_VERSION}/typst-x86_64-unknown-linux-musl.tar.xz" -o typst.tar.xz && \
    tar -xf typst.tar.xz && \
    mv typst-x86_64-unknown-linux-musl/typst /usr/local/bin/typst && \
    chmod +x /usr/local/bin/typst && \
    rm -rf typst.tar.xz typst-x86_64-unknown-linux-musl

# Create a non-root user
RUN useradd -m -s /bin/bash vscode && \
    apt-get update && apt-get install -y sudo && \
    echo "vscode ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers && \
    rm -rf /var/lib/apt/lists/*

# Set the default user
USER vscode

# Set working directory
WORKDIR /workspace

# Verify installations
RUN typst --version && convert --version
