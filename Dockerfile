FROM alpine

USER root

RUN  mkdir /root/bin
COPY root-srv.exe /root/bin/root-srv

WORKDIR /root
ENTRYPOINT ["/root/bin/root-srv", "-addr", ":8080"]
