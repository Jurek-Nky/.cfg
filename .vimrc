" ###############################################################################
" PLUGINS
" ###############################################################################

set nocompatible
call plug#begin()

	Plug 'joshdick/onedark.vim'		" Theme
	Plug 'valloric/youcompleteme'		" Completion
	Plug 'itchyny/lightline.vim'		" Status Bar
	Plug 'tpope/vim-fugitive'		" Git Support

call plug#end()

" ###############################################################################
" LIGHTLINE 
" ###############################################################################


" general
set laststatus=2
set noshowmode

" status bar components
let g:lightline = {
	\ 'colorscheme': 'onedark',
	\ 'active' : {
	\ 'left' :[ ['mode' , 'paste'] , ['gitbranch' , 'readonly' , 'modified' , 'absolutepath' ] ] , 
	\ 'right' : [ ['lineinfo' ] , ['percent'], [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ] } ,
	\ 'component' : { 'charvaluehex' : '0x%B'}, 
	\ }


"Set color and theme
"set t_Co=256
"let g:lightline = {'colorscheme' : 'sonokai'}

" #######################################################
" onedark
" #######################################################

if (empty($TMUX))
	if (has("nvim"))
		let $NVIM_TUI_ENABLE_TRUE_COLOR=1
	endif
	if (has("termguicolors"))
		set termguicolors
	endif
endif

syntax on
colorscheme onedark

let g:onedark_terminal_italics=1

"#######################################################
" VIM SETTINGS
" #######################################################

" Search

set ignorecase
set smartcase
set showmatch
set gdefault

" Spell check

set spelllang=en_us,de


" Visual

set tabstop=8
set list lcs=tab:\ \.\│ 
set number
"set relativenumber
set numberwidth=2
highlight LineNr ctermfg=Yellow
set nowrap

"#######################################################
" KEYBINDS
" #######################################################

map q :q!
map <C-W> :set wrap! <return>
map <C-S> :setlocal spell
