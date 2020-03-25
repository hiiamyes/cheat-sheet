# ASDF

Manage multiple runtime versions with a single CLI tool, extendable via plugins - docs at asdf-vm.com

asdf-vm is a CLI tool that can manage multiple language runtime versions on a per-project basis. It is like gvm, nvm, rbenv & pyenv (and more) all in one! Simply install your language's plugin!

https://asdf-vm.com/#/core-manage-asdf-vm

```
brew install asdf
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
```

## Python

https://github.com/danhper/asdf-python

```
brew uninstall python python3 pyenv python@3.8
asdf plugin-add python
asdf list python
asdf install python latest
asdf global python 3.6.2
```
