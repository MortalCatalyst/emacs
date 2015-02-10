" put this line first in ~/.vimrc
set nocompatible | filetype indent plugin on | syn on

fun! SetupVAM()
  let c = get(g:, 'vim_addon_manager', {})
  let g:vim_addon_manager = c
  let c.plugin_root_dir = expand('$HOME', 1) . '/.vim/vim-addons'
  " most used options you may want to use:
  " let c.log_to_buf = 1
  " let c.auto_install = 0
  let &rtp.=(empty(&rtp)?'':',').c.plugin_root_dir.'/vim-addon-manager'
  if !isdirectory(c.plugin_root_dir.'/vim-addon-manager/autoload')
    execute '!git clone --depth=1 git://github.com/MarcWeber/vim-addon-manager '
        \       shellescape(c.plugin_root_dir.'/vim-addon-manager', 1)
  endif
  call vam#ActivateAddons([], {'auto_install' : 0})
endfun

call SetupVAM()
VAMActivate matchit.zip vim-addon-commenting
VAMActivate perl
VAMActivate w3m
VAMActivate vim-django
VAMActivate vim-ruby
VAMActivate github:JuliaLang/julia-vim
VAMActivate rails
VAMActivate vim-airline
VAMActivate HTML_AutoCloseTag
VAMActivate Python-mode-klen
VAMActivate delimitMate 
VAMActivate seoul256
VAMActivate The_NERD_tree
VAMActivate Emmet
VAMActivate Gundo
VAMActivate jinja
VAMActivate vim-autopep8
VAMActivate vim-ipython
VAMActivate EasyMotion
VAMActivate surround
VAMActivate notes
VAMActivate Supertab
VAMActivate Syntastic
VAMActivate github:kien/ctrlp.vim
VAMActivate github:tpope/vim-fugitive
VAMActivate calmar256-lightdark
VAMActivate YouCompleteMe 
VAMActivate github:dirkk/vim-xquery-syntax
VAMActivate github:actionshrimp/vim-xpath
VAMActivate github:othree/html5.vim 
VAMActivate github:airblade/vim-gitgutter
VAMActivate github:cakebaker/scss-syntax.vim
VAMActivate github:flazz/vim-colorschemes
VAMActivate github:plasticboy/vim-markdown
VAMActivate Buffergator 
VAMActivate github:maksimr/vim-jsbeautify
VAMActivate snipmate
VAMActivate github:tomtom/tcomment_vim

" PLugins current not used.
" VAMActivate Rubytest
" VAMActivate perlomni
" VAMActivate mojo
" VAMActivate css3
" VAMActivate css_color
" VAMActivate mojo
" VAMActivate nimrod
" VAMActivate The_NERD_Commenter
" VAMActivate genutils
" VAMActivate github:henrik/vim-ruby-runner
" VAMActivate Vdebug
"VAMActivate UltiSnips
" VAMActivate UnconditionalPaste
" VAMActivate vim-snippets

set t_Co=256
colorscheme flattr 

nnoremap <silent> <space>d :exec 'colorscheme' (g:colors_name ==# 'flattr') ? 'calmar256-light' : 'flattr'<CR>

set number
set foldmethod=indent
set foldlevel=99
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-Space>
set wildmenu
set wildmode=list:longest,full
set splitbelow
set splitright
set lines=50 columns=100

" Visual paste switch
" http://vim.wikia.com/wiki/Toggle_auto-indenting_for_code_paste
nnoremap <F4> :set invpaste paste?<CR>
set pastetoggle=<F4>
set showmode

" Great article https://danielmiessler.com/blog/enhancements-to-shell-and-vim-productivity/
inoremap zz <ESC>
" http://vim.wikia.com/wiki/Resize_splits_more_quickly
" /+ & /-
" nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>

" Beautify https://github.com/maksimr/vim-jsbeautify
map <c-f> :call JsBeautify()<cr>
  " or
autocmd FileType javascript noremap <buffer>  <c-f> :call JsBeautify()<cr>
  " for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
  " for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

autocmd FileType javascript vnoremap <buffer>  <c-f> :call RangeJsBeautify()<cr>
autocmd FileType html vnoremap <buffer> <c-f> :call RangeHtmlBeautify()<cr>
autocmd FileType css vnoremap <buffer> <c-f> :call RangeCSSBeautify()<cr> 
" Ctrlp
" let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'

" Using buffergator and CTRLP settings from this article https://joshldavis.com/2014/04/05/vim-tab-madness-buffers-vs-tabs/

" Setup some default ignores
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.(git|hg|svn)|\_site)$',
  \ 'file': '\v\.(exe|so|dll|class|png|jpg|jpeg)$',
