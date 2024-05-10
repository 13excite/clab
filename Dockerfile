FROM sflow/clab:latest

RUN apk add --no-cache py3-pip su-exec sudo ansible \
    gcc py3-netaddr tcpdump python3-dev libc6-compat build-base libssh-dev

RUN pip3 install --break-system-packages --upgrade networklab && \
    pip3 install --break-system-packages netaddr cffi ansible-pylibssh

RUN yes | bash -c "$(curl -sL https://get.containerlab.dev)" -- -v 0.54.1

CMD ["/usr/bin/containerlab", "help"]
