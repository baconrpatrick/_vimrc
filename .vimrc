
set nocompatible
set cmdheight=3
set history=100	" keep 50 lines of command line history
set hlsearch    " highlight searches
set ignorecase
set incsearch	" do incremental searching
set laststatus=2
set noeb
set novb
set number
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set showmatch
set smartcase
set clipboard=unnamed

" *********file navigation********
" inspired: https://www.youtube.com/watch?v=XA2WjJbmmoM
set wildmode=list:full
set wildmenu
set path+=** 

" ********************************

filetype plugin off
filetype plugin indent off
syntax on

" ****airline**********************

let g:airline#extensions#ale#enabled = 1
" enable list of buffers
let g:airline#extensions#tabline#enabled = 1
" show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'


" **********swap files*************
set directory^=$HOME/vimfiles/tmp_swp/


"-----------Formatting --------------------------------
" Formatting {
" set list "this is for showing the end of lines

set autoindent " indent at the same level of the previous line
set expandtab " tabs are spaces, not tabs
set pastetoggle=<F12> " pastetoggle (sane indentation on pastes)
set shiftwidth=4 " use indents of 4 spaces
set softtabstop=4 " let backspace delete indent
set tabstop=4 " an indentation every four columns
set wrap " wrap long lines



if has("unix")
    set t_Co=256
    set rtp+=~/.vim
endif

"colorscheme morning 
"colorscheme murphy
colorscheme murphy 
"colorscheme desert256
"----------file type ---------------------------------

autocmd FileType sql,pkb,pks,c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))


"----------Mappings-----------------------------------
" use space key for visual inner word selection
" http://learnvimscriptthehardway.stevelosh.com/chapters/03.html
"
"
let mapleader = "-"
map <space> viw
" proper case for Single word
"imap <BS> <ESC>j
" want to have standard behavior 
"
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>lc :let @*=@
nnoremap <leader>d :lcd %:p:h<CR>



"----------Abbreviations------------------------------
ab cformat# column col_1 format a30
ab constraint#  select <CR>* <CR>from <CR>all_constraints cons, <CR>all_cons_columns conc <CR>where <CR>1=1 <CR>and conc.table_name = '&table' <CR>and cons.owner = conc.owner <CR>and cons.table_name = conc.table_name <CR>and cons.constraint_name = conc.constraint_name
ab createt# CREATE TABLE SCOTT.DEPT1(<CR>DEPTNO NUMBER(2,0), <CR>DNAME VARCHAR2(14 BYTE), <CR>LOC VARCHAR2(13 BYTE), <CR>PRIMARY KEY (DEPTNO) <CR>USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 <CR>STORAGE(INITIAL 106496 NEXT 106496 MINEXTENTS 1 MAXEXTENTS 505 PCTINCREASE 100 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) <CR>TABLESPACE SYSTEM  ENABLE) <CR>SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 <CR>NOCOMPRESS LOGGING STORAGE(INITIAL 106496 NEXT 106496 MINEXTENTS 1 MAXEXTENTS 505 PCTINCREASE 100 FREELISTS 1 FREELIST GROUPS 1 <CR>BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE XXCMFG_DATA/
ab index#  select <CR>* <CR>from all_indexes ind, <CR>all_ind_columns icol <CR>where <CR>1=1 <CR>and ind.table_name = '&table' <CR>and ind.owner = icol.index_owner <CR>and ind.table_name = icol.table_name <CR>and ind.index_name = icol.index_name
ab meeting# ---------------------------------------------------------<CR>--      meeting notes                                  --<CR>--                                                     --<CR>--                                                     --<CR>---------------------------------------------------------<CR>
ab with# with t(a_col) <CR>as<CR>(select 'stuff' a_col from dual) <CR>select<CR> * <CR>from t



"-----------netrw file navigation settings------------
let g:netrw_altv          = 1
let g:netrw_fastbrowse    = 2
let g:netrw_keepdir       = 0
let g:netrw_liststyle     = 3
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1

"-----------Formatting --------------------------------
"

function! GetEnvVars()
    silent execute "normal! :return $\<C-a>')\<C-b>\<C-right>\<Right>\<Del>split('\<CR>"
endfunction
