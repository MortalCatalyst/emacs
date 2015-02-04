It covers Python and XML, Ruby and Rails
Generally meant for web dev and design.
 
VAM for plugin managment.

EasyMotion word command updated to avoid conflict 
<space>c 

Julia
* Added Julia language support

Added ruby_runner 
\r

Change colour schemes - there is 1 day and 1 night theme by default
<space>d

NERDTreeToggle ,m
NERDTreeFind ,n

" Move between screens http://robots.thoughtbot.com/post/48275867281/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>"

<F2> and <F3> to toggle previous and next buffers

These are the plugins used.
* Added Notes (https://github.com/xolox/vim-notes)
default directory ~/Documents/Notes

* matchit.zip vim-addon-commenting

* perl

* vim-airline

* HTML_AutoCloseTag

* Ultisnips with honza/vim-snippets(removed)
changed to YouCompleteMe 
 notes you need to compile YCM
 * apt-get install cmake
 * apt-get install python-dev
 * cd ~
 * mkdir ycm_build
 * cd ycm_build
 * cmake -G "Unix Makefiles" . /home/sayth/.vim/vim-addons/YouCompleteMe/third_party/ycmd/cpp
 * make ycm_support_libs

W3m added as browser
* google.com.au default homepage
* W3mCopyUrl will copy link to clipboard 'u' shows current link
* let g:w3m#lang = 'en_AU' is my region

* xpath 
 - :XPathSearchPrompt
 
* nimrod

* Python-mode-klen

* delimitMate

* Zenburn

* seoul256

* The_NERD_tree

* The_NERD_Commenter

* Emmet

* Ruby(vim-ruby)

* Rails rails.vim
This is kept a lot simpler than my preivious .vimrc's
