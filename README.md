# Git Commit Flooder

Not all of us commit code to public repositories everyday. All the commits we push to a work repository or a private repository goes doesn't show up on the your public profile's heatmap. This makes me sad because I want a nice commit heatmap.

## Why use this
Want your Github commit heatmap to look like this

![alt tag](https://raw.githubusercontent.com/chiochio/commit-flooder/master/happy-heat-map.png)

instead of this?

![alt tag](https://raw.githubusercontent.com/chiochio/commit-flooder/master/sad-heat-map.png)

## Installation instructions
Just clone this repo (via SSH) 
```
git clone git@github.com:chiochio/commit-flooder.git
```
and add these two lines to your `.bashrc` or `.zshrc` - basically any piece of code that runs upon the initialization of a new shell session. Replace `$REPO_LOCATION` with the path to this repository on your local disk.
```
# Git commit-flooder
(bash $REPO_LOCATION/commit-flooder/commit-flooder.sh > /dev/null 2>&1 &)
```
You'll want to make sure that you cloned the repository via SSH instead of HTTPS, then ensure that your Github SSH key is added loaded in your SSH-agent. (look [here](https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/) if you don't know what I'm talking about) This way, you can automagically push commits in the background each time you start a shell without being bothered by a username/password prompt.

## Result
You will push a commit to Github each time you open a new shell session.

## Dependencies
The `commit-flooder.sh` script calls `openssl rand -base64 32` to generate a random string. If your system doesn't have an OpenSSL installation and don't want to install it, you can use any other method you wish to generate random strings.
