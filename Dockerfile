FROM debian

RUN echo $PORT
RUN echo $UUID

RUN curl -LROJ https://raw.githubusercontent.com/v2fly/fhs-install-v2ray/master/install-release.sh
RUN bash install-release.sh

ADD v2ray.sh /v2ray.sh
RUN chmod +x /v2ray.sh

CMD /v2ray.sh
