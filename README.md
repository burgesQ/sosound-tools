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

TODO: [enable adb over tcpip][7]

## what

Some bash script that download music and sync them to a remote android device.

| script                | what                 |
| :-:                   | :-:                  |
| [`dl`](#dl)           | download music       |
| [`sync`](#sync)       | sync file            |
| [`wrapper`](#wrapper) | run `dl` then `sync` |

## requirement

You'll need to have those package installed on your system :

### global

[`sh_lib`][6] (which is a submodule of this project) :
```bash
$ git submdule update --init --recusrive
```

### for ``dl`

- [scdl][1]
- [youtube-dl][2],
- [ffmpeg][3]

### for `sync`

- [adb][4]
- [adb-sync][5]

## `dl`

`./docs/dl.md`

## `sync`

`./docs/sync.md`

## `wrapper`

`./docs/wrapper.md`

## Docker

Alternately, you can build a docker image so all the deps are located inside the container.

### build

Run `make build` or `docker build -t sosound-tools .`.

### run

- share configuation files
- share music dir
- share network

[1]: https://github.com/flyingrub/scdl
[2]: https://github.com/ytdl-org/youtube-dl
[3]: https://ffmpeg.org/
[4]: https://developer.android.com/studio/command-line/adb
[5]: https://github.com/google/adb-sync
[6]: https://github.com/burgesQ/sh_lib
[7]: https://stackoverflow.com/questions/2604727/how-can-i-connect-to-android-with-adb-over-tcp
