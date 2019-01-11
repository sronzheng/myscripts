"""""""""""""""
" vim basic
"""""""""""""""

" no compatible with vi
set nocompatible

"
" backup
"

" no backup files for buffers
set nobackup      

" no backup files for writing buffers
set nowritebackup 

" no swap file for buffers
set noswapfile    

"
" interactive
"
set shortmess=atI 

" no error bells for error actions
set noerrorbells  

" no visual bell for error actions 
set novisualbell  

" ask user to confirm upon exception 
set confirm

" command history length
set history=50    

" trigger select mode by mouse and keys
set selectmode=mouse,key 

" charactor under cusor is selected 
set selection=inclusive  

" auto read file if it is changed outside of VIM
set autoread      

" no auto write when leave the current buffer
set noautowrite   

"
" appearance
"

" color scheme
colorscheme torte

" wrap line if it is too long
set wrap          

" no cursor line for current line
set nocursorline  

" show line number 
set number        

" show cursor position on status line
set ruler         

" always status line for last window
set laststatus=2  

"
" layout
"

" show current commnd in command window
set showcmd       

" command window height in lines
set cmdheight=1   

" equal window size when splitting
set equalalways   

"
" edit 
"

" auto indent
set autoindent

" enable backspace
set backspace=indent,eol,start

" expand tab to spaces
set expandtab

" how many spaces 1 tab counts for
set tabstop=4  

" how many spaces 1 tab counts for while editing
set softtabstop=4

" indent width
set shiftwidth=4  

" character encoding 
set encoding=utf-8 

" popup menu and show preiview info when completion
set completeopt=menu,preview 


"
" search & subsitution
"

" enable magic mode
set magic          

" enable ignore case mode
set ignorecase

" enable smart case mode
set smartcase      

" increase search
set incsearch      

" high light search
set hlsearch       

" popup menu upon command-line completion 
set wildmenu

" always report changed lines
set report=0

" show matching bracket
set showmatch

" show time for matching
set matchtime=1

"
" advanced options
"

"let mapleader=","  " map leader character
"nnoremap <leader>w :w<cr>

" enable filetype detection, and plugin files, indent for file type
filetype plugin indent on

" enable syntax
syntax on


"""""""""""""""
" vim plugin 
"""""""""""""""

nmap <C-n> :cnext <CR>
nmap <C-p> :cprev <CR>

"===========
" cscope
"===========

nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>

set cscopequickfix=s-,c-,d-,i-,t-,e- 

cscope add cscope.out

"===========
" miniBufExplorer
"===========

let g:miniBufExplMapWindowNavVim=1
"let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplModeSelTarget=1
let g:miniBufExplMoreThanOne=0

"===========
" NERDTree
"===========
let g:NERDTree_title="[NERDTree]"

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
    return 1
endfunction

"===========
" Tag list
"===========

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
nmap <c-c> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"===========
" lookupfile
"===========

let g:LookupFile_MinPatLength=2
let g:LookupFile_PreservePattern=0
let g:LookupFile_PreservePatternHistory=1
let g:LookupFile_AlwaysAcceptFirst=1
let g:LookupFile_AllowNewFiles=0

nmap <silent> <leader>lk :LUTags<cr>
nmap <silent> <leader>ll :LUBufs<cr>
nmap <silent> <leader>lw :LUWalk<cr>

"===========
" winmanager
"===========

let g:winManagerWidth=35
let g:winManagerWindowLayout="NERDTree|TagList"
let g:persistentBehaviour=0

"nnoremap <c-w><c-f> :FirstExplorerWindow<cr>
"nnoremap <c-w><c-b> :BottomExplorerWindow<cr>
nmap <c-w><c-t> :WMToggle<cr>

"set tags=/home/ron/res/gstreamer-0.10.35/tags,/home/ron/res/gst-plugins-base-0.10.35/tags,/home/ron/res/gst-plugins-good-0.10.30/tags,/home/ron/res/gst-plugins-ugly-0.10.10/tags,/home/ron/res/gst-ffmpeg-0.10.10/tags

"cs add /home/ron/res/gstreamer-0.10.35/cscope.out

set path=./**
