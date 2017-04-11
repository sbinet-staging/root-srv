from scratch

ADD ./root-srv /usr/bin/root-srv
EXPOSE 8080
ENTRYPOINT ["/usr/bin/root-srv", "-addr", ":8080"]
