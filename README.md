# Roku Remote Script

## tl;dr

```bash
./roku.sh <ip of your TV device>
```

Example:
```bash
./roku.sh 192.168.0.223
```

Then follow on screen instructions

## Intro/Backstory

I have a Roku TV for pretty long time and was looking for a way to control my TV
from my PC with linux on board.

Basically i was able to download android remote app and linux control app on
electron, they also have a web version which allows you to conrol your smart TV
from the browser.

After looking into web version I decided to dig into protocol documentation.

[Roku Remote protocol docs](https://developer.roku.com/docs/developer-program/debugging/external-control-api.md)

## How it works

Once you connect your TV to home network (e.g. through WIFI) you should be able
to query it via `curl` using IP address dedicated to your TV. Look at your
router clients list to identify TV's IP address.

## Goal

My goal was to be able to replicate remote jeys with shell script so i can
control sound level, input, arrows from console.

I went into this section of documentation:

[keypress-key-values](https://developer.roku.com/docs/developer-program/debugging/external-control-api.md#keypress-key-values)

and prepared a script which takes an IP address of your TV, reads keyboard input
and sends those keys mapped to TV commands, similar to how native remote control
works.

## Results

So in order to send keys we basically do POST requests with empty body to your
device:

```bash
$ curl -d '' "http://<your tv ip address>:8060/keypress/<keypress-key-value>"
```

On my case i prepared the following mapping:
```
    q - VolumeUp
    a - VolumeDown
    z - VolumeMute

    v - PowerOff
    r - PowerOn

    w - Home
    d - Select
    s - Left
    f - Right
    e - Up
    c - Down
    x - Back

    1 - InputHDMI1
    2 - InputHDMI2
    3 - InputHDMI3
    
    / (or ctrl+c) - exit
```

Which on keyboard looks like on the picture below:

<img src="layout.png" width="50%">

## The script

```bash
./roku.sh <ip of your TV device>
```

Example:
```bash
./roku.sh 192.168.0.223
```

Enjoy.

😃 🐧