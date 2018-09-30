# Installing

First I need to install `brew` and using that install `neovim`, the latest python, `black` (a python formatter), `the_silver_searcher`, and `fzf`. Possibly `reattach-to-user-namespace`, too, but I'm not certain.

After that, I'll need to run the following:

    mkdir -p ~/.config
    cd ~/.config
    git clone https://github.com/evanepio/nvim-config.git
    nvim

In NeoVim, enter the following in Normal mode:

    :PlugInstall

Press `q` tp quit the plugin installation status window when it's finished.
