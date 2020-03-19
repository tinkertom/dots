"""""""""""""""""""[ interface ]""""""""""""""""""" 
set so=7
set number


"""""""""""""""""""[ keybindings ]""""""""""""""""""" 
imap jj <Esc>

nnoremap tn :tabnew<Space>
nnoremap tk :tabfirst<CR>
nnoremap tj :tablast<CR>
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>


"""""""""""""""""""[ tabs ]""""""""""""""""""" 
:set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab 


"""""""""""""""""""[ plugins ]""""""""""""""""""" 
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
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'dense-analysis/ale'
call plug#end()


"""""""""""""""""""[ plugin colorscheme ]""""""""""""""""""" 
set termguicolors

set background=dark
colorscheme palenight


"""""""""""""""""""[ plugin lightline ]""""""""""""""""""" 
let g:lightline = { 'colorscheme': 'palenight' }


"""""""""""""""""""[ plugin limelight ]""""""""""""""""""" 
" toggle limelight
nmap <Leader>l :Limelight!!<CR>
nmap <Leader>L :Limelight!!<Space>
" default value
let g:limelight_default_coefficient = 0.7 """""""""""""""""""[ plugin goyo ]""""""""""""""""""" 
" toggle goyo
nmap <Leader>g :Goyo<CR>

" goyo display width
"let g:goyo_width = '80%'

let g:goyo_linenr = 1


"""""""""""""""""""[ plugin fff ]""""""""""""""""""" 
"nmap <Leader>f :F<CR>
" Vertical split (NERDtree style).
"let g:fff#split = "30vnew"
" Open split on the left side (NERDtree style).
"let g:fff#split_direction = "nosplitbelow nosplitright"


"""""""""""""""""""[ plugin NERDtree ]""""""""""""""""""" 
" NERDtree keybinding
nnoremap <Leader>f :NERDTreeToggle<CR>

" open NERDtree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDtree when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif


"""""""""""""""""""[ plugin deoplete ]""""""""""""""""""" 
"let g:deopelte#enable_at_startup = 1


