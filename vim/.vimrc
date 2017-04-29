
" line number
set number
set ruler

set expandtab
set tabstop=4  
set shiftwidth=4  
set autoindent  
set cindent  

set guifont=DejaVu\ Sans\ Mono\ 10

nmap <F7> :cn<cr>
nmap <F6> :cp<cr>

map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 

let Tlist_Show_One_File=1  
let Tlist_Exit_OnlyWindow=1  

set cscopequickfix=s-,c-,d-,i-,t-,e-

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompleteType="<C-X><C-O>"

let g:miniBufExplMapWindowNavVim = 1   
let g:miniBufExplMapWindowNavArrows = 1   
let g:miniBufExplMapCTabSwitchBufs = 1   
let g:miniBufExplModSelTarget = 1  
let g:miniBufExplMoreThanOne=0 

let g:NERDTree_title="[NERDTree]"  

function! NERDTree_Start()  
    exec 'NERDTree'  
endfunction  
  
function! NERDTree_IsValid()  
    return 1  
endfunction  
  
" ===== WinManager ====

" layout
let g:winManagerWindowLayout='NERDTree|TagList'  
let g:winManagerWidth=35

" key mapping
map wm :WMToggle<cr>  
"map <c-w><c-f> :FirstExplorerWindow<cr>  
"map <c-w><c-b> :BottomExplorerWindow<cr>  

set nocp
filetype plugin indent on
"set completeopt=longest,menu

