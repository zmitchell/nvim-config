"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/zmitchell/.config/nvim/bundle/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/zmitchell/.config/nvim/bundle')
  call dein#begin('/Users/zmitchell/.config/nvim/bundle')

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
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
