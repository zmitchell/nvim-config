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

" syntastic settings
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

