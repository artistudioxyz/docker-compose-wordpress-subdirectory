# Base image
FROM wordpress:latest

# Install WP-CLI
RUN apt-get update && \
    apt-get install -y less curl && \
    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp