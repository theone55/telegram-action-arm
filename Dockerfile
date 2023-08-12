FROM appleboy/drone-telegram:1.3.10-linux-arm

COPY entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh

# Run chmod only if the architecture is not ARM
RUN if [ "$(uname -m)" != "aarch64" ]; then chmod +x /entrypoint.sh; fi

WORKDIR /github/workspace

ENTRYPOINT ["/entrypoint.sh"]
