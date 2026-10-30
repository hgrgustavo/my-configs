syntax on

let &fillchars ..= ',eob: '
let &fillchars ..= ',vert: '

set shiftwidth=2
set tabstop=2
set noexpandtab
set laststatus=0
set shortmess+=F
set noruler
set noshowcmd
set gfn=FiraCodeNerdFont
set background=dark
set autoindent
set title
set completeopt+=noinsert

filetype plugin indent on

call plug#begin()
	Plug 'morhetz/gruvbox'
	Plug 'preservim/nerdtree'
	Plug 'vim-ruby/vim-ruby'
	Plug 'L3MON4D3/LuaSnip'
	Plug 'ryanoasis/vim-devicons'
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
	Plug 'natebosch/vim-lsc'
	Plug 'dart-lang/dart-vim-plugin'
call plug#end()

set termguicolors
set encoding=UTF-8
let g:gruvbox_transparent_bg = 1
let g:gruvbox_contrast_dark = 'hard'

colorscheme gruvbox

hi! Search ctermbg=NONE guibg=NONE
hi! Normal ctermbg=NONE guibg=NONE
hi! NonText ctermbg=NONE guibg=NONE
hi! VertSplit ctermbg=NONE guibg=NONE
hi! LineNr ctermbg=NONE guibg=NONE
hi! NormalFloat guibg=NONE ctermbg=NONE

hi! Pmenu ctermbg=NONE guibg=NONE guifg=NONE
hi! PmenuKind ctermbg=NONE guibg=NONE guifg=NONE
hi! PmenuExtra ctermbg=NONE guibg=NONE guifg=NONE
hi! PmenuThumb ctermbg=NONE guibg=NONE guifg=NONE
hi! PmenuMatch ctermbg=NONE guibg=NONE guifg=NONE
hi! PmenuSbar ctermbg=NONE guibg=NONE
hi! PmenuThumb ctermbg=NONE guibg=NONE

hi! PmenuSel ctermbg=red guibg=red guifg=white
hi! PmenuKindSel ctermbg=red guibg=red guifg=white 
hi! PmenuExtraSel ctermbg=red guibg=red guifg=white
hi! PmenuMatchSel ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE

hi! SignColumn ctermbg=NONE guibg=NONE

hi! CursorLineNr ctermbg=NONE guibg=NONE

hi! GruvboxRedSign ctermbg=NONE guibg=NONE  
hi! GruvboxGreenSign ctermbg=NONE guibg=NONE
hi! GruvboxYellowSign ctermbg=NONE guibg=NONE
hi! GruvboxBlueSign ctermbg=NONE guibg=NONE
hi! GruvboxPurpleSign ctermbg=NONE guibg=NONE
hi! GruvboxAquaSign ctermbg=NONE guibg=NONE
hi! GruvboxOrangeSign ctermbg=NONE guibg=NONE

hi! NERDTreeDir ctermfg=white guifg=white
hi! NERDTreeDirSlash guifg=NONE ctermfg=NONE

augroup EasyLintStyleTransparent
	autocmd!
	autocmd ColorScheme * hi! EasyLintStyle guibg=NONE ctermbg=NONE
augroup END

hi! EasyLintStyle guibg=NONE ctermbg=NONE

nnoremap <Bslash> :NERDTreeMirror <Bar> NERDTreeFocus<CR>

" vim-easycomplete
let g:easycomplete_nerd_font = 1
let g:easycomplete_ghost_text = 0
let g:easycomplete_cursor_word_hl = 0

" vim-nerdtree
" you can add these colors to your .vimrc to help customizing
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['css'] = s:blue 

let g:NERDTreeExactMatchHighlightColor = {}
let g:NERDTreeExactMatchHighlightColor['.gitignore'] = s:git_orange
let g:NERDTreeExactMatchHighlightColor['.gitattributes'] = s:git_orange
let g:NERDTreeExactMatchHighlightColor['.gitconfig'] = s:git_orange

let g:NERDTreeExtensionHighlightColor = {}
let g:NERDTreeExtensionHighlightColor['rb'] = s:red

let g:NERDTreePatternMatchHighlightColor = {} 
let g:NERDTreePatternMatchHighlightColor['.*_spec\.rb$'] = s:rspec_red 

let g:WebDevIconsDefaultFolderSymbolColor = s:white 
let g:WebDevIconsDefaultFileSymbolColor = s:blue 
let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 1 " highlights the folder name

let NERDTreeShowHidden = 1
let NERDTreeDirArrowExpandable = ""
let NERDTreeDirArrowCollapsible = ""

let g:NERDTreeIndentMarkerSize = 1
let g:NERDTreeMinimalUI = 1
let g:WebDevIconsNerdTreeBeforeGlyphPadding = ""

let g:lsc_server_commands = {
\   'dart': {
\       'command': 'dart language-server',
\       'message_hooks': {
\           'initialize': {
\               'initializationOptions': {
\                   'onlyAnalyzeProjectsWithOpenFiles': v:true
\               }
\           }
\       }
\   }
\}
