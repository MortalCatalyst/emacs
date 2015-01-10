Emacs on Ubuntu using graphene

Need 24.4 http://askubuntu.com/a/546050/25659
check for latest version http://mirror.team-cymru.org/gnu/emacs/

cd ~
mkdir emacs-src && cd emacs-src
wget http://mirror.team-cymru.org/gnu/emacs/emacs-24.4.tar.gz
tar xvf emacs-24.4.tar.gz

Now, you want to compile the Emacs binary.

sudo apt-get install build-essential
sudo apt-get build-dep emacs24
cd emacs-24.4
./configure
make
sudo make install

Packages
Speedbar
http://www.emacswiki.org/emacs/SrSpeedbar

Cask
http://cask.readthedocs.org/en/latest/guide/installation.html

Pallet
https://github.com/rdallasgray/pallet

Magit
https://magit.github.io/documentation.html

FlySpell
http://www.emacswiki.org/emacs/FlySpell#toc7

Org Org-journal
http://www.emacswiki.org/emacs/OrgJournal

Slime user manual
http://common-lisp.net/project/slime/doc/html/Input-Navigation.html


