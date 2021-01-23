packloadall
execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
set backspace=indent,eol,start
set incsearch ignorecase hlsearch

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
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:ctrlp_match_window = 'bottom,order:ttb,min:1,max:10,results:50'
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
nmap <leader>lw :CtrlP<CR><C-\>w
vmap <leader>lw y:CtrlP<CR><C-\>c

nmap <leader>b :CtrlPBuffer<cr>
colorscheme solarized8_dark
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
     set grepprg=ag\ --nogroup\ --nocolor

       " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
         let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

 " ag is fast enough that CtrlP doesn't need to cache
    let g:ctrlp_use_caching = 0
    endif

" max line length that prettier will wrap on
" Prettier default: 80

" max line length that prettier will wrap on
" Prettier default: 80
let g:prettier#config#print_width = 80

" number of spaces per indentation level
" Prettier default: 2
let g:prettier#config#tab_width = 2

" use tabs over spaces
" Prettier default: false
let g:prettier#config#use_tabs = 'false'

" print semicolons
" Prettier default: true
let g:prettier#config#semi = 'true'

" single quotes over double quotes
" Prettier default: false
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
" Prettier default: true
let g:prettier#config#bracket_spacing = 'true'

" put > on the last line instead of new line
" Prettier default: false
let g:prettier#config#jsx_bracket_same_line = 'true'

" avoid|always
" Prettier default: avoid
let g:prettier#config#arrow_parens = 'avoid'

" none|es5|all
" Prettier default: none
let g:prettier#config#trailing_comma = 'all'

" flow|babylon|typescript|css|less|scss|json|graphql|markdown
" Prettier default: babylon
let g:prettier#config#parser = 'flow'

" cli-override|file-override|prefer-file
let g:prettier#config#config_precedence = 'prefer-file'

" always|never|preserve
let g:prettier#config#prose_wrap = 'preserve'

set tags=tags

function! Autosave()
  if &modified
    echo "Saving the filei"
    write
  end
endfunction

autocmd BufLeave *.js :call Autosave()

function! LintFix()
  execute '!npm run lint-fix' shellescape(expand('%'))
endfunction

nmap <leader>x :call LintFix()<cr>


" coc config
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs',
  \ 'coc-tsserver',
  \ 'coc-eslint', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ ]

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif

" Add CoC ESLint if ESLint is installed
" if isdirectory('./node_modules') && isdirectory('./node_modules/eslint')
"   let g:coc_global_extensions += ['coc-eslint']
" endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

nnoremap <silent> K :call CocAction('doHover')<CR>

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nnoremap <silent> <space>d :<C-u>CocList diagnostics<cr>

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

au BufNewFile,BufRead *.tsx			setf typescript.tsx
set relativenumber

let @a = "console.log('%c Oh my heavens! ', 'background: #222; color: #bada55');"
nmap <leader>cl "ap<esc>

set autoindent
