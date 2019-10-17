"dein Scripts-----------------------------
" dein$B$,%$%s%9%H!<%k$5$l$k%G%#%l%/%H%j$N;XDj(B
let s:dein_dir = expand('~/.cache/dein') "<- dein $B$K$h$C$F%W%i%0%$%s$,%$%s%9%H!<%k$5$l$k%G%#%l%/%H%j(B ##########
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" dein$B$,%$%s%9%H!<%k$5$l$F$$$k$+$r%A%'%C%/(B $B%$%s%9%H!<%k$5$l$F$$$J$+$C$?$i(Bdein$B$r%@%&%s%m!<%I$7$F$/$k(B
if &runtimepath !~# '/dein.vim'
 if !isdirectory(s:dein_repo_dir)
 execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
 endif
 execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" dein$B$N5/F0(B
if dein#load_state(s:dein_dir)
 call dein#begin(s:dein_dir)

 " toml$B%U%!%$%k!J;HMQ$9$k%W%i%0%$%s$N%j%9%H$,5-=R$5$l$F$$$k%U%!%$%k!K$N>l=j$r;XDj(B
 let g:rc_dir = expand('~/.vim/dein') "<- dein.toml dein_lazy.toml $B$rFI$_9~$`%G%#%l%/%H%j(B ##########
 let s:toml = g:rc_dir . '/dein.toml'
 " let s:lazy_toml = g:rc_dir . '/dein_lazy.toml' "<- dein_lazy.toml $B$r;H$&>l9g$O%3%a%s%H2r=|(B ##########

 " toml$B%U%!%$%k$rFI$_9~$`(B
 call dein#load_toml(s:toml, {'lazy': 0})
 " call dein#load_toml(s:lazy_toml, {'lazy': 1}) "<- dein_lazy.toml $B$r;H$&>l9g$O%3%a%s%H2r=|(B ##########

 " $B@_Dj$N=*N;(B
 call dein#end()
 call dein#save_state()
endif

" $B%W%i%0%$%s$N%$%s%9%H!<%k$r%A%'%C%/(B $BL$%$%s%9%H!<%k$N%W%i%0%$%s$,$"$l$P%$%s%9%H!<%k$9$k(B
if dein#check_install()
 call dein#install()
endif
"End dein Scripts-------------------------

"neocomplete , neosnippet setting
if dein#tap('neocomplete.vim')
    " Vim$B5/F0;~$K(Bneocomplete$B$rM-8z$K$9$k(B
    let g:neocomplete#enable_at_startup = 1
    " smartcase$BM-8z2=(B. $BBgJ8;z$,F~NO$5$l$k$^$GBgJ8;z>.J8;z$N6hJL$rL5;k$9$k(B
    let g:neocomplete#enable_smart_case = 1
    " 3$BJ8;z0J>e$NC18l$KBP$7$FJd40$rM-8z$K$9$k(B
    let g:neocomplete#min_keyword_length = 3
    " $B6h@Z$jJ8;z$^$GJd40$9$k(B
    let g:neocomplete#enable_auto_delimiter = 1
    " 1$BJ8;zL\$NF~NO$+$iJd40$N%]%C%W%"%C%W$rI=<((B
    let g:neocomplete#auto_completion_start_length = 1
    " $B%P%C%/%9%Z!<%9$GJd40$N%]%C%W%"%C%W$rJD$8$k(B
    inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"
    "$B%(%s%?!<%-!<$GJd408uJd$N3NDj!#(B
    imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
    "$B%P%C%/%9%Z!<%9$GJd40$N%]%C%W%"%C%W$rJD$8$k(B
    imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"
endif

"$B%+%i!<%9%-!<%`(B
if dein#tap('molokai')
  syntax enable
  colorscheme molokai
  set t_Co =256
endif


"$B$=$NB>@_Dj(B
set number
set fenc=utf-8
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set cursorline
set virtualedit=onemore
set smartindent
set visualbell
set showmatch
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
noremap! <C-?> <C-h>
set expandtab
set tabstop=2
set shiftwidth=2
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
nnoremap <silent><C-e> :NERDTreeToggle<CR>


