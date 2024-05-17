set nocompatible
set belloff=all
set cmdheight=4
set history=200	
set hlsearch   
set ignorecase
set incsearch
set laststatus=2
set noeb
set novb
set number
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set showmatch
set smartcase
set signcolumn=yes


" start time issue with new laptop

set viminfo+=nJ/viminfo
set foldmethod=manual 



"set spell spelllang=en_us

" *********file navigation********
" inspired: https://www.youtube.com/watch?v=XA2WjJbmmoM
set wildmode=longest:full,full
set wildmenu
set path+=** 
set guifont=Consolas:h11
set matchpairs=<:>,(:),[:],{:},«:»,𝄆:𝄇,👉:👈,🕻:🕽,🖙:🖘,🖛:🖚,🖝:🖜,🗦:🗧,🙬:🙮,🤜:🤛,‘:’,“:”,‹:›,⁅:⁆,⁌:⁍,⁽:⁾,₍:₎,⊣:⊢,⋉:⋊,⌈:⌉,⌊:⌋,〈:〉,⎛:⎞,⎜:⎟,⎝:⎠,⎡:⎤,⎢:⎥,⎣:⎦,⎧:⎫,⎨:⎬,⎩:⎭,⏪:⏩,⏮:⏭,⏴:⏵,◀:▶,◁:▷,◂:▸,◃:▹,◄:►,◅:▻,☛:☚,☞:☜,⚟:⚞,❨:❩,❪:❫,❬:❭,❮:❯,❰:❱,❲:❳,❴:❵,⟅:⟆,⟕:⟖,⟞:⟝,⟢:⟣,⟤:⟥,⟦:⟧,⟨:⟩,⟪:⟫,⟬:⟭,⟮:⟯,⥼:⥽,⦃:⦄,⦅:⦆,⦇:⦈,⦉:⦊,⦋:⦌,⦍:⦐,⦏:⦎,⦑:⦒,⦗:⦘,⧘:⧙,⧚:⧛,⧼:⧽,⫍:⫎,⯇:⯈,⸂:⸃,⸄:⸅,⸉:⸊,⸌:⸍,⸜:⸝,⸠:⸡,⸦:⸧,⸨:⸩,⸶:⸷,⹑:⹐,⹕:⹖,⹗:⹘,〈:〉,《:》,「:」,『:』,【:】,〔:〕,〖:〗,〘:〙,〚:〛,꧁:꧂,﴾:﴿,︵:︶,︷:︸,︹:︺,︻:︼,︽:︾,︿:﹀,﹁:﹂,﹃:﹄,﹇:﹈,﹙:﹚,﹛:﹜,﹝:﹞,（:）,［:］,｛:｝,｟:｠,｢:｣

" *********gui   *****************
if has('gui')
    set guioptions -=m
    set guioptions -=T
endif
" ********************************

filetype plugin indent on
syntax on
"set comments=l:--

" ********************************

set undofile
set undolevels=5000
set undodir=J:/vimfiles/undodir/

"-----------SQL Utilities------------------------------

let g:sql_type_default = 'sqltsql'
let g:sqlutil_keyword_case = '\U'
let g:sqlutil_align_comma = 1

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

"-----------backup setting - swap files----------------
"
"
set backupdir=J:/vim_temp//,.
set directory=J:/vim_temp//,.

"-----------colorschemes ------------------------------

"colorscheme morning 
"colorscheme murphy
colorscheme desert
"colorscheme solarized

"----------file type ---------------------------------

autocmd FileType sql,pkb,pks,c,cpp,java,php,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))


"----------Mappings-----------------------------------
" use space key for visual inner word selection
" http://learnvimscriptthehardway.stevelosh.com/chapters/03.html

