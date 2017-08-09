FROM scratch

COPY root-srv.exe /usr/bin/root-srv

ENTRYPOINT ["/usr/bin/root-srv", "-addr", ":8080"]
