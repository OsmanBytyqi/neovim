"    ___  ____
"   / _ \| __ )  Osman Bytyqi
"  | | | |  _ \  https://github.com/OsmanBytyqi
"  | |_| | |_) | https://www.linkedin.com/in/osman-bytyqi-bb6ba31b9/
"   \___/|____/
"



lua require ('settings')
lua require ('plugins')
lua require ('color-schemes.gruvbox')
lua require ('nvim-tree-config')
lua require ('mapps')
lua require ('plugins')
lua require ('toggle-vim')





set rtp+=~/.config/nvim/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'tc50cal/vim-terminal'
Plugin 'neoclide/coc.nvim'

Plugin 'othree/html5.vim'
Plugin 'dense-analysis/ale'
call vundle#end()            " required



" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
