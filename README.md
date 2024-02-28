# Homebrew Tap for Free-Mac

This repository contains the Homebrew formula for `free-mac`, a command-line utility that brings the functionality of the Linux `free` command to macOS. `Free-mac` provides a concise display of memory usage, including total, used, and free memory, along with swap usage on macOS systems.

## How to Install Free-Mac

To install `free-mac` using Homebrew, you'll first need to tap this repository and then install the tool as follows:

### Tapping the Repository

Open your terminal and run the following command to add this tap to your Homebrew:

```bash
brew tap MohamedElashri/free-mac
```

Once the tap has been added, you can install free-mac by running:

```bash
brew install free-mac
```

After installation, you can run free-mac from your terminal to see an overview of your system's memory usage. The command provides a quick summary similar to the Linux free command.

```bash
free
```
This will display your system's memory and swap usage statistics in a simple, easy-to-read format.


### Updating Free-Mac

To update free-mac to the latest version, use:

```bash
brew update
brew upgrade free-mac
```

### Uninstalling Free-Mac

If you wish to uninstall free-mac, you can do so by running:


```bash
brew uninstall free-mac
```

## Contributing

Contributions to the free-mac formula are welcome! Please feel free to submit pull requests or file issues through GitHub to suggest improvements or report bugs.


