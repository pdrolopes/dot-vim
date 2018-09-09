" My .vimrc :)
" Started from @henriquegogo https://gist.github.com/henriquegogo/763756

set t_Co=256                       " Set to 256 colors scheme
set number                         " Line numbers
set linebreak                      " Break line without break word
set nobackup                       " Dont save backup~ files
set ignorecase                     " Ignore case sensitive on searchs
set smartcase                      " If have any uppercase, active case sensitive
set gdefault                       " Always substitute all letters, dont just first
set smartindent                    " Auto-indent
set cursorline                     " Active line with other color
set incsearch                      " Find when you typing
set tags=tags;                     " Use ctags file in current directory or parent
set backspace=2                    " Default backspace behaviour
set wildmode=full                  " Command complete display all list
set wildchar=<Tab> wildmenu        " Autocomplete commands on command mode
set mouse=a                        " Mouse will use vim behavior
set hidden                         " To edit multiple buffers without save
set expandtab                      " Indent with white spaces
set tabstop=2                      " Indent spaces
set shiftwidth=2                   " Auto-indent spaces
set display+=lastline              " Show last line much as possible
set guioptions-=T                  " GUI without toolbar
set path+=**                       " Find recursive when use command :find or :tabfind
set wildignore+=**/node_modules/** " Excluding folder for :find and :tabfind commands
set exrc                           " Load current folder .vimrc config file
set secure                         " Prevent :autocmd files in current folder config file
set splitbelow                     " Always create splits below or to the right
set splitright                     " Always create splits below or to the right

set background=dark

syntax enable
filetype plugin indent on


" Ctrlp .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" Onedark section
packadd! onedark.vim
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

let g:onedark_termcolors = 256
colorscheme onedark
" End onedark section
