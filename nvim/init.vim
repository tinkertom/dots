set termguicolors

call plug#begin('~/.vim/plugged')
"Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'drewtempelmeyer/palenight.vim'
Plug 'bfrg/vim-cpp-modern'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'https://github.com/junegunn/limelight.vim'
"Plug 'dylanaraps/fff.vim'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dense-analysis/ale'
call plug#end()

""" colorscheme
set background=dark
colorscheme palenight

""" lightline
let g:lightline = { 'colorscheme': 'palenight' }

""" fff
"nmap <Leader>f :F<CR>
" Vertical split (NERDtree style).
"let g:fff#split = "30vnew"
" Open split on the left side (NERDtree style).
"let g:fff#split_direction = "nosplitbelow nosplitright"

""" NERDtree
" NERDtree keybinding
nnoremap <Leader>f :NERDTreeToggle<CR>

" open NERDtree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDtree when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" close vim if only NERDtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

""" deoplete
let g:deopelte#enable_at_startup = 1

""" interface
set so=7
set number

""" keybindings
imap jj <Esc>

nnoremap tn :tabnew<Space>
nnoremap tk :tabfirst<CR>
nnoremap tj :tablast<CR>
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>

""" tabs
:set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab 
