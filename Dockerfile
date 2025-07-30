# syntax=docker/dockerfile:1.4
FROM openresty/openresty:1.25.3.2-5-bookworm
LABEL source_repository="https://github.com/sapcc/noVNC"

RUN mkdir -p /app/novnc
COPY vnc_lite.html /app/novnc/
RUN ln -s /app/novnc/vnc_lite.html /app/novnc/vnc_auto.html
COPY app/ /app/novnc/app/
COPY core/ /app/novnc/core/
COPY vendor/ /app/novnc/vendor/
