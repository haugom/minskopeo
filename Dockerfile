FROM alpine:latest AS init
ADD ./skopeo /usr/local/bin
RUN chmod +x /usr/local/bin/skopeo
RUN apk update
RUN apk add ca-certificates

FROM alpine:latest
COPY --from=init /usr/local/bin/skopeo /usr/local/bin/skopeo
COPY --from=init /etc/ssl/certs /etc/ssl/certs
ENTRYPOINT [ "/usr/local/bin/skopeo" ]
CMD [ "--help" ]