FROM alpine:3.7
COPY mac2vendor.sh /usr/local/bin/
RUN apk add --no-cache bash curl && \
    chmod 755 /usr/local/bin/mac2vendor.sh && \
    ln -s usr/local/bin/mac2vendor.sh
ENTRYPOINT ["/usr/local/bin/mac2vendor.sh"]
