# configs
User configuration files for UNIX environments





REQUIREMENTS FOR CONFIG FILES TO WORK


.VIMRC

Vim must have +clipboard, +xclipboard, +python, and -python3 to work with both system clipboard support and the YouCompleteMe plugin.
This configuration can be achieved by building vim from source by ...
1. Follow these instructions: https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source until the step where the 
    configuration script is run
2. Run ./configure --with-features=huge --enable-pythoninterp=yes
3. Run make
4. Run sudo make install OR sudo checkinstall
5. Then continue with the instructions from Valloric

