# syntax=docker/dockerfile:1.4
FROM bitnami/openresty:1.25.3-2-debian-12-r16
LABEL source_repository="https://github.com/sapcc/noVNC"

RUN mkdir /app/novnc
COPY vnc_lite.html /app/novnc/
RUN ln -s /app/novnc/vnc_lite.html /app/novnc/vnc_auto.html
COPY app/ /app/novnc/app/
COPY core/ /app/novnc/core/
COPY vendor/ /app/novnc/vendor/
