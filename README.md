Github on Git
=============

What is this?
-------------

Github on Git is a collection of custom ```git``` commands that allows the user to easily navigate to
certain Github pages of the repo (if it exists).

## Installation:

1. Clone this repo, prefferably in your $HOME directory.
``` git clone https://github.com/fteem/github-on-git ~/.github-on-git ```

2. Add the folder to your $PATH.
  * if using Bash, open ```~/.bashrc``` with your favourite editor and add this line: <br/> ``` export PATH=$PATH:$HOME/.github-on-git:$PATH ```
  * if using Zsh, open ```~/.zshrc``` with your favourite editor and add this line: <br/>  ``` export PATH=$PATH:$HOME/.github-on-git:$PATH ```

3. Save the file and source the changes in bashrc/zshrc: ```source ~/.bashrc``` or ```source ~/.zshrc```
4. Read below.

Usage
-----

There are 4 new ```git``` commands now.

```git wiki```    -> Opens the Github wiki page of the repo in browser.
```git pulls```   -> Opens the Github pull requests page of the repo in broswer.
```git issues```  -> Opens the Github issues page of the repo in broswer.
```git open```    -> Opens the Github repo page in browser.

