# Use an Ubuntu base image for compatibility
FROM clarity001/bioinformatics:latest

# Install vscode CLI
RUN curl -Lk 'https://code.visualstudio.com/sha/download?build=stable&os=cli-alpine-x64' --output vscode_cli.tar.gz && \
    tar -xf vscode_cli.tar.gz && \
    mv code /usr/local/bin/ && \
    rm vscode_cli.tar.gz && \
    mkdir -p /data && \
    mkdir -p /zata

# Start code-server
CMD ["/bin/bash", "-c", "code tunnel --accept-server-license-terms --no-sleep --name code-server"]
