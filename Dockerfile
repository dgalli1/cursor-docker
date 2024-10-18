FROM ghcr.io/linuxserver/baseimage-kasmvnc:ubuntunoble
RUN apt update
RUN add-apt-repository universe
RUN apt install -y libfuse2t64 libatk1.0-0 libatk-bridge2.0-0 libgtk-3-dev
#COPY cursor /usr/local/bin/cursor
RUN curl -L https://downloader.cursor.sh/linux/appImage/x64 -o /usr/local/bin/cursor
RUN chmod +x /usr/local/bin/cursor
RUN mkdir -p /defaults
RUN echo "cursor" > /defaults/autostart