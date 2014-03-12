execute pathogen#infect()
filetype plugin indent on

" solarized settings
syntax on
set background=dark
if has('gui_running')
  colorscheme solarized
  set guifont=Monaco:h12
else
  colorscheme solarized
endif

if has("macunix")

elseif has("unix")

endif
