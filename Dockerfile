FROM alpine:latest AS init
ADD ./skopeo /usr/local/bin
RUN chmod +x /usr/local/bin/skopeo

FROM haugom/waitforsignal:1.0.0
COPY --from=init /usr/local/bin/skopeo /usr/local/bin/skopeo
ENTRYPOINT [ "/usr/local/bin/skopeo" ]
CMD [ "--help" ]