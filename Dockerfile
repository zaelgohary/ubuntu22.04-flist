FROM scratch

ADD ./ubuntu-jammy-oci-amd64-root.tar.gz /

# giving permission to start ssh
RUN chmod +x start.sh

# start ssh
RUN apk add openssh-server && ssh-keygen -A

CMD ["/start.sh"]
