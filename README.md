# README.md

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [README.md](#readmemd)
    - [what](#what)
    - [requirement](#requirement)
    - [`dl`](#dl)
    - [`sync`](#sync)
    - [`wrapper`](#wrapper)

<!-- markdown-toc end -->

TODO: [enable adb over tcpip](7)

## what

Some bash script that download music and sync them to a remote android device.

| script                | what                                 |
| :-:                   | :-:                                  |
| [`dl`](#dl)           | utility used to download Music       |
| [`sync`](#sync)       | utility used to sync Music           |
| [`wrapper`](#wrapper) | utility used to run `dl` then `sync` |

## requirement

You'll need to have those package installed on your system :

The [`sh_lib`][6] on your system - or you need to recurse the submodule of the project :
```bash
$ git submdule update --init --recusrive
```

To download :

- [scdl][1], 
- [youtube-dl](2), 
- [ffmpeg](3) (which is a deps from yt-dl),

To sync :

- [adb](4)
- [adb-sync](5).

## `dl`

Go to ./docs/dl.md

## `sync`

Go to ./docs/sync.md

## `wrapper`

Go to ./docs/wrapper.nd

[1]: https://github.com/flyingrub/scdl
[2]: https://github.com/ytdl-org/youtube-dl
[3]: https://ffmpeg.org/
[4]: https://developer.android.com/studio/command-line/adb
[5]: https://github.com/google/adb-sync
[6]: https://github.com/burgesQ/sh_lib
