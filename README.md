# foliate

Homebrew formulae to install zathura and plugins on Mac OS X

## Installation steps

### Tap the repository
```
brew tap noliaphyta/foliate-test
```

### Install zathura
```
brew install foliate
```

### plugins?

### OSX_native_integration

The OSX native integration (dock, window manager) has been added to the develop branch of zathura.
You can install it by
```
# unlink installed zathura and girara
brew unlink foliate

# install HEAD
brew install foliate --HEAD
mkdir -p $(brew --prefix foliate)/lib/foliate
ln?
```

### Copying to clipboard
Add the following to your `~/.config/foliate?`:
```
set selection-clipboard clipboard
```

### If you are seeing errors like this:

It didn't work :(

## Known Issues
I have no idea what I'm doing
