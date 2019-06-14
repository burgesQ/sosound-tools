# README.md

## what

Some bash script that download music and sync them on a remote android device.

| script        | what                           |
| :-:           | :-:                            |
| [dl](#dl)     | utility used to download Music |
| [sync](#sync) | utility used to sync Music     |

## how

### requirement

You'll need [scdl](1), [youtube-dl](2), [ffmpeg](3), [adb](4) and [adb-sync](5).

### dl

#### usage

```bash
Usage : dl -l [0..3] -d [path] -c [path] -y [path] -i -h

Run dl, a simple music downloader script.

Configuration options :

    -d:     root path for downloads. A full or relative path can be provide.
            Default : [/home/master/repo/perso/music_helper/Music/]
    -c:     download configuration file path. A full path must be provide.
            Default : [/home/master/repo/perso/music_helper/etc/dl.conf]
    -y:     youtube-dl configuration file path. A full path must be provide.
            Default : [/home/master/repo/perso/music_helper/etc/youtube-dl.conf]

Misc options :

    -l:     log level (0=error,1=info,2=warn,3=debug).
            Default : [2]
    -i:     install required packages
    -h:     display this screen
```

#### example


### sync

#### usage

#### example

[1]: https://github.com/flyingrub/scdl
[2]: https://github.com/ytdl-org/youtube-dl
[3]: mt
[4]: mt
[5]: https://github.com/google/adb-sync
