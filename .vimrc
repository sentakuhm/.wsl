" Dotfiles: https://github.com/sentakuhm/.dotfiles
" Email: sentakuhm@gmail.com
" ==================================================
set nocompatible              
filetype on                  
call plug#begin('~/.vim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'mhinz/vim-startify'
Plug 'jiangmiao/auto-pairs'
Plug 'mattn/emmet-vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'voldikss/vim-floaterm'
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'

" Initialize plugin system
call plug#end()

"+++++++++++++Settings++++++++++++++
filetype plugin on
filetype plugin indent on
source $VIMRUNTIME/vimrc_example.vim
set nobackup
set nowritebackup
set noswapfile
set noundofile
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
let g:airline_powerline_fonts = 1
let g:coc_global_extensions = 1
set backspace=indent,eol,start
se mouse+=a
set encoding=utf-8
set tabstop=4
set softtabstop=4
set expandtab
set number
set spell
set t_ut=
set showcmd
"set cursorline
set wildmenu
set hidden
set lazyredraw
set showmatch
set incsearch
set hlsearch

"Visual wrapping:
autocmd FileType python set breakindentopt=shift:4

"Cut/Copy/Paste:
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
nnoremap x "_x


"#########Enable-Plugins:#############
"Startify:
autocmd VimEnter *
                \   if !argc()
                \ |   Startify
                \ |   NERDTree
                \ |   wincmd w
                \ | endif


"fzf settings:
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
let g:fzf_layout = { 'window': 'enew' }
let g:fzf_layout = { 'window': '-tabnew' }
let g:fzf_layout = { 'window': '10new' }

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'
"############## end fzf ###########################

"Powerline:
let g:powerline_pycmd="py3"

"Emmets:
let g:user_emmet_mode='a'

 "Gitgutter:
let g:gitgutter_max_signs = 500

"Ident-Guides:
"let g:indent_guides_enable_on_vim_startup = 1

"###############Color Theme:##############
if has('termguicolors')
  set termguicolors
endif

syntax on
set background=dark
let g:gruvbox_material_background = 'soft'
let g:gruvbox_material_enable_italic = 1
colorscheme gruvbox-material

"if !has('gui_running')
"	set t_Co=256
"endif
"########################################################

"NERDTree:
autocmd vimenter * NERDTree
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowHidden=1
nmap <F6> :NERDTreeToggle<CR>
"NRDCommenter:
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDAltDelims_java = 1
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1
let g:webdevicons_enable_nerdtree = 1
