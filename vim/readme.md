
 +clipboard?
Vim requires the +clipboard feature flag for any of this to work; you can check if your Vim has this by using :echo has('clipboard') from within Vim (if the output is 0, it not present, if it's 1, it is), or checking the output of vim --version.

Most Linux distributions ship with a "minimal" Vim build by default, which doesn't have +clipboard, but you can usually install it:

Debian & Ubuntu: Install vim-gtk or vim-gnome.
Fedora: install vim-X11, and run vimx instead of vim (more info).
Arch Linux: install gvim (this will enable +clipboard for normal vim as well).k
