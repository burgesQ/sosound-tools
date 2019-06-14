# README.md

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [README.md](#readmemd)
    - [what](#what)
    - [requirement](#requirement)
    - [`dl`](#dl)
        - [usage](#usage)
        - [deps](#deps)
        - [config files](#config-files)
            - [dl.conf](#dlconf)
            - [youtube-dl.conf](#youtube-dlconf)
            - [cookies.txt](#cookiestxt)
        - [running download](#running-download)
    - [sync](#sync)
        - [usage](#usage-1)
        - [running sync](#running-sync)

<!-- markdown-toc end -->


## what

Some bash script that download music and sync them on a remote android device.

| script        | what                           |
| :-:           | :-:                            |
| [`dl`](#dl)   | utility used to download Music |
| [`sync`](#sync) | utility used to sync Music     |

## requirement

You'll need [scdl](1), [youtube-dl](2), [ffmpeg](3), [adb](4) and [adb-sync](5).

## `dl`

`dl` is a simple utility than can be used to download file from YouTube or SoundCloud.

### usage

```bash
Usage : dl -d [path] -c [path] -y [path] -m [0..3] -l [0..3] -i -h

Run dl, a simple music downloader script.

Configuration options :

    -d:     root path for downloads. A full or relative path can be provide.
            Default : [/home/master/repo/perso/music_helper/Music/]
    -c:     download configuration file path. A full path must be provide.
            Default : [/home/master/repo/perso/music_helper/etc/dl.conf]
    -y:     youtube-dl configuration file path. A full path must be provide.
            Default : [/home/master/repo/perso/music_helper/etc/youtube-dl.conf]
    -m:     mode (0=all,1=youtube,2=soundcloud,3=disable_dl)
            Default : [0]

Misc options :

    -l:     log level (0=error,1=info,2=warn,3=debug).
            Default : [2]
    -i:     install required packages
    -h:     display this screen
```

### deps

You can install the dependencies by running `dl -i`.

### config files

#### dl.conf

The `dl.conf` file is a simple text file that container, on each line (terminated by a \n), a name and a url.

The name will be used to create a directory named after it and the music from the url will be downloaded inside.

The following example will downloaexample the song `Shined On Me - Praise Cats Feat Andrea Love` into the `YouTube` directory:
```
$ cat dl.conf
YouTube https://www.youtube.com/watch?v=wYhwcsjkbiw&list=LL8BoiGKpm1cpDd_nvkMzdxw&index=24&t=0s

```

Don't forget to add a return at the last line, otherwise the line won't be handled !

you can use the `#` char to ignore a line.

#### youtube-dl.conf

The [youtube-dl documentation](2) is what you're looking for.

#### cookies.txt

Again, the [youtube-dl documentation](6) get the things done.

### running download

Assuming you either have your own `youtube-dl.conf`, `cookies.txt` and `dl.conf` **OR** that you are a lazy guys :

```bash
$ dl -i
$ dl -l 3
```

To update all youtube contente from a specific directory :
```bash
$ dl -l 3 -d "/media/master/dd/Music/" -m 1
```

## `sync`

TODO: what that shit

### usage

```bash
Usage : sync -d [path] -s [path] -c [IP] -l [0..3] -i -h

Run sync, a simple android sync script.

Configuration options :

    -d:     root path for root sync path. A full or relative path can be provide.
            Default : [$DL_PATH]
    -c:     connect ip of the android device. Please be sure that the device support
            adb over tcpip.
            Default : [$CONNECT_IP]
    -s:     sync configuration file path. A full path must be provide.
            Default : [$SYNC_CONF_PATH]

Misc options :

    -l:     log level (0=error,1=info,2=warn,3=debug).
            Default : [$LEVEL]
    -i:     install required packages
    -h:     display this screen
```

### running sync

```bash
$sync -l 3 -d "/media/master/dd/Music" -c 192.168.8.102
```

[1]: https://github.com/flyingrub/scdl
[2]: https://github.com/ytdl-org/youtube-dl
[3]: mt
[4]: mt
[5]: https://github.com/google/adb-sync
[6]: https://github.com/ytdl-org/youtube-dl#how-do-i-pass-cookies-to-youtube-dl
