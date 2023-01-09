# Linux

This page will hopefully include helpful Unix/Linux scripts for 
animal breeders and data analysts. 

## vim editor

vim is a command line text editor. You can alter the `~/.vimrc` file with all sorts of options to make vim custom to your liking. 

I suggest a few of the following:

```vim

" comment: turn on syntax
syntax on
set t_Co=256

" comment: turn numbers on (to quickly navigate in vim)
set number

" comment: set color scheme
colorscheme desert

" comment: turn on visual bell instead of annoying beep
set visualbell

" comment: set ruller
set ruler

" comment: set tab
set shiftwidth=4
set tabstop=4

" comment: highlight current line in insert mode
autocmd InsertEnter,InsertLeave *set cul!

```

My full `.vimrc` file is attached. Just place it in your HOME directory (`~/`) and put a period on the front of it to make it hidden on Mac or Linux. 

## ssh guide

This guide should help new users with ssh. SSH stands for secure shell protocol. 
It's a way for us to interact and use remote computers. We can either ssh into a 
remote server or use ssh to transfer files via scp for instance. 

You should learn about private and public keys, so please do some self reading on those first.
![Learn SSH](https://en.wikipedia.org/wiki/Secure_Shell) 

## File Extension Highlighting

This will highlight certain file extensions certain colors. You can add or change your own in the script. 

![](/Screenshots/dir_colors_screenshot.png)

## gnuplot

This is Linux's plotting system using space or tab delimited files. I haven't used it much, but it can be very handy. You don't need to load data into R to get a quick plot. 




