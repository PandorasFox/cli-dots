source ~/.vimrc

map <Leader>t :split +res\ 15 term://zsh <CR>
tnoremap <ESC> <C-\><C-n>
let $IN_NEOVIM = "yes"
highlight TermCursor ctermfg=red guifg=red

call plug#begin('~/.vim/plugged')
" https://github.com/vim-airline/vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'chr4/nginx.vim'
call plug#end()

" use the same Python 3 as python3-nvim
let g:python3_host_prog='/usr/bin/python3'
" same for Python 2
"let g:python_host_prog='/usr/bin/python2'"

let g:cscope_map_keys = 1

" airline stuff

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = 'base16_pandora'
let g:airline#extensions#whitespace#mixed_indent_algo = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_symbols.colnr = ' @ '
let g:airline_symbols.linenr = ''
let g:airline_symbols.maxlinenr = ' '


call airline#parts#define_accent('mode', 'none')
call airline#parts#define_accent('linenr', 'none')
call airline#parts#define_accent('maxlinenr', 'none')
call airline#parts#define_accent('colnr', 'none')

let g:airline_section_b = '%{substitute(getcwd(), $HOME, "~", "")}'
let g:airline_section_z = airline#section#create(['linenr', 'maxlinenr', 'colnr'])

