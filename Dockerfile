FROM bash:4.4

# This hack is widely applied to avoid python printing issues in docker containers.
# See: https://github.com/Docker-Hub-frolvlad/docker-alpine-python3/pull/13
ENV PYTHONUNBUFFERED=1

# installing deps
RUN echo "installing required package" && \
  apk add --no-cache \
  android-tools curl ffmpeg git inotify-tools python python3 sudo \
  --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing \
  && python3 -m ensurepip \
  && rm -r /usr/lib/python*/ensurepip \
  && pip3 install --no-cache --upgrade pip setuptools wheel \
  && pip3 install scdl \
  && curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl \
  && chmod a+rx /usr/local/bin/youtube-dl \
  && git clone https://github.com/google/adb-sync /root/adb-sync \
  && cp /root/adb-sync/adb-sync /usr/local/bin/ && rm -rf /root/adb-sync

# creating special directories
RUN echo "creating required directories" && \
  mkdir -p $HOME/.config/sosound/logs/dl && \
  mkdir -p $HOME/.config/sosound/logs/sync && \
  mkdir -p $HOME/.config/sosound/lock/dl && \
  mkdir -p $HOME/.config/sosound/lock/sync && \
  mkdir -p /logs

COPY . /app

# symlink && update deps
RUN ln -fs /app/libs/sh_lib /usr/local/bin && \
  ln -fs /app/scripts/fetchSound /usr/local/bin/ && \
  ln -fs /app/scripts/syncSound /usr/local/bin/

ENV running_cmd=fetchSound
ENV running_opt='-l 3 -m 3'

WORKDIR root

CMD echo "Running ${running_cmd} (binary) ${running_opt} (options)" ; \
  ${running_cmd} ${running_opt}
