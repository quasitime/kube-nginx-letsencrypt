FROM fedora:30

RUN dnf install certbot -y && dnf install python && dnf clean all

CMD ["/entrypoint.sh"]

COPY secret-patch-template.json /
COPY deployment-patch-template.json /
COPY entrypoint.sh /
