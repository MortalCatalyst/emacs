
#Vim is used currently for my web xml and python needs.
#Emacs is used for Lisp which I am learning and enjoying.

## Vim
It covers Python and XML, Ruby and Rails
Generally meant for web dev and design.
 
*VAM* for plugin managment.

*EasyMotion* word command updated to avoid conflict 
> <space>c 

Change colour schemes - there is 1 day and 1 night theme by default
> <space>d

## NERDTree

I still use NERDTree but finding using buffers and tabs correctly in Vim has reduced that need.

> NERDTreeToggle ,m
> NERDTreeFind ,n

" Move between screens http://robots.thoughtbot.com/post/48275867281/vim-splits-move-faster-and-more-naturally
> nnoremap <C-J> <C-W><C-J>
> nnoremap <C-K> <C-W><C-K>
> nnoremap <C-L> <C-W><C-L>
> nnoremap <C-H> <C-W><C-H>"

*<F2>* and *<F3>* to toggle previous and next buffers
Though I find that *gt* does this just as effectively

These are the plugins used.
default directory ~/Documents/Notes

 notes you need to compile YCM
 * apt-get install cmake
 * apt-get install python-dev
 * cd ~
 * mkdir ycm_build
 * cd ycm_build
 * cmake -G "Unix Makefiles" . /home/sayth/.vim/vim-addons/YouCompleteMe/third_party/ycmd/cpp
 * make ycm_support_libs

W3m as browser
* google.com.au default homepage
* W3mCopyUrl will copy link to clipboard 'u' shows current link
* let g:w3m#lang = 'en_AU' is my region
matchit.zip vim-addon-commenting
perl
w3m
vim-django
vim-ruby
github:JuliaLang/julia-vim
rails
vim-airline
HTML_AutoCloseTag
Python-mode-klen
delimitMate 
The_NERD_tree
Emmet
Gundo
jinja
vim-autopep8
vim-ipython
EasyMotion
surround
Supertab
Syntastic
github:kien/ctrlp.vim
github:tpope/vim-fugitive
calmar256-lightdark
github:jmcomets/vim-pony
YouCompleteMe 
github:actionshrimp/vim-xpath
github:dirkk/vim-xquery-syntax
github:othree/html5.vim 
github:airblade/vim-gitgutter
github:gorodinskiy/vim-coloresque
github:cakebaker/scss-syntax.vim
github:flazz/vim-colorschemes
github:JulesWang/css.vim
github:plasticboy/vim-markdown
Buffergator 
github:maksimr/vim-jsbeautify


