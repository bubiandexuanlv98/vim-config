set number
syntax on
set mouse=a
set clipboard=unnamed
set encoding=UTF-8
let mapleader = ','
inoremap <leader>w  <Esc>:w<cr>

" set tab 4 
set ts=4
set expandtab
set autoindent

" theme
syntax on
colorscheme molokai 

" back to normal
let mapleader = ','
inoremap <leader>w  <Esc>:w<cr>
inoremap <C-c> <C-n>
inoremap jj <Esc>`^
vnoremap <C-n> <Esc>`^
vnoremap i I<BS>

" copy
inoremap<C-v> <C-o>p
vnoremap<C-c> y
nnoremap<C-b> <C-v>
nnoremap<C-v> p
cnoremap<C-v> p

" window move
nnoremap<C-h> <C-w>h
nnoremap<C-j> <C-w>j
nnoremap<C-k> <C-w>k
nnoremap<C-l> <C-w>l
nnoremap<C-p> <C-w>p

" insert move
inoremap<C-b> <C-h>
inoremap<C-h> <Left>
inoremap<C-l> <Right>
inoremap<C-j> <Down>
inoremap<C-k> <Up>

" undo 
inoremap <C-u> <C-O>u  

" CTRL-A is Select all
noremap <C-A> gggH<C-O>G
inoremap <C-A> <C-O>gg<C-O>gH<C-O>G
cnoremap <C-A> <C-C>gggH<C-O>G
onoremap <C-A> <C-C>gggH<C-O>G
snoremap <C-A> <C-C>gggH<C-O>G
xnoremap <C-A> <C-C>ggVG

" Plug_in
call plug#begin('~/.vim/plugged')
Plug 'mhinz/vim-startify'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'yggdroot/indentline'  
Plug 'preservim/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'majutsushi/tagbar' "need to install universal ctags--visit the tagbar  github and click the link to ctags(will need to clone ctags source code)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'brooth/far.vim'
Plug 'tomasr/molokai' " need to move molokai.vim to .vim/colors 
Plug 'nanotech/jellybeans.vim'
Plug 'valloric/youcompleteme' " need to sudo apt install build-essential cmake python3-dev + python3 install.py clangd-YcmCompleter
Plug 'sbdchd/neoformat' "need to apt-get install clang-format
Plug 'valloric/listtoggle'
Plug 'tpope/vim-commentary'
Plug 'lfv89/vim-interestingwords'
call plug#end()

" NERDTree and Tagbar
nnoremap <leader>f :NERDTreeFind<CR>
nnoremap <leader>g :NERDTreeToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>

" ctrlp_map
nnoremap <C-n> <C-f>
let g:ctrlp_map = '<c-f>'

" YCM                                                              
" 允许自动加载.ycm_extra_conf.py，不再提示                         
let g:ycm_confirm_extra_conf=0                                     
" 补全功能在注释中同样有效                                         
let g:ycm_complete_in_comments=1                                   
" 开启tags补全引擎                                                 
let g:ycm_collect_identifiers_from_tags_files=1                    
" 键入第一个字符时就开始列出匹配项                                 
let g:ycm_min_num_of_chars_for_completion=1                        
" location list on
let g:ycm_always_populate_location_list = 1
" YCM相关快捷键，分别是gtl, gtf, gd
nnoremap gtl :YcmCompleter GoToDeclaration<CR>              
nnoremap gtf :YcmCompleter GoToDefinition<CR>               
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
inoremap qq <C-y> 
" Apply YCM FixIt
map <F9> :YcmCompleter FixIt<CR>
" youcompleteme end

" ListToggle
let g:lt_location_list_toggle_map = '<leader>l'
let g:lt_quickfix_list_toggle_map = '<leader>q'

" airline theme
let g:airline_theme='luna'

" Far.vim undo 
let g:far#enable_undo=1

