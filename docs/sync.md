# sync  

### TODO: test
### TODO: usb/tcpip

`sync` is a simple script that remotely connect to a android device and then synchronize the content of the local directory and the android remote one.

### usage

```bash
Usage : sync -d [path] -s [path] -c [IP] -l [0..3] -i -h

Run sync, a simple android sync script.

Configuration options :

    -d:     root path for root sync path. A full or relative path can be provide.<
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

### conf file

#### `sync.fonc`

The `sync.conf` file is a simple text file that container, on each line (terminated by a \n), the name of the directory to sync.

The directory will be copied to the remote android device via `adb-sync`.

The following example will sync the directory `YoutTubbe` into the android device:
```
$ cat sync.conf
YouTube

```

Don't forget to add a return at the last line, otherwise the line won't be handled !

you can use the `#` char to ignore a line.

### running sync

```bash
$ git clone github.com/burgesQ/music_helper
$ cd music_helper
$ dl -i
$ # edit the ./etc/sync.conf according to your need
$ sync -l 3 -d ./Music -s ./etc/sync.conf -c <your android adb ip>
```

[1]: https://stackoverflow.com/questions/12251101/how-to-enable-adbd-to-listen-to-a-port-at-boot-time-in-android