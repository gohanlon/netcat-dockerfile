FROM ubuntu

RUN apt-get update \
  && DEBIAN_FRONTEND=noninteractive apt-get install -y netcat \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# CMD ["nc", "-vvv", "-l", "-p", "8080"]
ADD ./entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh

ENV HTTP_PORT=8080
EXPOSE 8080

ENTRYPOINT ["entrypoint.sh"]
