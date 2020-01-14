FROM bash:4.4

# install deps
RUN apk add --no-cache py3-setuptools py3-pip curl git sudo && \
  apk add --no-cache android-tools --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing && \
  pip3 install --upgrade pip && \
  pip3 install scdl && \
  curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl && \
  chmod a+rx /usr/local/bin/youtube-dl && \
  git clone https://github.com/google/adb-sync /root/adb-sync && \
  cp /root/adb-sync/adb-sync /usr/local/bin/

# creating special directory
RUN mkdir -p $HOME/.config/music_helper/{logs,lock}/{dl,sync}

WORKDIR app
COPY . /app

# symlink && update deps
RUN ln -fs /app/libs/sh_lib /usr/local/bin && \
  ln -fs /app/fetchSound /usr/local/bin/ && \
  ln -fs /app/syncSound /usr/local/bin/

# missing ffmpeg
