# Neovim and Zsh Configuration Setup
___
___
___

**This repository contains configurations for Neovim and Zsh, including plugins and settings for a personalized development environment. Follow the instructions below to set up and install everything.**
___
___
![Image](https://github.com/jcmspg/nvim-configs/blob/main/screenshots/Nvim.png?raw=true "Nvim")

## Neovim Configuration
### Plugins Used
* [awesome-vim-colorschemes](https://github.com/rafi/awesome-vim-colorschemes): Provides a collection of beautiful color schemes for Vim.
* [vim-airline](https://github.com/rafi/awesome-vim-colorschemes): A lightweight statusline and tabline plugin for Vim.
* [nerdtree](https://github.com/rafi/awesome-vim-colorschemes): A tree explorer plugin for Vim.
* [vim-devicons](https://github.com/rafi/awesome-vim-colorschemes): Adds file type icons to Vim plugins and improves the appearance of NERDTree.
* [vim-terminal](https://github.com/rafi/awesome-vim-colorschemes): Embed a terminal in Neovim for a better integrated development environment.
* [tagbar](https://github.com/rafi/awesome-vim-colorschemes): Provides an easy way to browse the tags of the current file.
* [coc.nvim](https://github.com/rafi/awesome-vim-colorschemes): A completion framework for Neovim that uses Language Server Protocol (LSP) to provide auto-completion, diagnostics, and more for various programming languages.
* [delimitMate](https://github.com/rafi/awesome-vim-colorschemes): Provides auto-closing of quotes, parens, brackets, etc.
* [context.vim](https://github.com/rafi/awesome-vim-colorschemes): Shows the context of the currently visible part of a file in the statusline.
* [copilot.vim](https://github.com/rafi/awesome-vim-colorschemes): Provides integration with GitHub Copilot for code suggestions and completions.

### Installation Steps
1. Clone this repository to your local machine:

```
git clone https://github.com/jcmspg/nvim-configs.git
```

2. Install Neovim if you haven't already. Refer to the [official documentation](https://neovim.io/) for instructions specific to your operating system.
3. Navigate to the directory containing your Neovim configuration files.
4. Install the Vim-Plug plugin manager by following the instructions on the [Vim-Plug GitHub page](https://github.com/junegunn/vim-plug).
5. If you're using Vimscript (init.vim), paste the following configuration into your init.vim file:

```
call plug#begin('~/.vim/plugged')

" List of plugins...

call plug#end()
```

6. If you're using Lua (init.lua), you can use Plug with lua as well. Example:

```
-- Specify a directory for plugins
vim.cmd('call plug#begin(\'~/.vim/plugged\')')

-- List of plugins...

vim.cmd('call plug#end()')
```

7. Launch Neovim and run :PlugInstall to install the plugins managed by Vim-Plug.
8. Verify that the configuration is working as expected.
___
___
___

## Zsh Configuration

![Image](https://github.com/jcmspg/nvim-configs/blob/main/screenshots/Terminal.png?raw=true "Terminal")
### Theme used
The Zsh theme used in this configuration is **agnoster**.
### Plugins Used
- [Git](https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/git)
### Installation Steps
1. Install [Oh My Zsh](https://ohmyz.sh/) if you haven't already. You can install it via curl or wget:
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
or
```
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```
2. Replace the default Zsh theme in your **~/.zshrc** file with **agnoster**:
```
ZSH_THEME="agnoster"
```
3. Save your changes and restart your terminal.
4. If you want to use additional plugins, add them to the plugins array in your **~/.zshrc** file.
5. Verify that the Zsh configuration is applied correctly.

___
***
---

## Additional Setup

1. ### Environment Variables:
* If you have any specific environment variables you need to set, you can add them to your ~/.zshrc file using the export command. For example:
```
export MY_VARIABLE="value"
```
2. ### Aliases and Functions:
* You can define custom aliases and functions in your ~/.zshrc file to streamline your workflow. For example:
```
alias ll="ls -l"
```
3. ### Key Bindings
* Customize key bindings according to your preferences by adding them to your ~/.zshrc file. For example:
```
bindkey "^[[A" history-search-backward
```
4. ### Additional Plugins
* Explore additional plugins available for Oh My Zsh and other plugin managers to enhance your shell experience. You can find a list of plugins in the [Oh My Zsh Wiki](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins) or other plugin repositories.
5. ### Tips and Tricks:
* Take advantage of Zsh features such as globbing, brace expansion, and command substitution to write more efficient and concise shell scripts.
* Consider setting up a dotfiles repository to manage and version control your configuration files across different machines.
6. ### Backup and Version Control:
* Before making any changes to your configuration files, it's recommended to create a backup or commit your changes to a version control system like Git. This ensures you can easily revert changes if needed and keep track of your configuration history.


## More Info
### Troubleshooting
* If you encounter any issues during setup, the wiki page to this repository is still under development, so, as of now, google is your best friend for solutions or workarounds. Also, don't forget to RTFM.
### Contributing
* Contributions are welcome!
### License
* This project is licensed under the [MIT License](https://github.com/jcmspg/nvim-configs/blob/main/LICENSE.md). Make sure to read and understand the terms before using or modifying the configurations.
###
* For questions, feedback, or support, feel free to reach out 