let mapleader = "-"
" menus 
nnoremap <leader>le :Lexplore<CR>
" show marks
nnoremap <leader>sm :DoShowMarks<CR>
" vimrc 
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
noremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>wv :silent! w! "C:/Program Files/Vim/_vimrc"<CR>:silent! w! C:/Users/pbacon/_vimrc<CR>:silent! w! J:/_vimrc<CR>:silent! w! J:/vimfiles/_vimrc<CR>:silent! w! J:/git_vimrc_github/_vimrc/_vimrc<CR> 
nnoremap <leader>wg :silent! w! "C:\Program Files\Vim\_gvimrc"<CR>:silent! w! C:\Users\pbacon\_gvimrc<CR>:silent! w! J:\_gvimrc<CR>:silent! w! J:/vimfiles/_gvimrc<CR>:silent! w! J:/git_vimrc_github/_vimrc/_gvimrc<CR>  
" registers 
nnoremap <leader>lr :let @*=@
" sql 
" nnoremap <leader>fs :'{,'}SQLUFormatter<CR>
nnoremap <leader>fs :'(,')SQLUFormatter<CR>
noremap<leader>ks :%s/\<add\>\\|\<all\>\\|\<alter\>\\|\<and\>\\|\<any\>\\|\<as\>\\|\<asc\>\\|\<authorization\>\\|\<backup\>\\|\<begin\>\\|\<between\>\\|\<break\>\\|\<browse\>\\|\<bulk\>\\|\<by\>\\|\<cascade\>\\|\<case\>\\|\<check\>\\|\<checkpoint\>\\|\<close\>\\|\<clustered\>\\|\<coalesce\>\\|\<collate\>\\|\<column\>\\|\<commit\>\\|\<compute\>\\|\<constraint\>\\|\<contains\>\\|\<containstable\>\\|\<continue\>\\|\<convert\>\\|\<create\>\\|\<cross\>\\|\<current\>\\|\<current_date\>\\|\<current_time\>\\|\<current_timestamp\>\\|\<current_user\>\\|\<cursor\>\\|\<database\>\\|\<dbcc\>\\|\<deallocate\>\\|\<declare\>\\|\<default\>\\|\<delete\>\\|\<deny\>\\|\<desc\>\\|\<disk\>\\|\<distinct\>\\|\<distributed\>\\|\<double\>\\|\<drop\>\\|\<dump\>\\|\<else\>\\|\<end\>\\|\<errlvl\>\\|\<escape\>\\|\<except\>\\|\<exec\>\\|\<execute\>\\|\<exists\>\\|\<exit\>\\|\<external\>\\|\<fetch\>\\|\<file\>\\|\<fillfactor\>\\|\<for\>\\|\<foreign\>\\|\<freetext\>\\|\<freetexttable\>\\|\<from\>\\|\<full\>\\|\<function\>\\|\<goto\>\\|\<grant\>\\|\<group\>\\|\<having\>\\|\<holdlock\>\\|\<identity\>\\|\<identitycol\>\\|\<identity_insert\>\\|\<if\>\\|\<in\>\\|\<index\>\\|\<inner\>\\|\<insert\>\\|\<intersect\>\\|\<into\>\\|\<is\>\\|\<join\>\\|\<key\>\\|\<kill\>\\|\<left\>\\|\<like\>\\|\<lineno\>\\|\<load\>\\|\<merge\>\\|\<national\>\\|\<nocheck\>\\|\<nonclustered\>\\|\<not\>\\|\<null\>\\|\<nullif\>\\|\<of\>\\|\<off\>\\|\<offsets\>\\|\<on\>\\|\<open\>\\|\<opendatasource\>\\|\<openquery\>\\|\<openrowset\>\\|\<openxml\>\\|\<option\>\\|\<or\>\\|\<order\>\\|\<outer\>\\|\<over\>\\|\<percent\>\\|\<pivot\>\\|\<plan\>\\|\<precision\>\\|\<primary\>\\|\<print\>\\|\<proc\>\\|\<procedure\>\\|\<public\>\\|\<raiserror\>\\|\<read\>\\|\<readtext\>\\|\<reconfigure\>\\|\<references\>\\|\<replication\>\\|\<restore\>\\|\<restrict\>\\|\<return\>\\|\<revert\>\\|\<revoke\>\\|\<right\>\\|\<rollback\>\\|\<rowcount\>\\|\<rowguidcol\>\\|\<rule\>\\|\<save\>\\|\<schema\>\\|\<securityaudit\>\\|\<select\>\\|\<semantickeyphrasetable\>\\|\<semanticsimilaritydetailstable\>\\|\<semanticsimilaritytable\>\\|\<session_user\>\\|\<set\>\\|\<setuser\>\\|\<shutdown\>\\|\<some\>\\|\<statistics\>\\|\<system_user\>\\|\<table\>\\|\<tablesample\>\\|\<textsize\>\\|\<then\>\\|\<to\>\\|\<top\>\\|\<tran\>\\|\<transaction\>\\|\<trigger\>\\|\<truncate\>\\|\<try_convert\>\\|\<tsequal\>\\|\<union\>\\|\<unique\>\\|\<unpivot\>\\|\<update\>\\|\<updatetext\>\\|\<use\>\\|\<user\>\\|\<values\>\\|\<varying\>\\|\<view\>\\|\<waitfor\>\\|\<when\>\\|\<where\>\\|\<while\>\\|\<with\>\\|\<withingroup\>\\|\<writetext\>\\|\<abs\>\\|\<ascii\>\\|\<avg\>\\|\<case\>\\|\<cast\>\\|\<ceiling\>\\|\<char\>\\|\<charindex\>\\|\<coalesce\>\\|\<concat\>\\|\<convert\>\\|\<count\>\\|\<current_timestamp\>\\|\<current_user\>\\|\<datalength\>\\|\<dateadd\>\\|\<datediff\>\\|\<datename\>\\|\<datepart\>\\|\<day\>\\|\<floor\>\\|\<getdate\>\\|\<getutcdate\>\\|\<iif\>\\|\<isdate\>\\|\<isnull\>\\|\<isnumeric\>\\|\<lag\>\\|\<lead\>\\|\<left\>\\|\<len\>\\|\<lower\>\\|\<ltrim\>\\|\<max\>\\|\<min\>\\|\<month\>\\|\<nchar\>\\|\<nullif\>\\|\<patindex\>\\|\<rand\>\\|\<replace\>\\|\<right\>\\|\<round\>\\|\<rtrim\>\\|\<session_user\>\\|\<sessionproperty\>\\|\<sign\>\\|\<space\>\\|\<str\>\\|\<stuff\>\\|\<substring\>\\|\<sum\>\\|\<system_user\>\\|\<try_cast\>\\|\<try_convert\>\\|\<upper\>\\|\<user_name\>\\|\<year\>/\U&/g<CR>:nohls<CR>

