# config-nvim
personal neovim lua config for projects development

1. Requirements
- The latest version of neovim (v0.70+)
- The package manager of packer.nvim

2. Setup
- Clone this repo into `~/.config/nvim`:
```shell
git clone git@github.com:shlyn/config-nvim.git ~/.config/nvim
```

2. Install plugins list
```shell
nvim +PackerSync
```

3. LSP support
This setup uses the modern LSP system for language support, 
things like auto-complete, symbols tree, etc..., 
which requires a LSP server outside the editor. Fortunately nvim-lspconfig manages to configure most of the LSP server options for us, all we need to do is to install the LSP servers themselves:

In lua/configs/autocomplete.lua, line 108, edit the list of LSP servers, a complete list of supported LSP servers is listed here. After that install the corresponding servers on your OS, auto-complete should pop up for supported languages now :)

4. smart highlighting using treesitter!
The default vim regex-based highlighting is pretty lame, for NVIM, treesitter offered an advanced code highlighting that can make your code much cleaner
You can use the :TSInstall <lang> command to install a parser for a language
Alternatively, in lua/configs/treesitter.lua, line 6, you can have a list of parsers that will be updated every time you use the :TSUpdate or :TSUpdateSync command (the latter is for synchronized updating), or you can just install all maintained parsers by uncommenting line 5 and commenting line 6

Usage
TODO: for now read lua/core/keymaps.lua for reference

Note that the config uses ; as the leader key by default, you can of course change it in lua/core/keymaps.lua, line 1
Most keymaps in this setup are what I call declarative keymaps, for example, everything related to terminal emulator starts with ;t, so ;tt means "terminal toggle", and ;tn means "terminal new"
Btw, tryout ;lb in files with LSP support, it's really fancy!

Contributing
Having troubles
If you have issues while installing or using my this setup, report an issue,
don't just DM me on social media because others may run into the same problem and they can use the existing issues as a reference
Discussions could be in either English or Chinese, although English is preferred

Adding more things
For now, you don't, this is my personal config, although do leave suggestions if you have any.

