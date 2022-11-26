FROM debian:stable-slim
RUN apt update && apt install -y chkrootkit
RUN rm -rf /usr/share/doc/ && rm -rf /usr/share/man && rm -rf /usr/share/locale/
CMD ["chkrootkit", "-r", "/dest"]
