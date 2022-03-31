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
Plugin 'joshdick/onedark.vim'
Plugin 'othree/html5.vim'
Plugin 'dense-analysis/ale'
Plugin 'arcticicestudio/nord'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'mhartington/oceanic-next'
Plugin 'miyakogi/seiya.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'iamcco/markdown-preview.nvim' 
Plugin 'github/copilot.vim'    
Plugin 'vim-airline/vim-airline-themes'
call vundle#end()            " required
"let g:seiya_auto_enable=1
colorscheme onehalfdark
set background=dark 
colorscheme OceanicNext
"let g:airline_theme='nord'
let g:airline_powerline_fonts = 1

let g:mkdp_auto_close = 0
nnoremap <C-m> :MarkdownPreview<CR>
set number relativenumber
set nu rnu

set nobackup       "no bafiles
set nowritebackup  "only in case you don't wa bfile while editing
set noswapfile 
"colorscheme nord
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

