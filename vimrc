
set rtp+=~/.vim/bundle/Vundle.vim
set number


"autocmd vimenter * NERDTree

call vundle#begin()

Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'pangloss/vim-javascript'

call vundle#end()

" nerdtree
let g:NERDTreeWinPos = "left"


" syntastic
let g:syntastic_mode_map = {'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let syntastic_loc_list_height=3


let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


"vim-airline setting
let g:airline#extensions#tabline#enabled = 1

"ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
"let g:ctrlp_match_window = 'max:40,results:40'
"set ctrlp working patch as current 
let g:ctrlp_working_path_mode = 'c'
" set ignore file
set wildignore+=*.so,*.swp,*.zip,*.pyc
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
" enable tags search 
let g:ctrlp_extensions = ['tag']


filetype plugin indent on

set laststatus=2
set listchars=tab:>·,space:·
set list
set tabstop=4
set expandtab
set hlsearch


" highlight >= 80
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%80v.\+/

" quick key
nmap w= :vertical resize +3<CR>
nmap w- :vertical resize -3<CR>
nmap W= :resize +2<CR>
nmap W- :resize -2<CR>

" show nerdtree
nmap NT :NERDTree<CR>

" pre tab
nmap bp :bp<CR> 
nmap bn :bn<CR>

" no highlight
nmap ln :nohl<CR>

if !has('gui_running')
    set t_Co=256


endif

