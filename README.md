# Moon
A modular prompt for BASH made for speed!

Moon is a modular prompt that has been crafted with speed in mind.
Moon supports usermade modules and is fully customisable.
Moon is written completely in BASH which makes it faster than prompts written in Python, Go or Rust (atleast on my PC :p)

## In action
![Settings Window](https://raw.githubusercontent.com/ayush7788/moon/main/pics/moon.png)
![Settings Window](https://raw.githubusercontent.com/ayush7788/moon/main/pics/IMG_20210612_193634.jpg)


## Dependencies
- wget or curl (wget recommended, as `mm` uses wget to fetch modules)
- git (install only and for "git\_module" module)
- Any Nerd Font (eg. Iosevka Nerd Font)

## Installation
With `curl`
```
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ayush7788/moon/main/install.sh)"
```
or with `wget`
```
bash -c "$(wget -qO- https://raw.githubusercontent.com/ayush7788/moon/main/install.sh)"
```

## Modules for Moon
[This repository](https://github.com/ayush7788/moon_modules) contains modules for Moon Prompt.

### Available Modules
- `username` in `basics.sh`
- `hostname` in `basics.sh`
- `working_dir` in `basics.sh`
- `check_last_status` in `last_status.sh`
- `battery` in `battery.sh`
- `git_module` in `git.sh`
- `date_module` in `date.sh`
- `time_module` in `date.sh`

### Installing a module
All modules are contained within a set.
A set can contain many modules in it. To get a module you have to install the whole set.
Modules can be installed with the Moon Manager, `mm` utility.

To install the module `battery`, you have to install `battery.sh` set.

First update the database with -
```shell
mm -p
```

Then to install a set do - 
```shell
mm -i battery.sh
```

### Using a module
To use a module, include it in the `MODULES` variable in `~/.config/moon/moon.sh`
```shell
# Other stuff
MODULES="\n\
$(working_dir) $(battery)\
\n >>"

prompt=$MODULES
export PS1=$prompt
```
