# spilence

Automatically mute *Spotify* ads.

`spilence` will automatically detect which *PulseAudio* **sink** is used by 
*Spotify*, and mute it when *Spotify* is playing an ad. If the automatic
detection fails, `spilence` supports an option to manually set the associated
**sink**.

## Requirements

Spotify, PulseAudio, DBUS, awk, POSIX Shell

`spilence` uses the command line tool `pactl` to control *PulseAudio*. It also uses 
`dbus-monitor` to listen do events about song changes from *Spotify*.

`spilence` should be *POSIX Shell* compliant. *bash* is **not** a 
requirement. It is tested with
[Debian Almquist Shell](https://packages.debian.org/stretch/dash).

## Installation

    $ make install
    
If you don not have write permissions to `/usr/local/bin` you may need to be 
root.

    $ sudo make install

or just run `spilence` directly from the source directory

    $ ./spilence

## Usage

If *Spotify* is already running, you should simply be able to just run the 
command:

    $ spilence
    
If that doesn't work (i.e. the automatic **sink** detection fails), or
*Spotify* is not running already, you may manually supply a 
**sink number** or **sink name** on the command line.

    $ spilence -s 2
