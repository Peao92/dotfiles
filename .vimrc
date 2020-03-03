set nocompatible
set encoding=utf-8
syntax on

" mouse settings
set mouse=a     " Enable mouse
set mousehide   " Hide mouse pointer on insert mode."

" presentation settings
set background=dark
set t_Co=256
set number              " precede each line with its line number
set numberwidth=5       " number of culumns for line numbers
set textwidth=0         " Do not wrap words (insert)
set nowrap              " Do not wrap words (view)
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set ruler               " line and column number of the cursor position
set wildmenu            " enhanced command completion
set visualbell          " use visual bell instead of beeping
set laststatus=2        " always show the status lines
set list listchars=tab:→\ ,trail:▸

" behavior
set completeopt=menuone,preview
set autoindent          " automatically indent new line
set ts=4                " number of spaces in a tab
set sw=4                " number of spaces for indent
set et                  " expand tabs into spaces

" search settings
set incsearch           " Incremental search
set hlsearch            " Highlight search match
set ignorecase          " Do case insensitive matching
set smartcase           " do not ignore if search pattern has CAPS

" directory settings
set nobackup            " do not write backup files
set noswapfile          " do not write .swp files