\}

" Use the nearest .git directory as the cwd
" This makes a lot of sense if you are working on a project that is in version
" control. It also supports works with .svn, .hg, .bzr.
let g:ctrlp_working_path_mode = 'r'

" Use a leader instead of the actual named binding
nmap <leader>p :CtrlP<cr>

" Easy bindings for its various modes
nmap <leader>bb :CtrlPBuffer<cr>
nmap <leader>bm :CtrlPMixed<cr>
nmap <leader>bs :CtrlPMRU<cr>

" Use the right side of the screen
let g:buffergator_viewport_split_policy = 'R'

" I want my own keymappings...
let g:buffergator_suppress_keymaps = 1

" Looper buffers
"let g:buffergator_mru_cycle_loop = 1

" Go to the previous buffer open
nmap <leader>jj :BuffergatorMruCyclePrev<cr>

" Go to the next buffer open
nmap <leader>kk :BuffergatorMruCycleNext<cr>

" View the entire list of buffers open
nmap <leader>bl :BuffergatorOpen<cr>

" Shared bindings from Solution #1 from earlier
nmap <leader>T :enew<cr>
nmap <leader>bq :bp <BAR> bd #<cr>

" Fugitive
" :Gblame brings up an interactive vertical split with git blame output. Press
" enter on a line to edit the commit where the line changed, or o to open it
" in a split. When you're done, use :Gedit in the historic buffer to go back
" to the work tree version.
" :Glog loads all previous revisions of a file into the quickfix list so you
" can iterate over them and watch the file evolve!
" :Gstatus
" :Gcommit

"Notes
"let g:notesRoot = '~/Documents/Notes'
let g:notes_directories = ['~/Documents/Notes']

" YAML frontMatter
let g:vim_markdown_frontmatter=1
 
" vmap <C-c> "py
" nmap <C-c> "pyiw
" vmap <C-p> "pp
" nmap <C-p> "pP
" imap <C-p> <Esc>"ppa"

map <Space>c <Plug>(easymotion-w)
"map <leader>r :!ruby %<cr>

"add in end and jump into do, while, if etc on SHIFT + ENTER(not working)
" imap <S-CR>    <CR><CR>end<Esc>-cc

" w3m homepage
" reference https://github.com/yuratomo/w3m.vim
let g:w3m#homepage = "http://www.google.com.au"
let g:w3m#lang = 'en_AU'

" set window size
nmap <leader>1 :set lines=40 columns=85<CR><C-w>o
nmap <leader>2 :set lines=50 columns=171<CR><C-w>v

" plugin commands
" mepage = "http://www.google.co.
filetype plugin on
" filetype-indent-on
nnoremap <F6> :GundoToggle<CR>

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
" au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm set ft=jinja

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2

"Cycle buffers <F2> and <F3>
map <F2> :bprevious<CR>
map <F3> :bnext<CR>


let user_emmet_expandabbr_key = '<c-e>'
" Pymode
let g:pymode = 1
" let g:pymode_trim_whitespaces = 1
" let g:pymode_options = 1
" let g:pymode_quickfix_minheight = 3
" let g:pymode_quickfix_maxheight = 6
" let g:pymode_python = 'python3'
" map <leader>n :NERDTreeToggle<CR>
" de_python = 'python'
let g:NERDTreeWinPos = "left"
nmap ,n :NERDTreeFind<CR>
nmap ,m :NERDTreeToggle<CR>

" If I want Nerdtree to open automatically
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Move between screens
" http://robots.thoughtbot.com/post/48275867281/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"let mojo_disable_html = 1
"let mojo_highlight_data = 1
"filetype = perl

fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

" Jump to tag
nn <M-g> :call JumpToDef()<cr>
ino <M-g> <esc>:call JumpToDef()<cr>i

" airline
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" use buffers properly

"Stop delays in resolving ruby/jruby
let g:ruby_path=system('which --skip-tilde ruby')
" let g:syntastic_quiet_messages = 1
