# dl

`dl` is a simple utility that  download content from YouTube or SoundCloud.

<!-- markdown-toc start - Don't edit this section. Run M-x markdown-toc-refresh-toc -->
**Table of Contents**

- [dl](#dl)
    - [usage](#usage)
    - [deps](#deps)
    - [config files](#config-files)
        - [dl.conf](#dlconf)
        - [youtube-dl.conf](#youtube-dlconf)
        - [cookies.txt](#cookiestxt)
    - [running `dl`](#running-dl)

<!-- markdown-toc end -->


## usage

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

## deps

You can install the dependencies by running `dl -i`. The dependencies are :
- [scdl](1), 
- [youtube-dl](2), 
- [ffmpeg](3) (which is a deps from yt-dl),

## config files

The default one are used for testing is under `./etc/`

### dl.conf

The `dl.conf` file is a simple text file that container, on each line (terminated by an `\n`), a name and a url.

The name will be used to create a directory named after it and the music from the url will be downloaded from there.

The following example will download the song `Shined On Me - Praise Cats Feat Andrea Love` into the `YouTube` directory:
```
$ cat ./etc/dl.conf
YouTube https://www.youtube.com/watch?v=wYhwcsjkbiw&list=LL8BoiGKpm1cpDd_nvkMzdxw&index=24&t=0s

```

Don't forget to add a return at the last line, otherwise the line won't be handled !

Every line begging with a `#` will be ignored.

### youtube-dl.conf

The [youtube-dl documentation](2) is what you're looking for.

### cookies.txt

Again, the [youtube-dl documentation](6) get the things done.

## running `dl`

Assuming you either have your own `youtube-dl.conf`, `cookies.txt` and `dl.conf` **OR** that you are a lazy guys (so just a simple `dl.conf` file) :

```bash
$ git clone github.com/burgesQ/music_helper
$ cd music_helper
$ # install the deps
$ dl -i
$ # edit the ./etc/dl.conf according to your need
$ dl -l 3 
```

To update all youtube contente from a specific directory :
```bash
$ dl -l 3 -d "/media/master/dd/Music/" -m 1
```

[1]: https://github.com/flyingrub/scdl
[2]: https://github.com/ytdl-org/youtube-dl
[3]: https://ffmpeg.org/
[4]: https://github.com/ytdl-org/youtube-dl#how-do-i-pass-cookies-to-youtube-dl
