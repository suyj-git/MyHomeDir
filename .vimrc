call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:tex_flavor='xelatex'
let g:vimtex_view_method='skim'
let g:vimtex_quickfix_mode=0
let g:vimtex_view_automatic=1
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vimtex_compiler_latexmk_engines = {
    \ '_'                : '-pdfxe',
    \ 'pdflatex'         : '-pdfxe',
    \ 'dvipdfex'         : '-pdfdvi',
    \ 'lualatex'         : '-lualatex',
    \ 'xelatex'          : '-xelatex',
    \ 'context (pdftex)' : '-pdf -pdflatex=texexec',
    \ 'context (luatex)' : '-pdf -pdflatex=context',
    \ 'context (xetex)'  : '-pdf -pdflatex=''texexec --xtx''',
    \}
let g:vimtex_compiler_latexmk = {
    \ 'backend' : "process",
    \ 'background' : 1,
    \ 'build_dir' : '',
    \ 'callback' : 1,
    \ 'continuous' : 1,
    \ 'executable' : 'latexmk',
    \ 'options' : [
    \   '-latexoption=-shell-escape',
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

Plug 'vim-airline/vim-airline'

Plug 'tpope/vim-sensible'

call plug#end()

syntax on
imap jj <esc>
set mouse=a
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set cindent
set laststatus=2
syntax enable
set background=dark
colorscheme solarized
set hlsearch
nnoremap 1 @a 