nnoremap <leader>ps :!J:\cmd\cmd_python\sql_parse.py<CR>e<CR>

" formatting
" nnoremap <leader>lc :'{,'}s/\u/\l&/g<CR>
" nnoremap <leader>uc :'{,'}s/\l/\u&/g<CR>

nnoremap <leader>p :'(,')
nnoremap <leader>lc :'(,')s/\u/\l&/g<CR>
nnoremap <leader>uc :'(,')s/\l/\u&/g<CR>

"----------Abbreviations------------------------------
ab cformat# column col_1 format a30
ab constraint#  select <CR>* <CR>from <CR>all_constraints cons, <CR>all_cons_columns conc <CR>where <CR>1=1 <CR>and conc.table_name = '&table' <CR>and cons.owner = conc.owner <CR>and cons.table_name = conc.table_name <CR>and cons.constraint_name = conc.constraint_name
ab createt# CREATE TABLE SCOTT.DEPT1(<CR>DEPTNO NUMBER(2,0), <CR>DNAME VARCHAR2(14 BYTE), <CR>LOC VARCHAR2(13 BYTE), <CR>PRIMARY KEY (DEPTNO) <CR>USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 <CR>STORAGE(INITIAL 106496 NEXT 106496 MINEXTENTS 1 MAXEXTENTS 505 PCTINCREASE 100 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) <CR>TABLESPACE SYSTEM  ENABLE) <CR>SEGMENT CREATION IMMEDIATE PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 <CR>NOCOMPRESS LOGGING STORAGE(INITIAL 106496 NEXT 106496 MINEXTENTS 1 MAXEXTENTS 505 PCTINCREASE 100 FREELISTS 1 FREELIST GROUPS 1 <CR>BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT) TABLESPACE XXCMFG_DATA/
ab index#  select <CR>* <CR>from all_indexes ind, <CR>all_ind_columns icol <CR>where <CR>1=1 <CR>and ind.table_name = '&table' <CR>and ind.owner = icol.index_owner <CR>and ind.table_name = icol.table_name <CR>and ind.index_name = icol.index_name
ab notes# ---------------------------------------------------------<CR>--              notes                                  --<CR>--                                                     --<CR>--                                                     --<CR>---------------------------------------------------------<CR>
ab off# order by 1 desc offset 0 rows fetch first 50 rows only;

