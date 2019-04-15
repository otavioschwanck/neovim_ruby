# Neovim Ruby

## About
Based on coc.nvim:

https://github.com/neoclide/coc.nvim (Recommended to read)

## Demonstration
![demonstration](https://i.imgur.com/SLyoGwS.gif)

obs: I just doing random stuff with a very old code that i found =D

## Video demonstration of some commands(pt_BR):
https://youtu.be/3MYo9z0YsLg

## Dependencies
- python3
- python3-neovim
- fzf
- silversearcher-ag
- exuberant-ctags
- yarn (Installed with nvm (https://github.com/creationix/nvm))
- xclip

To Ubuntu \ Mint, run:
sudo apt install python3-neovim python3-pip python3-setuptools exuberant-ctags silversearcher-ag; sudo pip3 install pynvim

Install fzf:
https://github.com/junegunn/fzf

```
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
```

Install YARN:

npm install -g yarn

## Installation

1 - Install Neovim

2 - Put the files on .config/nvim/

3 - Open neovim (nvim on terminal)

4 - Run `:PlugInstall`

5 - Exit from nvim (:q)

6 - open neovim again (nvim) and run: `:coc#util#build()`

7 - Run it too: `:CocInstall coc-json coc-html coc-css coc-solargraph coc-snippets`

8 - create a .backups folder on home. (mkdir ~/.backups)

## For Ruby users
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
| ] | Go to next blank line (Cool for navigation) |
| [ | Go to previous blank line (Cool for navigation) |

# Git Epic Commands
| Command | Action |
| --- | -----------|
| , + gs | Show de status |
| , + gd | Show de Git Diff of current File (cool to use with ,gs) |
| , + gb | Open your repository site |
| , + ga | git add . on your project directory |
| , + gc | git commit |
| , + gg | git log, use [q and ]q ]Q nd [Q to navigate between file history |
| , + ge | Leave the git log (Gedit) |
| , + gh | Git checkout |
| , + gg | git pull     |
| , + gm | git checkout master |

TIP: For Git Push, git pull, etc, use `, + shift + d` to close the buffer faster. (:bd! equivalent)

# Rails Epic Commands
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

# Running Tests like a boss
| Commands | Action |
| --- | ------------|
| , tn  | Test nearest spec on cursor |
| , tf  | Test current opened file |
| , ta  | Run Tests on entire project |
| , tl  | Run Last Test |

# Copy and Paste with system clipboard (requires xclip)
| Commands | Action |
| --- | ------------|
| \y  | y integrated with system clipboard, do \yy to yank line, or \yw to yank a word, etc... |
| \p  | same as \y but for paste |

You can uncomment the line with `set clipboard=unnamedplus` to make yank always synced with system, but i not recommend (Is really boring when you copy something from outside and use a dd and lost it.)

# Recomended material to study:

- https://github.com/tpope/vim-surround - Super cool when masterized.
- https://github.com/terryma/vim-multiple-cursors - Nice for multiple cursors
- https://github.com/junegunn/fzf.vim - Learning more about fzf

# Troubleshoot

Run :checkhealth to find some errors.

# Autocomplete doen't work

Go to ~/.config/nvim/plugged/coc.nvim and run yarn.
