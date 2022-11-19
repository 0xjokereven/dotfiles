# Arch In Wsl

## Premise

### Install Arch Wsl In Your Computer

#### The general steps:

https://enderfga.cn/2021/11/26/wsl (How to install one wsl system in your computer)

https://cat.ms/posts/install-arch-wsl (Install arch on wsl)

tips: it's alos will meet some other problem don't worry find it's in google, most only a little problem.

#### some dot

1、network
i use v2rayn or clash as the vpn, and if i need to use the agency in wsl so i need to set the proxy, i have use one sh file to easy set my agency, and also i have set it's in my .zshrc, and i write one alias like `alias uset='unset all_proxy'` to unset my agency in that terminal.

```sh
#!/bin/sh

host_ip=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')

port=7890

PROXY_SOCK5="socks5://${host_ip}:${port}"

set_all_proxy(){
    export all_proxy="${PROXY_SOCK5}"
}

unset_proxy(){
    unset all_proxy
}

test_setting(){
    echo "all_proxy:" ${all_proxy}
}

if [ "$1" = "set" ]
then
    set_all_proxy

elif [ "$1" = "unset" ]
then
    unset_proxy

elif [ "$1" = "test" ]
then
    test_setting
else
    echo "Unsupported arguments."
fi
```

```sh
# network
host_ip=$(cat /etc/resolv.conf | grep nameserver | awk '{ print $2 }')
port=7890
PROXY_SOCK5="socks5://${host_ip}:${port}"
export all_proxy="${PROXY_SOCK5}"
```

2、network is the most import thing, and then i have set my development environment, i don't share how i do, i only write how i have.

```
Go: https://github.com/voidint/g
Node: https://github.com/nvm-sh/nvm
Python: i don't write python so much, use only default is so okay.
Java: i write the Java In my Windows
```

3、and then i think the shell is need to often to use, and i use the on my zsh.
```
you can find my on my zsh theme is steeef, i think i so will, and also you can share you on my zsh theme to me, thanks. i only use that some plugins of on my zsh, and you need to set on my zsh to do your default shell.
z: this plugins is like to easy cd to the history path
zsh-syntax-highlighting: is one highlighting plugins
zsh-autosuggestions: It suggests commands as you type based on history and completions.
it's only need to install two plugins git and z is default have no to install
plugins=(git z zsh-syntax-highlighting zsh-autosuggestions)

references:
https://github.com/zsh-users/zsh-autosuggestions
https://github.com/zsh-users/zsh-syntax-highlighting
```

4、vscode and neovim
- vscode

you can use code in you terminal and then it's will to install the vscode in your wsl, and first you need to install vscode in your windows computer, and then change the VSCODE_BIN in your .zshrc file. use vscode remote wsl  and also when you change the .zshrc file you also need to uset source .zshrc or sz (there have some acronym in my .zshrc also you can rename you wan't) to let your config to take effect

- neovim

i have install the neovim by https://github.com/ayamir/nvimdots, if your network have no problem you will okay. and you can see the wiki to install https://github.com/ayamir/nvimdots/wiki , you must to see https://github.com/ayamir/nvimdots/wiki/Prerequisites to install that.

- neovim problem

Please refer to [it](https://github.com/neovim/neovim/wiki/FAQ#how-to-use-the-windows-clipboard-from-wsl) and add win32yank.exe to your path.

Use Mason to Install StyLua
https://github.com/JohnnyMorganz/StyLua

Rename Your Host Name: in your /etc/wsl.confg

```sh
VSCODE_BIN="/mnt/d/install/Microsoft VS Code/bin"
```

```wsl.conf
[user]
default=robben

[network]
generateResolvConf=true
hostname=arch
```
#### peace respect
