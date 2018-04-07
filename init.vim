"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/zmitchell/.config/nvim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/zmitchell/.config/nvim/bundle')
  call dein#begin('/Users/zmitchell/.config/nvim/bundle')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('vim-syntastic/syntastic')
  call dein#add('rust-lang/rust.vim')
  call dein#add('sebastianmarkow/deoplete-rust')
  call dein#add('zchee/deoplete-jedi')
  call dein#add('sheerun/vim-polyglot')
  " Color schemes
  call dein#add('arcticicestudio/nord-vim')
  call dein#add('joshdick/onedark.vim')
  call dein#add('kristijanhusak/vim-hybrid-material')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/zmitchell/.config/nvim/bundle/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': 'a1b5108fd' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" deoplete settings
let g:deoplete#enable_at_startup = 1

" deoplete-rust settings
let g:deoplete#sources#rust#racer_binary='/Users/zmitchell/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/Users/zmitchell/projects/rust-src/rust/src'

" syntastic settings ---------------------------------------------------------
"
" These are the defaults recommended by the authors
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']

" Color scheme settings ------------------------------------------------------
set termguicolors
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_comment_brightness = 15
let g:enable_bold_font = 1
let g:enable_italic_font = 1
set background=dark
"colorscheme nord
colorscheme hybrid_material

" Other settings -------------------------------------------------------------

" Set the size of the tab character in units of spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab

" Keep a minimum of some number of lines at the bottom of the screen so that
" you aren't always looking at the bottom of the screen.
set scrolloff=10

" Set incremental search and highlighting, which basically allows you
" to see the matches in a search as you type
set incsearch
set hlsearch

" Show the line and column number at the bottom of the screen
set ruler

" Show line numbers in the gutter
set nu

