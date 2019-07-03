# Unprivileged landing page for LSP running in port 8080
# using tornado as a web framwork

FROM python:3-alpine as base
RUN apk add build-base python-dev py-pip 
ENV LIBRARY_PATH=/lib:/usr/lib
FROM base as builder
RUN mkdir /install
WORKDIR /install
ADD requirements.txt /requirements.txt
RUN pip install --install-option="--prefix=/install" -r /requirements.txt

FROM base
LABEL maintainer="mcarras2@illinois.edu"
LABEL name="mgckind/lsst-lsp-landing"
ARG BUILD_DATE
ARG VERSION
LABEL build-date=$BUILD_DATE
LABEL version=$VERSION
RUN adduser tornado -h /home/tornado -s /bin/sh -D
COPY --from=builder /install /usr/local
ADD server.py /home/tornado/server.py
ADD public_html /home/tornado/public_html
RUN chown -R tornado:tornado /home/tornado
WORKDIR /home/tornado/
USER tornado
