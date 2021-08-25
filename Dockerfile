# ghcr.io/oznu/homebridge
FROM ghcr.io/oznu/homebridge@sha256:bcd38e757de3877dd307a4bd01a4e15ade46e96aa2b38a320ecec48967c76f5a
ENV HOMEBRIDGE_NEST_VERSION=4.5.3
RUN npm install -g --unsafe-perm homebridge-nest@${HOMEBRIDGE_NEST_VERSION}
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]