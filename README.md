```
	██████╗  ██████╗ ████████╗███████╗██╗██╗     ███████╗███████╗
	██╔══██╗██╔═══██╗╚══██╔══╝██╔════╝██║██║     ██╔════╝██╔════╝
	██║  ██║██║   ██║   ██║   █████╗  ██║██║     █████╗  ███████╗
	██║  ██║██║   ██║   ██║   ██╔══╝  ██║██║     ██╔══╝  ╚════██║
	██████╔╝╚██████╔╝   ██║   ██║     ██║███████╗███████╗███████║
	╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝╚══════╝╚══════╝╚══════╝
                                                             
	 █████████████████████████████████████████████▓▒░
	 █▓▒░                                        █▓▒░
	 █▓▒░  █▀▀ █░░█ █▀▀▄ █▀▀ █▀▀█ █▀▀█ █░░█ █░█  █▓▒░
	 █▓▒░  █░░ █▄▄█ █▀▀▄ █▀▀ █▄▄▀ █░░█ █░░█ ▄▀▄  █▓▒░
	 █▓▒░  ▀▀▀ ▄▄▄█ ▀▀▀░ ▀▀▀ ▀░▀▀ █▀▀▀ ░▀▀▀ ▀░▀  █▓▒░
	 █▓▒░                                        █▓▒░
	 ██████████▓▒░github.com/cyberpunx/dotfiles███▓▒░ 

```
#Description - What is this?
This repository contains my personal dotfiles for a bunch of GNU/Linux applications..

> "Dotfiles" are text configuration files on Unix-like systems for
> things like our shell, `~/.zshrc`, our editor in `~/.vimrc`, and many
> others. They are called "dotfiles" as they typically are named with a
> leading `.` making them hidden files on your system, although this is
> not a strict requirement.[1](https://thoughtbot.com/upcase/videos/intro-to-dotfiles)

The main idea behind this repository is to have all this dotfiles stored in one place, so I can easily setup and maintain my configs. And of course, this provides me with a backup if I ever need to reinstall my whole system from scratch.

As I'm constantly learning and changing stuff, so this repository and its organization will be most likely changing and (hopefully) improving. Meaning that this is not, in any way, a final version. Feel free to copy, modify and use any of these files as you please.

#Managing dotfiles
I've found that the easiest way to manage my dotfiles is keeping them all stored in a single versioned directory named `~/dotfiles/` instead of scattered all over `~`(home). Then I symlink files from `~/dotfiles` to wherever I want, in example  `~/.config`.
In order to achieve this I use [GNU Stow](http://www.gnu.org/software/stow/)  a *"symlink manager which takes distinct packages of software and/or data located in separate directories on the filesystem, and makes them appear to be installed in the same place"*. As you can read in [this article](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html), this is a pretty clean and simple way of manage the dotfiles by a single command `stow`.

You can install stow using your default's system package manager. I'm in Debian, so I execute:

- `sudo apt-get install stow`

And you're good to go.

#Using GNU Stow
By default `stow` command creates symlinks to files in the parent directory relatively to current working directory, so if you are currently in `~/dofiles` directory, it will create symlinks relatively to `~` (home) directory. If you keep dotfiles in another directory (deeper in filesystem), you will have to use `-t ~` parameter to make the configuration files appear in your home directory.

To install most of the dotfiles you only need to run the `stow` command with the directory name as parameter. Example:

If I want to install my Openbox dotfiles, I execute:

 - `cd dotfiles`
 - `stow openbox`

this will recursively symlink files from inside of `~/dotfiles/openbox/` to `~/.config/openbox`.
You also can symlink to another locations using the `-t /target/directory` parameter, let's say I want to install a zsh dotfile to my `root` user.

 - `cd dotfiles`
 - `sudo stow zsh -t /root`

This will create symlinks into `/root/.zsh` directory.

**IMPORTANT:** *GNU Stow can only create a symlink if a target file does not already exist. If default file was created upon program installation you must delete it before installing a new one with GNU Stow. This does not apply to directories.*

#Installation
Navigate to your home directory.

 1. Clone this repository: `git clone https://github.com/cyberpunx/dotfiles.git`
 2. Enter the dotfiles directory: `cd dotfiles`
 3. Install needed modules: `stow tint2`, `stow openbox`, `stow conky`, etc

#Dotfiles directory Structure
Comming up

