FROM alpine
RUN apk --update add curl

RUN curl -L -o grpcwebproxy.zip https://github.com/improbable-eng/grpc-web/releases/download/v0.15.0/grpcwebproxy-v0.15.0-linux-x86_64.zip
RUN unzip grpcwebproxy*.zip

RUN mv dist/grpcwebproxy* /usr/local/bin/grpcwebproxy

RUN chmod +x /usr/local/bin/grpcwebproxy

# Print the help message by default.
CMD grpcwebproxy --help