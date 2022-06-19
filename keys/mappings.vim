"Telescope bindings
" Find files using Telescope command-line sugar.
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
inoremap <expr> <c-k> ("\<C-p>")

" Closing buffers without closing the windows
map <leader>q :bp<bar>sp<bar>bn<bar>bd<CR>

" Applying prettier formattings
nnoremap <leader>p :Prettier<CR>

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" " I hate escape more than anything else
" That's why it's useful to remap it to Caps-Lock using xmodmap
" inoremap jk <Esc>
" inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv
:vmap <Tab> >
:vmap <S-Tab> <

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
nnoremap <S-F10> :w<CR>

"Nvim-R remaps
vmap <Leader><CR> <Plug>RDSendSelection
nmap <Leader><CR> <Plug>RDSendLine

"Undotree remaps
nnoremap <Leader>ut :UndotreeToggle<CR>

"NERDTree remaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader><C-n> :NERDTree<CR>
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader><C-f> :NERDTreeFind<CR>

" Add mapping for Goyo
nnoremap <Leader>gy :Goyo<CR>

" neovim terminal can exit to normal mode with <esc> now
tnoremap <esc> <c-\><c-n>

" delete text without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Run last command
nnoremap <leader>r :<UP><CR>
