# coc_neovim_files

## About
Based on coc.nvim:

https://github.com/neoclide/coc.nvim (Recommended to read)

## Demonstration
![demonstration](https://i.imgur.com/DWDXPSS.gif)

## Dependencies
- python3
- python3-neovim
- fzf
- silversearcher-ag
- exuberant-ctags
- yarn

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

6 - run on nvim: `:coc#util#build()`

7 - Open Neovim Again and run `:CocInstall coc-json coc-html coc-css coc-solargraph coc-snippets`

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

# Recomended material to study:

- https://github.com/tpope/vim-surround - Super cool when masterized.
- https://github.com/terryma/vim-multiple-cursors - Nice for multiple cursors
- https://github.com/junegunn/fzf.vim - Learning more about fzf


# Troubleshoot

Run :checkhealth to find some errors.
