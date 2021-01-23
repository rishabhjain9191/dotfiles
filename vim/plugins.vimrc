" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'preservim/nerdtree'
Plug 'lifepillar/vim-solarized8'
Plug 'rking/ag.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-commentary'
Plug 'pangloss/vim-javascript'
Plugin 'leafgarland/typescript-vim'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()
