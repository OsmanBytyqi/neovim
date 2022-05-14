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
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
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
Plugin 'gruvbox-community/gruvbox'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'alvan/vim-closetag'
"Plugin 'vim-airline/vim-airline-themes'
Plugin 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }
call vundle#end()            " required
set nocompatible
filetype plugin indent on     "required
set clipboard+=unnamedplus
 let g:gruvbox_contrast_dark = 'hard'
 let g:seiya_auto_enable=1
 " colorscheme  gruvbox
" colorscheme onedark
set background=dark 
set updatetime=10
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" let g:airline_powerline_fonts = 1
let g:mkdp_auto_close = 0
nnoremap <C-m> :MarkdownPreview<CR>
set number relativenumber
set nu rnu
autocmd BufWritePost ~/.Xresources !xrdb %
syntax on
"set transpraent background
" highlight Normal guibg=none
" :hi normal guibg=000000
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
autocmd FileType html,css,javascript EmmetInstall
autocmd Filetype html  inoremap ! html:5
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



" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
