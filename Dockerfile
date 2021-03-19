FROM ubuntu:focal

ENV TZ=Asia/Tokyo
RUN apt update && apt install -y tzdata
RUN apt install -y pandoc wkhtmltopdf fonts-ipafont fonts-ipaexfont && \
    fc-cache -fv

LABEL org.opencontainers.image.source=https://github.com/44smkn/pandoc-ja-container

ENTRYPOINT [ "pandoc" ]