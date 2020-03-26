"    _      _ __        _
"   (_)__  (_) /_ _  __(_)_ _
"  / / _ \/ / __/| |/ / /  ' \
" /_/_//_/_/\__(_)___/_/_/_/_/

"""""""""""""""""""[ interface ]""""""""""""""""""" 
set so=7
set number relativenumber


"""""""""""""""""""[ keybindings ]""""""""""""""""""" 
" escape insert mode without wrist fatigue
imap jj <Esc>
" easier tab movement
nnoremap tn :tabnew<Space>
nnoremap tk :tabfirst<CR>
nnoremap tj :tablast<CR>
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>
" remap leader key
"let mapleader = ","


"""""""""""""""""""[ tabs ]""""""""""""""""""" 
:set tabstop=4 
:set softtabstop=4 
:set shiftwidth=4 
:set noexpandtab 


"""""""""""""""""""[ spilts ]""""""""""""""""""" 
" splits open at the bottom and right
set splitbelow splitright


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
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'dense-analysis/ale'
Plug 'maximbaz/lightline-ale'
Plug 'majutsushi/tagbar'
call plug#end()


"""""""""""""""""""[ plugin colorscheme ]""""""""""""""""""" 
set termguicolors
set background=dark
colorscheme palenight


"""""""""""""""""""[ plugin lightline ]""""""""""""""""""" 
" bar config
let g:lightline = { 
\	'colorscheme': 'palenight',
\	'active': {
\	'left': [[ 'mode', 'paste' ],
\		[ 'readonly', 'filename', 'modified', 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos' ]]
\	},
\	'component_expand': {
\		'linter_checking': 'lightline#ale#checking',
\		'linter_infos'   : 'lightline#ale#infos',
\		'linter_warnings': 'lightline#ale#warnings',
\		'linter_errors'  : 'lightline#ale#errors',
\		'linter_ok'      : 'lightline#ale#ok',
\	},
\	}
" set lightline-ale icons
let g:lightline#ale#indicator_checking = "\uf110 "
let g:lightline#ale#indicator_ok = "\uf00c "
let g:lightline#ale#indicator_infos = "\uf05a "
let g:lightline#ale#indicator_warnings = "\uf071 "
let g:lightline#ale#indicator_errors = "\uf05e "
" no need to diplay the mode bellow the bar as well
set noshowmode


"""""""""""""""""""[ plugin limelight ]""""""""""""""""""" 
" toggle limelight
nmap <silent><leader>l :Limelight!!<CR>
nmap <leader>L :Limelight!!<Space>
" default value
let g:limelight_default_coefficient = 0.6 


"""""""""""""""""""[ plugin goyo ]""""""""""""""""""" 
" toggle goyo
nmap <silent><leader>g :Goyo<CR>

" goyo display width
"let g:goyo_width = '80%'

"let g:goyo_linenr = 1


"""""""""""""""""""[ plugin fff ]""""""""""""""""""" 
"nmap <Leader>f :F<CR>
" Vertical split (NERDtree style).
"let g:fff#split = "30vnew"
" Open split on the left side (NERDtree style).
"let g:fff#split_direction = "nosplitbelow nosplitright"


"""""""""""""""""""[ plugin NERDtree ]""""""""""""""""""" 
" NERDtree keybinding
nmap <leader>f :NERDTreeToggle<CR>

" open NERDtree when no file is specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDtree when opening a directory
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif


"""""""""""""""""""[ plugin auto-pairs ]""""""""""""""""""" 
" toggle auto pairs
let g:AutoPairsShortcutToggle = '<leader>p'


"""""""""""""""""""[ plugin deoplete ]""""""""""""""""""" 
" use deoplete.
let g:deoplete#enable_at_startup = 1

" tab to cycle auto complete
inoremap <silent><expr> <TAB>
		\ pumvisible() ? "\<C-n>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ deoplete#manual_complete()
		function! s:check_back_space() abort "{{{
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~ '\s'
		endfunction"}}}
		

"""""""""""""""""""[ plugin ALE ]"""""""""""""""""""" 
" toggle ALE
nmap <leader>a :ALEtoggle<CR>


"""""""""""""""""""[ plugin tagbar ]"""""""""""""""""""" 
" toggle tagbar
nmap <leader>t :TagbarToggle<CR>





