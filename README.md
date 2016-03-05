# Tanyuan using Command Line

Some frequently used shell scripts and tips.

Read [The Art of Command Line](https://github.com/jlevy/the-art-of-command-line).

## Command line apps

### Main applications

* [tmux](https://tmux.github.io/): open several shell windows and splits.

* [Ranger](http://ranger.nongnu.org/): a Miller Column (three columns) file manager with Vi-like key bindings.

### Navigating

* `tree`: view directories as a tree recursively. `-L 2` to show only 2 levels.

* [Autojump](https://github.com/wting/autojump): `j DIR` to jump to frecency (frequency+recency) directory.

* [fzf](https://github.com/junegunn/fzf): fuzzy finder that makes argument finder `Ctrl-t` and command history `Ctrl-r` more powerful.

* [The Fuck](https://github.com/nvbn/thefuck): `fuck` to correct your command line typo. (nice!)

* [PathPicker](https://github.com/facebook/PathPicker): append `| fpp` to commands to make files in command ouput selectable with `Enter` to edit and `c` to run other command.

### Enhancing

* [tldr](https://github.com/tldr-pages/tldr): `man` pages are too long; didn't read. Use `tldr COMMAND` instead.

* [trash-cli](https://github.com/andreafrancia/trash-cli): use `trash` instead of `rm` to move files to trash desktop environment.

* [pdfgrep](https://pdfgrep.org/): grep PDFs.

### Note related

* [todo-md](https://github.com/Hypercubed/todo-md): `todo`to read and edit GitHub-favored Markdown todo.md in directory.

* [Geeknote](http://www.geeknote.me/): Evernote command line app to create, search  and edit notes.

### Useless

* [cmatrix](http://www.asty.org/cmatrix/): Matrix-like animation.

* `cowsay`: ASCII animals to say or think anything.

* `figlet`: create ASCII big text.
 
* `screenfetch`: show system information with ASCII art of distro.

## Moving around in Bash shell

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

### Comment out the current line

Hit `#` when you don't want to run the current command, but would like to keep it in the history.

### Copy an argument again in current line:

1. Type the argument.
2. `Ctrl-w` to delete the last argument.
3. `Ctrl-y`, `Ctrl-y` to paste the argument two times.

### Edit path fast

1. `Alt-b` go backward.
2. `Alt-d` to kill a word.


## Useful commands

### Disk Usage

```
df -h
```

### Directory Size

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

### File statistics

Show line counts, word counts, and byte counts.
```
wc FILE
```

### Compare files and directory

```
diff FILE1 FILE2
```

```
diff -r DIR1 DIR2
```

### Count how many files

```
ls -1 | wc -l
```

### Search

`grep` is regular expression search in files.

```
grep "STRING" FILE -A 10
```

- `-A 10` for with 10 lines after.
- `-B 10` for with 10 lines before.
- `-C 10` for with 10 lines after and before.

`pdfgrep` is regular expression search in PDFs.

### Show running process

```
ps aux | grep PROCESS
```

### Process priority

Highest from 19 to -20.

Run a program with priority -9:
```
sudo nice --9 PROGRAM
```

Reset a priority of a running process to 9:
```
sudo renice -9 PID
```

### Timer

```
time PROGRAM
```

### Convert from Big-5 to UTF-8

```
iconv -f big5 -t utf8 FILE
```

### Remote copy

Secure Copy SOURCE TARGET

```
scp [-r] USERNAME@IP:DIR TARGET_DIR
```
