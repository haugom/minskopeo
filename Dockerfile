FROM haugom/waitforsignal:1.0.0
ADD ./skopeo /usr/local/bin
ENTRYPOINT [ "/usr/local/bin" ]
CMD [ "--help" ]