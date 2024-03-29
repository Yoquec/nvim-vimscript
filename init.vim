"#####################################################
"centerLoad external config files
"#####################################################
"Source settings
source $HOME/.config/nvim/general/settings.vim
"Source completion configuration
source $HOME/.config/nvim/plug-config/coc.vim
"Source key mappings
source $HOME/.config/nvim/keys/mappings.vim

"#####################################################
"PLUGINS
"#####################################################
call plug#begin('~/.config/nvim/plugged')

"Set the lualine
Plug 'nvim-lualine/lualine.nvim'

"For multiline comments and increase of quality of life on commenting
"(Use gcc, gc<numberOfLines><j/k> or gcap to comment an entire paragraph).
Plug 'tpope/vim-commentary' 

" Vim which-key
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" For js development
Plug 'pangloss/vim-javascript'

"For R development like in R studio
Plug 'jalvesaq/Nvim-R'
" Plug 'chrisbra/csv.vim'
Plug 'lyuts/vim-rtags'

" For sending input to terminal buffers like in spyder
Plug 'karoliskoncevicius/vim-sendtowindow'

" Various colorschemes
Plug 'gruvbox-community/gruvbox'
" Plug 'sainnhe/gruvbox-material'
" Plug 'rafi/awesome-vim-colorschemes'

" Goyo and distraction free writting
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" For undoing history
Plug 'mbbill/undotree'

" For code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'

" Having a file tree
Plug 'preservim/nerdtree'

" For coc-settings and json linting
Plug 'kevinoid/vim-jsonc'

" Use RipGrep directly from vim
" Plug 'jremmen/vim-ripgrep' "Replaced by telescope

"Vim telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-symbols.nvim'
Plug 'nvim-telescope/telescope-file-browser.nvim'

" For putting parenthesis and brackets around words
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Easymotion for vim
Plug 'easymotion/vim-easymotion'

" Color preview
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

"Prettier plugin
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

" FireNvim for using nvim in firefox and google chrome
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" Vim dashboard
Plug 'glepnir/dashboard-nvim'

" treesitter
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Devicons for telescope
Plug 'nvim-tree/nvim-web-devicons'

" Icons on vim
Plug 'ryanoasis/vim-devicons'

call plug#end()

"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

"#####################################################
"Unused Plugins (maybe they are worth your time.)
"#####################################################

""View manpages directly from vim
"Plug 'vim-utils/vim-man'
"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"Start with NERDTree opened
" autocmd VimEnter * NERDTree | wincmd p



"Set your favourite colorscheme
" let g:gruvbox_material_background = "hard"
" let g:gruvbox_material_foreground = "mix"

" colorscheme gruvbox-material
" load lualine
lua require("lualine").setup()

" Dashboard settings
lua require("dashboard_config")

" Telescope file finder
lua require("telescope").load_extension "file_browser"


"Extra
set background=dark
set termguicolors "True colors term support
let g:gruvbox_italic='1'
let g:gruvbox_invert_selection='0'
let g:gruvbox_termcolors='256'
let g:gruvbox_cursorline="bg0"
let g:AutoPairsFlyMode=0
let g:gruvbox_contrast_dark='hard'
let g:gruvbox_sign_column="bg0"
colorscheme gruvbox

" go all the way down
resize +4
" set showmode and no bar at the beggining
set showmode
set laststatus=0
