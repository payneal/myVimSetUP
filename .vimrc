"Ali Payne 2-15-2016

" for vundle
" https://github.com/VundleVim/Vundle.vim
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"https://github.com/Valloric/MatchTagAlways
Plugin 'git@github.com:Valloric/MatchTagAlways.git'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" html tag highlight
"http://valloric.github.io/MatchTagAlways/
let g:mta_use_matchparen_group = 1


"this shows line numbers in vim"
set number
 
"this is for pathogen.vim to make gettiing plugins easy
execute pathogen#infect()
 
"this turns on syntax highlighter 
syntax on
  
"I wanted my comments a certain color" 
highlight Comment ctermbg=Yellow
   
"Im not too sure about this but they said its suggested in  https://github.com/tpope/vim-pathogen
filetype plugin indent on
    
"this is for NERDTree, see https://github.com/scrooloose/nerdtree 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree |endif

"this is to have a shortcut to nerdtree
map <C-n> :NERDTreeToggle<CR>
      
"this closes vim if the if the oly window left open is nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
     
"Reccomended settings for Syntastic see-https://github.com/scrooloose/syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
        
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0  "stop checking everything on open
let g:syntastic_check_on_wq = 0


" dont check html file
 let g:syntastic_mode_map = {
         \ "mode": "active",
         \ "passive_filetypes": ["html"] }


"set Indentation
set expandtab
set tabstop=4
set shiftwidth=4
map <F2> :retab <CR> :wq! <CR>
set autoindent
set smarttab

"auto start NerdTree
autocmd VimEnter * NERDTree
autocmd BufEnter * NERDTreeMirror
           
autocmd VimEnter * wincmd w
             
"more natural split opening"
set splitbelow
set splitright
              
"easier split navigations"
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"https://github.com/mattn/emmet-vim
"web development made easy 
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"https://github.com/ctrlpvim/ctrlp.vim
"Change the default mapping and the default command to invoke CtrlP:
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
"When invoked without an explicit starting directory, CtrlP will set its local working directory according to this variable:
let g:ctrlp_working_path_mode = 'ra'






