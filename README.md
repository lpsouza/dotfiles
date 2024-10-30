# dotfiles

This repository contains my dotfiles. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage them.

__Note:__ This is a work in progress. I am still in the process of moving my dotfiles to this repository.

__Note (2):__ I am using Ubuntu 24.04 LTS. I am not sure if these dotfiles will work on other distributions.

## Installation

Clone this repository:

```sh
cd /path/to/your/dotfiles # My preference is ~/projects
git clone https://github.com/lpsouza/dotfiles.git
```

Install `stow`:

```sh
sudo apt install stow
```

Stow the `stow` configuration:

```sh
cd /path/to/your/dotfiles
stow -t ~/ stow
```
