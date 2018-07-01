"""""""""""""""""""""""""
" Made by Henrique Gogó "
"""""""""""""""""""""""""
"turn on colors for mac vi
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

set background=dark

syntax enable
filetype plugin indent on

runtime! autoload/pathogen.vim
if exists('*pathogen#infect')
    execute pathogen#infect()
    endif


" Functions
function! InstallVimPlugins()
  execute "silent !echo Creating folders and downloading pathogen.vim plugins manager ..."
  execute "silent !mkdir -p ~/.vim/autoload ~/.vim/bundle ~/.vim/after/plugin && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim"
  execute "silent !echo Removing old plugin versions if exist ... && rm -rf ~/.vim/bundle/vim-snippets ~/.vim/bundle/ultisnips ~/.vim/bundle/YouCompleteMe ~/.vim/bundle/vim-pug ~/.vim/bundle/vim-javascript ~/.vim/bundle/vim-jsx ~/.vim/bundle/vim-es6"
  execute "silent !echo Installing vim-snippets ...   && git clone --depth=1 git@github.com:honza/vim-snippets.git ~/.vim/bundle/vim-snippets"
  execute "silent !echo Installing ultisnips ...      && git clone --depth=1 git@github.com:SirVer/ultisnips.git ~/.vim/bundle/ultisnips"
  execute "silent !echo Installing YouCompleteMe ...  && git clone --depth=1 git@github.com:Valloric/YouCompleteMe.git ~/.vim/bundle/YouCompleteMe && cd ~/.vim/bundle/YouCompleteMe && git submodule update --init --recursive && ./install.py --tern-completer"
  execute "silent !echo Installing vim-pug ...        && git clone --depth=1 git@github.com:digitaltoad/vim-pug.git ~/.vim/bundle/vim-pug"
  execute "silent !echo Installing vim-javascript ... && git clone --depth=1 git@github.com:pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript"
  execute "silent !echo Installing vim-jsx ...        && git clone --depth=1 git@github.com:mxw/vim-jsx.git ~/.vim/bundle/vim-jsx"
  execute "silent !echo Installing vim-es6 ...        && git clone --depth=1 git@github.com:isRuslan/vim-es6.git ~/.vim/bundle/vim-es6"
  execute "silent !echo Configuring plugins ..."
  execute 'silent !printf "let g:jsx_ext_required = 0\nlet g:ycm_key_list_select_completion=[]\n" > ~/.vim/after/plugin/vimrc.vim'
  execute "!echo Done"
endfunction

command! InstallVimPlugins call InstallVimPlugins()


" Ctrlp .gitignore
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

packadd! onedark.vim

"
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

let g:onedark_termcolors = 256
colorscheme onedark
