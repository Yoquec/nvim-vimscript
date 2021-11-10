"#####################################################
"Load external config files
"#####################################################
"Source settings
source $HOME/.config/nvim/general/settings.vim
"Source completion configuration
source $HOME/.config/nvim/plug-config/coc.vim
"Source R linting config
source $HOME/.config/nvim/plug-config/lintr.vim
"Source key mappings
source $HOME/.config/nvim/keys/mappings.vim

"#####################################################
"PLUGINS
"#####################################################
call plug#begin('~/.config/nvim/plugged')

"For the airline and lightline bars bars (fully esthetic)
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'

"Vim integration with git.
Plug 'tpope/vim-fugitive'

"For multiline comments and increase of quality of life on commenting
"(Use gcc, gc<numberOfLines><j/k> or gcap to comment an entire paragraph).
Plug 'tpope/vim-commentary' 

"For R development like in R studio
Plug 'jalvesaq/Nvim-R'
Plug 'chrisbra/csv.vim'
Plug 'lyuts/vim-rtags'

" Various colorschemes
Plug 'rafi/awesome-vim-colorschemes'
Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}
Plug 'morhetz/gruvbox'
Plug 'srcery-colors/srcery-vim'
Plug 'arcticicestudio/nord-vim'

"For undoing history
Plug 'mbbill/undotree'

"For code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Having a file tree
Plug 'preservim/nerdtree'

" For coc-settings and json linting
Plug 'kevinoid/vim-jsonc'

""Use RipGrep directly from vim
Plug 'jremmen/vim-ripgrep'

"CtrlP fuzzy file opener
Plug 'ctrlpvim/ctrlp.vim'

"For "vimfiler" pluggin:
if has('nvim')
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/defx.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

call plug#end()
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

"#####################################################
"Unused Plugins (maybe they are worth your time.)
"#####################################################

""View manpages directly from vim
"Plug 'vim-utils/vim-man'
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"Start with NERDTree opened
autocmd VimEnter * NERDTree | wincmd p

"Set your favourite colorscheme
colorscheme nord


