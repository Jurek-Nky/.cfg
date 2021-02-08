"Plugins
call plug#begin()

Plug 'valloric/youcompleteme'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'

call plug#end()

" lightline geral
set laststatus=2
set noshowmode

" lightline statusbar components
let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active' : {
\ 'left' :[ ['mode' , 'paste'] , ['gitbranch' , 'readonly' , 'modified' , 'filename' ] ] , 
\ 'right' : [ ['lineinfo' ] , ['percent'], [ 'fileformat', 'fileencoding', 'filetype', 'charvaluehex' ] ] } ,
\ 'component_function' :{'gitbranch': 'FugitiveStatusline'},
\ 'component' : { 'charvaluehex' : '0x%B' },
\ }




"Set lightline color
if !has('gui_running')
	  set t_Co=256
  endif

" Search

set ignorecase
set smartcase
set showmatch
set gdefault

" Spell check

set spelllang=en_us,de_de

" Visual

colorscheme murphy 
set number
set numberwidth=2
highlight LineNr ctermfg=Red
