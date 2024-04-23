FROM sflow/clab:latest

RUN apk add --no-cache py3-pip su-exec sudo ansible \
    gcc py3-netaddr tcpdump

RUN pip3 install --break-system-packages --upgrade networklab && \
    pip3 install --break-system-packages netaddr cffi

RUN yes | bash -c "$(curl -sL https://get.containerlab.dev)" -- -v 0.54.1

CMD ["/usr/bin/containerlab", "help"]