# Use an official Rust image as a parent image
FROM rust:latest

# Install git
RUN apt-get update && apt-get install -y git

# Clone your Rust repository
RUN git clone https://github.com/acuciureanu/wp-plugins-analyzer.git

# Set the working directory to the cloned repository
WORKDIR /wp-plugins-analyzer

# Build your Rust project
RUN cargo build --release

# Run your Rust project
CMD ["cargo", "run", "--release"]
