""""""""""""""""""""""""""""""""""""""""""
" Neovim Config
""""""""""""""""""""""""""""""""""""""""""
" 2021/06


" display index number
set number

" indent and tab
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab
set list

" share clipboard
set hlsearch
set ignorecase
set smartcase
set incsearch

" display cursor position
set ruler

" enable mouse
set mouse=a

" enable syntax highlight
syntax on

" Encoding
set encoding=utf-8

" highlight the current line
set cursorline

" use system clipboard
set clipboard+=unnamedplus

" permanent undo
set undodir=~/.vimdid
set undofile

"""""""""""""""""""""""""""""""""""""""""
" Key Mapping
"""""""""""""""""""""""""""""""""""""""""
imap ( ()<left>
imap [ []<left>
imap { {}<left>
" imap < <><left>

" Terminal mode
tnoremap <Esc> <C-\><C-n>
" alt + hjkl to move
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l 



""""""""""""""""""""""""""""""""""""""""""
" Dein.vim Config
""""""""""""""""""""""""""""""""""""""""""
" from: https://github.com/Shougo/dein.vim

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/hmiya/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/hmiya/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/hmiya/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" THEMES
call dein#add('pineapplegiant/spaceduck')

" PLUGINS
call dein#add('sheerun/vim-polyglot')
call dein#add('neoclide/coc.nvim')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
call dein#add('ap/vim-css-color')
call dein#add('rust-lang/rust.vim')
call dein#add('mhinz/vim-startify')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable
set background=dark
colorscheme spaceduck
" make comment readable when spaceduck
highlight Comment ctermfg=245

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

""""""""""""""""""""""""""""""""""""""""
" Coc.nvim Settings
""""""""""""""""""""""""""""""""""""""""

" TextEdit might fail if hidden is not set
set hidden

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

"""""""""""""""""""""""""""""""""""""""
" Vim Airline 
"""""""""""""""""""""""""""""""""""""""
" Themes
" let g:airline_theme = 'ayu_mirage'
" let g:airline_theme = 'badwolf'
" let g:airline_theme = 'night_owl'
" let g:airline_theme = 'onedark'
" let g:airline_theme = 'tomorrow'
let g:airline_theme = 'hybridline'
" Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#ignore_bufadd_pat = 'defx|gundo|nerd_tree|startify|tagbar|undotree|vimfiler'

