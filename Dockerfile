FROM bash:4.4

WORKDIR app
COPY . /app
RUN /app/fetchSound -i && /app/syncSound -i
RUN ln -fs /app/{fetch,sync}Sound /usr/local/bin/

# RUN apk add
# install dl lib
# install sync stuff

# copy dir
# symlink




# prod
# statically copy binaries
