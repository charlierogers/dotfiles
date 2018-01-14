# dotfiles
User configuration files for UNIX environments





## How to get started with my .vimrc file

1. Save my `.vimrc` into your home directory
2. Install [Vundle](https://github.com/VundleVim/Vundle.vim) by running `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim` from your home directory
3. Open the `.vimrc` in vim and then type `:PluginInstall` to install the plugins with Vundle
4. Set up the [YouCompleteMe](https://github.com/Valloric/YouCompleteMe) plugin (The following instructions for Linux only)
5. Make sure you have python 2 support in Vim by running `vim --version` and checking for `+python` and `-python3` in the version info
6. Make sure development tools and CMake are installed: `sudo apt-get install build-essential cmake`
7. Make sure you have Python headers installed: `sudo apt-get install python-dev python3-dev`
8. Save my `.ycm_extra_conf.py` into your home directory *(you can change the compilation flags in this file)*
9. Compile YouCompleteMe with options for your preferred languages
  
Compiling YCM with semantic support for C-family languages:
```
cd ~/.vim/bundle/YouCompleteMe
./install.py --clang-completer
```

Compiling YCM without semantic support for C-family languages:
```
cd ~/.vim/bundle/YouCompleteMe
./install.py
```

The following additional language support options are available:
- C# support: install [Mono](http://www.mono-project.com/docs/getting-started/install/linux/#debian-ubuntu-and-derivatives) and add `--omnisharp-completer` when calling `./install.py`.
- Go support: install [Go](https://golang.org/doc/install) and add `--gocode-completer` when calling `./install.py`.
- TypeScript support: install [Node.js and npm](https://docs.npmjs.com/getting-started/installing-node) then install the TypeScript SDK with `npm install -g typescript`.
- JavaScript support: install [Node.js and npm](https://docs.npmjs.com/getting-started/installing-node) and add `--tern-completer` when calling `./install.py`.
- Rust support: install [Rust](https://www.rust-lang.org/) and add `--racer-completer` when calling `./install.py`.

To simply compile with everything enabled, there's a `--all` flag. So, to install with all language features, ensure `xbuild`, `go`, `tsserver`, `node`, `npm`, `rustc`, and `cargo` tools are installed and in your `PATH`, then simply run:

```
cd ~/.vim/bundle/YouCompleteMe
./install.py --all
```
    
10. Once you restart vim you should be all set!


#### Note: Some Vim builds do not have the ability to use the system clipboard integration in my .vimrc. Here is how to fix that:

After running `vim --version`, Vim must have `+clipboard`, `+xclipboard`, `+python`, and `-python3` to work with both system clipboard support and the YouCompleteMe plugin.

This configuration can be achieved by building vim from source by ...

1. Following these instructions: https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source until the step where the configuration script is run
2. Run `./configure --with-features=huge --enable-pythoninterp=yes`
3. Then `make`
4. And finally `sudo make install` OR `sudo checkinstall`
5. Then continue with the other instructions

**OR**

Install the `vim-charlie.deb` package from this repo with 
```
sudo dpkg -i vim-charlie.deb
sudo apt-get install -f
```


