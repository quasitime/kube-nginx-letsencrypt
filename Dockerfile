FROM fedora:30

RUN dnf install certbot -y && dnf install python -y && dnf clean all


COPY secret-patch-template.json /
COPY deployment-patch-template.json /
COPY entrypoint.sh /

CMD ["/entrypoint.sh"]
