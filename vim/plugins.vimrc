" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
" Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'lifepillar/vim-solarized8'
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'lifepillar/vim-gruvbox8'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/BufOnly.vim'
Plug 'vim-scripts/loremipsum'
Plug 'vim-scripts/TaskList.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

"########################Plugins Configs#####################

"------------------------Prettier-----------------------------
source ~/dotfiles/vim/prettier.vimrc
"
"------------------------Coc.nvim-----------------------------
let g:coc_global_extensions = [
      \ 'coc-snippets',
      \ 'coc-tsserver',
      \ 'coc-eslint', 
      \ 'coc-prettier', 
      \ 'coc-json', 
      \ ]

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

" Add CoC Prettier if prettier is installed
if isdirectory('./node_modules') && isdirectory('./node_modules/prettier')
  let g:coc_global_extensions += ['coc-prettier']
endif
"########################Plugins Configs#####################
