""   ___  ____
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
"Plugin 'junegunn/fzf'
Plugin 'iamcco/markdown-preview.nvim' 
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'neoclide/coc.nvim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'joshdick/onedark.vim'
Plugin 'othree/html5.vim'
"Plugin 'jiangmiao/auto-pairs'
Plugin 'dense-analysis/ale'
Plugin 'arcticicestudio/nord'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'mhartington/oceanic-next'
Plugin 'miyakogi/seiya.vim'
Plugin 'arcticicestudio/nord-vim'
Plugin 'sonph/onehalf', { 'rtp': 'vim' }
Plugin 'tpope/vim-commentary'
Plugin 'mattn/emmet-vim'
"Plugin 'github/copilot.vim'    
"Plugin 'donRaphaco/neotex', { 'for': 'tex' }
"
Plugin 'xuhdev/vim-latex-live-preview'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
call vundle#end()            " required

set nocompatible
filetype plugin indent on     "required
set clipboard+=unnamedplus
let g:seiya_auto_enable=1
" colorscheme onehalfdark
set background=dark 
set updatetime=10

command! -nargs=0 Prettier :CocCommand prettier.formatFile
" colorscheme OceanicNext
"let g:airline_theme='nord'
let g:airline_powerline_fonts = 1
let g:mkdp_auto_close = 0
nnoremap <C-m> :MarkdownPreview<CR>
set number relativenumber
set nu rnu
autocmd BufWritePost ~/.Xresources !xrdb %
" press , to trigger emmet magic
"let g:user_emmet_leader_key=','

"set transpraent background
:hi normal guibg=000000
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

let base16colorspace=256

" Replace all is aliased to S.
	nnoremap S :%s//g<Left><Left>

inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"
let g:livepreview_previewer = 'zathura'
autocmd Filetype tex nnoremap <F2> :LLPStartPreview<cr>
autocmd Filetype markdown nnoremap <F2> :MarkdownPreview<cr>
let g:user_emmet_leader_key=','
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
autocmd Filetype html inoremap ! html:5
source ~/.config/nvim/latex.vim


" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]
