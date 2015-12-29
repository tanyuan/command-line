# Tanyuan using Command Line

Some frequently used shell scripts and tips.

Read [The Art of Command Line](https://github.com/jlevy/the-art-of-command-line)

## Moving around in shell

Shortcuts are Emacs-like.

`Alt-.`: repeat last argument

### History

`Ctrl-p`(previous), `Ctrl-n`(next): history

`Ctrl-r`: search previous commands

### Cursor

`Ctrl-a`(Letter A): move to start of line

`Ctrl-e`(End): move to end of line

`Ctrl-b`(backward): move backward a letter

`Ctrl-f`(forward): move forward a letter

`Alt-b`(backward): move backward a word

`Alt-f`(forward): move forward a word

### Editting

`Ctrl-w`(word): delete last word segmented by whitespaces
`Alt-d`: delete a word forward

### Control

`Ctrl-c`: cancel current process

`Ctrl-l`: clear the screen 

`Ctrl-d`: exit current shell

### Copy an argument again in current line:

1. Type the argument.
2. `Ctrl-w` to delete the last argument.
3. `Ctrl-y`, `Ctrl-y` to paste the argument two times.

### Edit path fast

1. `Alt-b` go backward.
2. `Alt-d` to kill a word.

## Disk Usage

```
df -h
```

## Directory Size

```
du -h
```

Show only sums:
```
du -hs
```

Show only one directory deep:
```
du -h -d 1
```

## Count how many files

```
ls -1 | wc -l
```

## Show running process

```
ps aux | grep PROCESS
```

## Process priority

Highest from 19 to -20.

Run a program with priority -9:
```
sudo nice --9 PROGRAM
```

Reset a priority of a running process to 9:
```
sudo renice -9 PID
```

## Timer

```
time PROGRAM
```

## Convert from Big-5 to UTF-8

```
iconv -f big5 -t utf8 FILE
```

## Remote copy

Secure Copy SOURCE TARGET

```
scp [-r] USERNAME@IP:DIR TARGET_DIR
```
