" execute pathogen#infect()
" call pathogen#helptags()
syntax on
filetype plugin indent on
set backspace=indent,eol,start
set incsearch ignorecase hlsearch smartcase

set shiftwidth=2    " use indents of 2 spaces
set sw=2 ts=2 tabstop=2 softtabstop=2 nosmarttab expandtab

let mapleader = ","

map <F8> :tabn<enter>
map <F7> :tabp<enter>
set number

set wildmenu
set wildmode=full

set nocompatible
filetype plugin on
runtime maros/matchit.vim
inoremap <F10> <c-o>l

inoremap jj <esc>:w<CR>

set timeout timeoutlen=5000 ttimeoutlen=100
set laststatus=2
let g:airline_powerline_fonts=1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#coc#enabled = 0
let g:airline_section_y = '' " hide file encoding info - not useful
let g:airline_section_z = '' " disable line number/column number information
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:50'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
nmap <leader>lw :CtrlP<CR><C-\>w
vmap <leader>lw y:CtrlP<CR><C-\>c

" colorscheme gruvbox
nmap <C-h> :bp<CR>
nmap <C-l> :bn<CR>
nmap <leader>q :noh<CR>

imap <C-h> <c-o>h
imap <C-l> <c-o>l

map <c-t> :leftabove 30vsp ~/todo.txt<enter>
map <D-s> :write


" nmap <c-r> :CtrlPBufTagAll<cr>



au BufNewFile *.cpp 0r ~/.vim/cpp.skel | let IndentStyle = "cpp"
" autocmd BufNewFile,BufRead *.cpp set formatprg=astyle\ -T4p
" autocmd BufWritePre *.cpp :normal gggqG


nmap <leader>e :NERDTreeToggle<cr>
nmap <leader>f :NERDTreeFind<cr>
nmap <leader>w :bd<cr>
nmap ed ggO/* eslint-disable */<esc>
nmap <leader>d I<div><esc>A</div><esc>
set hidden

set autoread


" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 0
" let g:syntastic_check_on_wq = 0
" let g:syntastic_check_on_w = 0
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exe = "npm run vlint --"
" The Silver Searcher
 if executable('ag')
   " Use ag over grep
     " set grepprg=ag\ --nogroup\ --nocolor
     let &grepprg = "ag --nogroup --nocolor --ignore ./src/__mocks__ --ignore __snapshots__"

       " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
         let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

 " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
    endif


set tags=tags

function! Autosave()
  if &modified
    echo "Saving the filei"
    write
  end
endfunction

autocmd BufLeave *.js,*.tsx :call Autosave()

function! LintFix()
  execute '!npm run lint-fix' shellescape(expand('%'))
endfunction

nmap <leader>x :call LintFix()<cr>


au BufNewFile,BufRead *.tsx			setf typescript.tsx
set relativenumber

function! ConsoleCurrentLine()
  let v = "console.log(" . line(".") . ");"
  put =v
endfunction

let @a = "console.log('%c Oh my heavens! ', 'background: #222; color: #bada55');"
nmap <leader>cl "ap<esc>
nmap <leader>ccl :call ConsoleCurrentLine()<cr>

set autoindent

source ~/dotfiles/vim/plugins.vimrc
source ~/dotfiles/vim/mappings.vimrc

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
set background=dark
colorscheme gruvbox8



nnoremap <leader>s :w<CR>
nnoremap <leader>a :Rg<space>


