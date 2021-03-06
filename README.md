[![](https://img.shields.io/badge/emacs-config-brightgreen.svg)](https://github.com/maheshm/dotemacs)


# Usage

This config uses [use-package](https://github.com/jwiegley/use-package).
It will take care of fetching and installing all the packages on first load and byte-compiling them.
Hence starting emacs for the first time will take some time, but the later ones should be blazing fast.

Clone this repo in `~/.emacs.d` and make sure you install the submodules:

```sh
git clone --recursive git@github.com:maheshm/dotemacs.git ~/.emacs.d
```

Now just open emacs and `use-package` will install all packages and byte-compile them.


# Dependencies

1. **Font** : The font I use is [Fira Code](https://github.com/tonsky/FiraCode).
   Make sure it is installed on your system.
   Otherwise emacs will throw an error on startup.
   If you prefer to use some other font, change it [here](/config/theme-font-config.el).
   Ligatures are configured [here](/config/fira-code-setup.el) - comment the entire thing out
   if you plan not to use Fira-code.


2. **rgrep**: `rg` is used for code searching. More about `rgrep` and installation instructions are
   [here](https://github.com/BurntSushi/ripgrep).
   Invoke it using `M-x rg` more info - [rg.el](https://github.com/Wilfred/ag.el).


# Update packages

`use-package` uses emacs' inbuilt [package.el](http://wikemacs.org/wiki/Package.el).
So upgrading is just telling package.el to upgrade all packages.

* Open the list of package - `M-x package-list-packages`

* Mark packages for upgrading - `U`

* Install updates - `x` - confirm - `y (yes)`

Git submodules (use-package itself and reason-mode) can be updated by running

```sh
git submodule update --remote
```


# Credits

My config has most of it taken from https://github.com/tejasbubane/dotemacs which has bits and pieces taken from these resources:

* The brilliant README `use-package` has got:
https://github.com/jwiegley/use-package/blob/master/README.md

* Mastering emacs' post on use-package:
https://www.masteringemacs.org/article/spotlight-use-package-a-declarative-configuration-tool

* Ruby and Rails:
http://crypt.codemancers.com/posts/2013-09-26-setting-up-emacs-as-development-environment-on-osx/

* General config (Theme, font, window-config, etc):
https://github.com/larstvei/dot-emacs

* Prathamesh's dotemacs:
https://github.com/prathamesh-sonpatki/dotemacs