"-----------netrw file navigation settings------------
let g:netrw_altv          = 1
"let g:netrw_browse_split  = 2
let g:netrw_fastbrowse    = 1
let g:netrw_keepdir       = 0
let g:netrw_liststyle     = 3
let g:netrw_retmap        = 1
let g:netrw_silent        = 1
let g:netrw_special_syntax= 1
let g:netrw_winsize       = 20

"------lsp  ale setting ------------------------------
" see: https://github.com/dense-analysis/ale

"let g:ale_lint_on_save = 1
"let g:ale_linters = {'sql': ['sqlint']}
"let g:ale_fixers = {'sql': ['sqlfmt']}
"let g:ale_linters_explicit = 1
"let g:ale_sign_column_always = 1
"let g:ale_sign_error = '>>'
"let g:ale_sign_warning = '--'
"let g:ale_lint_on_text_changed = 'never'
"
"highlight clear ALEErrorSign
"highlight clear ALEWarningSign


"-----airline settings --------------------------------


" enable experimental features >
" Currently: Enable Vim9 Script implementation
let g:airline_experimental = 1


"let g:airline#extensions#ale#enabled = 1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'

"Fonts for the Status Line
let g:airline_powerline_fonts = 0
"Unicode symbols for the Status Line
" the separator used on the left side
let g:airline_left_sep='>'
" the separator used on the right side 
let g:airline_right_sep='<'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"-----------ms windows check---------------------------

if !has("unix") 
   behave mswin
endif

"-----------package manager----------------------------
"most of my plugins have been placed in \pack\baconp\start\
"  https://github.com/k-takata/minpac

packadd! matchit

"packadd minpac
"call minpac#init()
" minpac must have {'type': 'opt'} so that it can be loaded with `packadd`.
"call minpac#add('k-takata/minpac', {'type': 'opt'})
"call minpac#add('vim-jp/syntax-vim-ex')
"call minpac#add('vim-airline/vim-airline')
"noticed that I need to be careful about dependencies


"-----------function-----------------------------------

set diffexpr=MyDiff()

 function MyDiff()
   let opt = '-a --binary '
   if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
   if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
   let arg1 = v:fname_in
   if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
   let arg2 = v:fname_new
   if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
   let arg3 = v:fname_out
   if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
   if $VIMRUNTIME =~ ' '
     if &sh =~ '\<cmd'
       if empty(&shellxquote)
         let l:shxq_sav = ''
         set shellxquote&
       endif
       let cmd = '"' . $VIMRUNTIME . '\diff"'
     else
       let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
     endif
   else
     let cmd = $VIMRUNTIME . '\diff'
   endif
   silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
   if exists('l:shxq_sav')
     let &shellxquote=l:shxq_sav
   endif
 endfunction

"-----------function-----------------------------------

function! GetEnvVars()
    silent execute "normal! :return $\<C-a>')\<C-b>\<C-right>\<Right>\<Del>split('\<CR>"
endfunction



