"" Vundle configuration
source ~/.vimvundle.vim

" COLOR SCHEME
syntax enable
set background=dark
colorscheme solarized

" FORMATTING
set tabstop=2                                 " tab is 2 spaces
set softtabstop=2                             " tab is 2 spaces when editing
set shiftwidth=2                              " >> is 2 spaces - fixes indentation styling
set expandtab                                 " tabs are spaces
set number                                    " show line numbers
set nrformats=                                " treat all numbers as base 10 and decimal
set showcmd                                   " show command in bottom bar
set wrap linebreak nolist
set breakindent
set autoread
set backspace=indent,eol,start                " Allows backspace to work like other editors in insert mode

" JAVASCRIPT LIBRARIES SYNTAX
let g:used_javascript_libs = 'underscore,jquery,angularjs,angularui,requirejs,jasmine'

" SEARCH
set incsearch                                 " search as characters are entered
set hlsearch                                  " highlight matches
set wildmenu                                  " enable wildmenu for <C-d> 'tab-style' completion in command mode
set wildmode=full                             " set wildmenu to be more like zsh tab completion

" COMMAND LINE
set history=200                               " set command line history to 200 commands instead of 20

" MOVEMENT
set mouse=a                                   " allow the mouse to be used in all modes
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" HTML STUFF
let g:closetab_filenames = "*.html,*.xhtml,*.phtml"

" VIM-AIRLINE
set laststatus=2                              " display the airline toolbar on all windows (regardless of split)

" SILVER SEARCHER
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesnt need to cache
  let g:ctrlp_use_caching = 0
endif
