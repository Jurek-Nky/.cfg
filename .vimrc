" ###############################################################################
" PLUGINS
" ###############################################################################

set nocompatible
call plug#begin()

	Plug 'yuttie/comfortable-motion.vim'	" physics based scrolling
	Plug 'chiel92/vim-autoformat'	" autoformatation
	Plug 'joshdick/onedark.vim'		" Theme
	Plug 'valloric/youcompleteme'	" Completion
	Plug 'itchyny/lightline.vim'	" Status Bar
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

set tabstop=4
set list lcs=tab:\ \ \│
set number
"set relativenumber
set numberwidth=2
highlight LineNr ctermfg=Yellow
set nowrap

"#######################################################
" Scrolling
" #######################################################

set so=2
let g:comfortable_motion_friction = 60.0
let g:comfortable_motion_air_drag = 2.0
let g:comfortable_motion_no_default_key_mappings = 1
let g:comfortable_motion_impulse_multiplier = 1  " Feel free to increase/decrease this value.
nnoremap <silent> <C-j> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * 2)<CR>
nnoremap <silent> <C-k> :call comfortable_motion#flick(g:comfortable_motion_impulse_multiplier * winheight(0) * -2)<CR>

"#######################################################
" KEYBINDS
" #######################################################

map q :q!
map <C-W> :set wrap! <return>
map <C-S> :setlocal spell
nnoremap <F2> :%retab! <return>
noremap <F3> :Autoformat gnu<CR>
