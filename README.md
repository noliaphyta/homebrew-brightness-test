# brightness

Homebrew formulae to install brightness formula on Mac OS X
I had to* fork the original repo (https://github.com/nriley/brightness) to create a release that was updated.
I didn't change anything, it would be responsible to check I guess (https://github.com/noliaphyta/brightness)

I used this tutorial (https://publishing-project.rivendellweb.net/creating-and-running-your-own-homebrew-tap/)
The tap will load the instruction file (brightness-test.rb), tell homebrew to use the new release (https://github.com/noliaphyta/brightness/archive/refs/tags/0.0.1.tar.gz) to install brightness.

It worked for me on Ventura on a m1 pro.

## Installation steps

### Tap the repository
```
brew tap noliaphyta/brightness-test
```

### Install brightness
```
brew install brightness-test
```

### Uninstall brightness
```
brew uninstall brightness-test
brew untap noliaphyta/brightness-test
```

### If you are seeing errors:

It didn't work :(

## Known Issues
*I have no idea what I'm doing who knows what was necessary...

