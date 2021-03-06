# ssh guide

Guide to ssh into a Linux system. My experience is from Mac to Ubuntu. If you are going from Windows you will need [putty](http://www.putty.org/). Linux to Linux should work very similar. To the best of my knowledge, there are no differences between different distros, but I could be wrong. 

Most everything should be contained in your `.ssh/` folder from your `$HOME` directory. If you are not familiar this, it would be in your `/Users/username/` folder on Mac or `/home/username/` folder on Ubuntu (Linux). The three main files are `authorized_keys`, `known_hosts`, `sshd_config`, and the `config` file on your Mac. Public keys get added to your `authorized_keys` file (as text). You can edit the `sshd_config` file to change many settings that you will need to make your computer safer and easier to use off ssh. 

Use the following links for your GitHub account!

1. [Get a key](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/)
2. [Add key to your account](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)

Then you should be good to go!

# Install Software on Host

```bash
# Must install software on host (Ubuntu machine)
sudo apt-get install openssh-client 
sudo apt-get install openssh-server
```

# check ssh

```bash
sudo service ssh status (host)
```

# restart ssh after installing or editing

```bash
sudo restart ssh (host)
sudo systemctl restart ssh
```

# Files to edit

```bash
vi sshd_config 
vi ssh_config 
```

# Steps to Success

***

Steps to success for Mac to Ubuntu ssh:

  1) `$ ssh-keygen -t rsa` (on host, Ubuntu)
  		* Enter passphrase (2x)

  2) change permissions, `$ chmod 600` for both private/public key (on host)

  3) add pubkey to authorized keys by just copy/paste with vi or any text editor (on host Ubuntu)
      * For this you should just be able to do `cat key_name.pub >> authorized_keys`
      
      ![authorized_keys file](/ssh_guide/authorized_keys.png?raw=true "authorized_keys file")

  4) add the `sshd_config` file (on host Ubuntu) to set your personal settings (there is much more safety you can add)
  		* PermitRootLogin no
  		* PubkeyAuthentication yes
  		* RSAAuthentication yes
  		* X11forwarding yes
  
      ![sshd_config](/ssh_guide/sshd_config.png?raw=true "sshd_config file")

  5) transfer private key (the one without the .pub on it) to remote Mac (the remote computer, can do via email or scp/rsync)

  6) set `$ chmod 600` for that key (on remote Mac, make it private, only you see for safety)

  7) `$ ssh-add key_name` on remote Mac (this should add this key to your list)

  8) Add key name to `config` file (on remote Mac)
  
      ![config](/ssh_guide/config.png?raw=true "config file")
  
  9) restart server ssh with `$ sudo service ssh restart` (on host Ubuntu)
  
  10) connect from Mac with `$ ssh -Y username@IPaddress` or use the hostname after `@`, either is 
  fine but the hostname should be more robust in case the IP changes
  
  11) optional but recommended: add to your `.bash_profile` to ssh quickly to the machine (on remote Mac)
  
      ![bash_profile](/ssh_guide/bash_profile.png?raw=true "bash_profile file")

***

