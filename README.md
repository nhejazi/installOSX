# Fresh macOS
> Customization of fresh macOS (and formerly Mac OS X) installs with
> [Homebrew](http://brew.sh/).

[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

My set of customization scripts to configure macOS to my preferences after fresh
installs.

--

## Directions/Roadmap

First, install
[Xcode](https://itunes.apple.com/us/app/xcode/id497799835?mt=12) and then
[MacTeX](https://tug.org/mactex/downloading.html) -- __both manually__.

1. `git clone http://github.com/nhejazi/freshOSX.git ~/freshOSX`
2. `sh $(readlink -f freshOSX)/_getBrewCore.sh`
3. `sh $(readlink -f freshOSX)/_getMyVim.sh`
4. `sh $(readlink -f freshOSX)/_getCoreTools.sh`
5. `sh $(readlink -f freshOSX)/_getHammerspoon.sh`
6. `sh $(readlink -f freshOSX)/_getCoreLangs.sh`
7. `source ~/.bashrc ~/.bash_profile`
8. `rm -rf $(readlink -f freshOSX)`

### Manual Installation

* For a few tools lacking Homebrew support, manual installation is the easiest
  option. See `_getManually.md` for a working list of such tools.


### Updates with `brew`
```bash
brew update && brew upgrade
brew cleanup
```

---

## On Package Libraries

__N.B., package libraries for R, Python, Julia, and other tools I use may be set
up via scripts from [nhejazi/myPkgLib](https://github.com/nhejazi/myPkgLib).__

---

## License

&copy; 2016 [Nima Hejazi](http://nimahejazi.org)

This repository is licensed under the MIT license. See `LICENSE` for details.
