execute pathogen#infect()
filetype plugin indent on

"global mouse settings
set mouse=a

"show line numbers
set number

" highlight the line and line number the cursor is on
set cursorline

" set visual bell to get rid of beeping in Macvim
set vb

"global indentation
set tabstop=8
set expandtab
set shiftwidth=4
set autoindent
set smartindent
set cindent

" filetype specific indentation
" no tab expansion in makefiles
autocmd FileType make set noexpandtab
" 8spaces for c files
autocmd BufRead,BufNewFile *.c set shiftwidth=8
autocmd BufRead,BufNewFile *.h,*.cpp,*.cc set shiftwidth=2 tabstop=2

" Open Tagbar for source files
autocmd BufRead,BufNewFile *.c,*.h,*.cpp,*.java,*.cc TagbarOpen


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
let g:clang_complete_auto = 1
" Show clang errors in the quickfix window
let g:clang_complete_copen = 1

if has("macunix")
	let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib'
elseif has("unix")
	" Note. we expect libclang.so, and in case there is only a libclang.so.1 just create a symlink
	let g:clang_library_path = '/usr/lib'
endif

" Latex plugin
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_CompileRule_pdf = 'pdflatex -interaction=nonstopmode $*'
let g:Tex_GotoError = 0
let g:Tex_ViewRule_pdf = 'preview'

"Supertab settings
" SuperTab option for context aware completion
"let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabMappingForward = '<c-space>'
let g:SuperTabMappingBackward = '<s-c-space>'
" let g:SuperTabMappingTabLiteral = '<Tab>'

