syntax on

let &fillchars ..= ',eob: '
let &fillchars ..= ',vert: '

set shiftwidth=4
set tabstop=4
set laststatus=0
set shortmess+=F
set noruler
set noshowcmd
set gfn=FiraCodeNerdFont
set background=dark
set autoindent

call plug#begin()
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree'
	Plug 'vim-ruby/vim-ruby'
	Plug 'jayli/vim-easycomplete'
	Plug 'L3MON4D3/LuaSnip'
call plug#end()

set termguicolors
let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_dark = 'hard'

colorscheme gruvbox

hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! VertSplit ctermbg=NONE guibg=NONE

hi! Pmenu ctermbg=NONE guibg=NONE guifg=NONE
hi! PmenuKind ctermbg=NONE guibg=NONE guifg=NONE
hi! PmenuExtra ctermbg=NONE guibg=NONE guifg=NONE
hi! PmenuThumb ctermbg=NONE guibg=NONE guifg=NONE
hi! PmenuMatch ctermbg=NONE guibg=NONE guifg=NONE

hi! PmenuSel ctermbg=red guibg=red guifg=white
hi! PmenuKindSel ctermbg=red guibg=red guifg=white 
hi! PmenuExtraSel ctermbg=red guibg=red guifg=white
hi! PmenuMatchSel ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

nnoremap <Bslash> :NERDTreeMirror <Bar> NERDTreeFocus<CR>

" vim-easycomplete
let g:easycomplete_nerd_font = 1
let g:easycomplete_ghost_text = 0
let g:easycomplete_cursor_word_hl = 0
