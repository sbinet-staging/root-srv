FROM alpine

USER root

RUN  mkdir /root/bin
COPY root-srv.exe /root/bin/root-srv

WORKDIR /root
EXPOSE 8080
ENTRYPOINT ["/root/bin/root-srv", "-addr", ":8080"]
