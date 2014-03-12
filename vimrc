execute pathogen#infect()
filetype plugin indent on

"fix backspace
set backspace=indent,eol,start

" solarized settings
syntax on
set background=dark
if has('gui_running')
  colorscheme solarized
  set guifont=Monaco:h12
else
  colorscheme solarized
endif


" clang_complete options (disable preview scratch window)
set completeopt=menu,menuone,longest
" Limit popup menu height
set pumheight=15
" Disable auto popup, use <Tab> to autocomplete
let g:clang_complete_auto = 0
" Show clang errors in the quickfix window
let g:clang_complete_copen = 1


if has("macunix")
	let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
elseif has("unix")

endif
