FROM appleboy/drone-telegram:1.3.10-linux-arm

COPY entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh

WORKDIR /github/workspace

ENTRYPOINT ["/entrypoint.sh"]
