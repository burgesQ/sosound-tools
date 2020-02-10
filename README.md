# README.md

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [README.md](#readmemd)
    - [what](#what)
    - [requirement](#requirement)
        - [global](#global)
        - [for ``dl`](#for-dl)
        - [for `sync`](#for-sync)
    - [`dl`](#dl)
    - [`sync`](#sync)
    - [`wrapper`](#wrapper)

<!-- markdown-toc end -->

## what

Some bash script that download music and sync them to a remote android device.

| script                | what                 |
| :-:                   | :-:                  |
| [`dl`](#dl)           | download music       |
| [`sync`](#sync)       | sync file            |
| [`wrapper`](#wrapper) | run `dl` then `sync` |

## installing

You'll need to have `make`, `docker` and `docker-compose` installed on your system.

Not that this project have submodule, please update them running : 

```bash
$ git submdule update --init --recusrive
```

### build

Run `make build` or `docker build -t sosound-tools .`.

### start

Run `make run` or `docker-compose up` to run the scripts.

Edit the `.env` file according to your needs.

To run the tools you'll need to share your own configuration files.

The `docker-compose.yaml` is full of handful example.

- share configuation files
- share music dir
- share network

### stop

To stop the container, run `docker-compose down`. `fetchSound` trap the SIGTERM signal (+ sigint); to ensure a clean exit.

[1]: https://github.com/flyingrub/scdl
[2]: https://github.com/ytdl-org/youtube-dl
[3]: https://ffmpeg.org/
[4]: https://developer.android.com/studio/command-line/adb
[5]: https://github.com/google/adb-sync
[6]: https://github.com/burgesQ/sh_lib
[7]: https://stackoverflow.com/questions/2604727/how-can-i-connect-to-android-with-adb-over-tcp
