# ssh guide

Guide to ssh on Linux. 


## Commands

```bash
vi sshd_config 
vi ssh_config 
```

# restart ssh after installing or editing

```bash
sudo restart ssh (host)
sudo systemctl restart ssh
```

# check ssh

```bash
sudo service ssh status (host)
```

## Install Software on Host

```bash
# Must install software on host (Ubuntu machine)
sudo apt-get install openSSH-client 
sudo apt-get install openSSH-server
```

## Steps to Success

Steps to success for Mac to Ubuntu ssh:

  1) `$ ssh-keygen -t rsa` (on host, Ubuntu)
  		* Enter passphrase (2x)

  2) change permissions, `$ chmod 600` for both private/public key (on host)

  3) add pubkey to authorized keys by just copy/paste with vi or any text editor (on host)

  4) add "sshd_config" file (on host)
  		* PermitRootLogin no
  		* PubkeyAuthentication yes
  		* RSAAuthentication yes
  		* X11forwarding yes

  5) transfer private key to Mac (to remote, email)

  6) set `$ chmod 600` for that key (on remote, make it private)

  7) `$ ssh-add key_name` on Mac (remote?)

  8) Add key name to config file (on remote)

  9) restart server ssh with `$ sudo service ssh restart` (on host)
  
  10) connect from Mac with `$ ssh -Y username@IPaddress` or use the hostname after @

