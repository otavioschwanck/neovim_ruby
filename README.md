# Neovim Ruby

## Alert
I've migrated to doom emacs: https://github.com/hlissner/doom-emacs  Its like vim, but with steroids!

## About
A complete IDE for Rails development with vim.  Uses coc.nvim for auto-complete.

https://github.com/neoclide/coc.nvim (Recommended to read)

## Demonstration
![demonstration](https://i.imgur.com/SLyoGwS.gif)

obs: I just doing random stuff with a very old code that i found =D

## Video demonstration of some commands(pt_BR):
https://youtu.be/3MYo9z0YsLg

## Dependencies
- python3-neovim
- fzf
- silversearcher-ag
- exuberant-ctags
- yarn (Installed with nvm (https://github.com/creationix/nvm))
- xclip
- Ruby (with rvm ou rbenv)
- NerdFonts

Tested on:
 - Solus
 - Ubuntu
 - Arch Linux
 - MacOS (Thanks Sérgio Maia)

To Ubuntu \ Mint, run:

sudo apt install python3-neovim python3-pip python3-setuptools exuberant-ctags silversearcher-ag; sudo pip3 install pynvim

On Solus, run:
sudo eopkg install neovim xclip ctags neovim silver-searcher python-neovim

Install fzf:
https://github.com/junegunn/fzf


```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

Install YARN:

npm install -g yarn

### Nerd fonts for cool icons:

#### Linux

```sh
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

_Note:_ deprecated alternative paths: `~/.fonts`

#### macOS (OS X)

```sh
cd ~/Library/Fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
```

## Installation

1 - Install Neovim

2 - Put the files on .config/nvim/ (git clone https://github.com/otavioschwanck/neovim_ruby.git ~/.config/nvim)

3 - Open neovim (nvim on terminal)

4 - Run `:PlugInstall`

5 - Exit from nvim (:q)

6 - open neovim again (nvim) and run: `:call coc#util#build()`

7 - Run it too: `:CocInstall coc-json coc-html coc-css coc-solargraph coc-snippets`

8 - create a .backups folder on home. (mkdir ~/.backups)

## Ruby Auto-complete

Install Ruby with rvm or rbenv and install solargraph.

`gem install solargraph rubocop neovim`

Thats it!

# Some commands
| Command | Action |
| --- | ---------- |
| ctrl + e | Open Nerdtree |
| ctrl + p | Find files in project |
| , + shift + f | Find text on project. you can select more than one file using tab, and apply commands on all selected files with :cfdo [command_1] | [command_2]
| , + b | List buffers |
| , + p | Previous buffer |
| , + n | Next buffer |
| , + d | Close the buffer |
| , + F | Search by text in entire project |
| , + 1..9 | Change tab |
| alt + 1..9 | Change tab (neovim-qt (sudo apt install neovim-qt)) |
| , + if | JsFileImport |
| , + iF | JsFileImportList |
| , + ig | JsGotoDefinition |
| , + iG | JsGotoDefinition |
| , + ip | PromptJsFileImport |
| , + is | SortJsFileImport |
| , + ic | JsFixImport |
| F4     | Toggle Terminal |
| F5     | Exit Terminal Mode |
| , + shift + B | Run the current file |
| ctrl + ] | Go to definition of Class \ Method on cursor |
| } | Go to next blank line (Cool for navigation) |
| { | Go to previous blank line (Cool for navigation) |

# Git Epic Commands
| Command | Action |
| --- | -----------|
| , + gs | Show de status |
| , + gd | Show de Git Diff of current File (cool to use with ,gs) |
| , + gb | Open your repository site |
| , + ga | git add . on your project directory |
| , + gc | git commit |
| , + gg | git log, use [q and ]q to navigate in file history |
| , + ge | Leave the git log (Gedit) |
| , + gh | Git checkout |
| , + gg | git pull     |
| , + gm | git checkout master |
| , + gwd | Git diff on entire project |

TIP: For Git Push, git pull, etc, use `, + shift + d` to close the buffer faster. (:bd! equivalent)

# Ruby \ Rails Epic Commands
| Commands | Action |
| --- | ------------|
| , rt | Alternate from File to Test |
| , rm | Find the model of current resource |
| , rc | Find controller of curent resource |
| , rv | Find view of current resource (must be on Action in controller)
| , rwt | Alternate from File to Test but using vsplit |
| , rwm | Find the model of current resource but using vsplit |
| , rwc | Find controller of curent resource but using vsplit |
| , rwv | Find view of current resource (must be on Action in controller) but using vsplit |
| , ru | Run :Rubocop on project |
| , rwu | Run :Rubocop -a on project |
| ]m | Navigate to next method definition |
| [m | Navigate to prevous method definition |

# Running Tests like a boss
| Commands | Action |
| --- | ------------|
| , tn  | Test nearest spec on cursor |
| , tf  | Test current opened file |
| , ta  | Run Tests on entire project |
| , tl  | Run Last Test |

Super TIP: If you want to scroll in your test output, you need to do it on normal mode.  Press F5 to exit insert mode, and navigate normaly. You close terminal, just use `, + shift + D`

# Copy and Paste with system clipboard (requires xclip)
| Commands | Action |
| --- | ------------|
| \y  | y integrated with system clipboard, do \yy to yank line, or \yw to yank a word, etc... |
| \p  | same as \y but for paste |

# Miscellaneous

| Commands | Action |
| --- | ------------|
| :MarkdownPreview | Open current file in browser with markdown preview.  It's async! |

You can uncomment the line with `set clipboard=unnamedplus` to make yank always synced with system, but i not recommend (Is really boring when you copy something from outside and use a dd and lost it.)

# Recomended material to study:

- https://github.com/tpope/vim-surround - Super cool when masterized.
- https://github.com/terryma/vim-multiple-cursors - Nice for multiple cursors
- https://github.com/junegunn/fzf.vim - Learning more about fzf

# Want to learn basics of vim? 

I really recommend this udemy course: https://www.udemy.com/vim-commands-cheat-sheet/

Very great course!

# Troubleshoot

Run :checkhealth to find some errors.

# Autocomplete doesn't work

Go to ~/.config/nvim/plugged/coc.nvim and run yarn.
