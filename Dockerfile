FROM debian:stable-slim

ENV RUNTIME_ENV container

RUN apt update && \
        apt install -y chkrootkit

RUN rm -rf \
        /usr/share/doc/ \
        /usr/share/man/ \
        /usr/share/locale/

CMD ["chkrootkit", "-r", "/dest"]
