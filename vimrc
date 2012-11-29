" Remove the toolbar on gvim
set guioptions-=T
" Remove the scrollbars on gvim
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set guioptions-=b
" Set the font for gvim
set guifont=Ubuntu\ Mono\ 13

" Set the color scheme
colorscheme zenburn

" Highlight the search term
set hlsearch

" Set up the color for extra whitespaces
highlight ExtraWhitespace ctermbg=darkgreen guibg=lightgreen
" Show trailing whitespace:
match ExtraWhitespace /\s\+$/

" Turns the filetype plugin on so we can have language specific options ant
" indentation
filetype plugin indent on

" Search for the tag file in the current directory and if not found, continue
" up the tree
set tags=./tags;/

" let unsaved buffers to be hidden without raising a warning
set hidden

" to upercase the word under the cursor
nnoremap <leader>u bgUee

" easily edit the vimrc file
nnoremap <leader>v :tabedit $MYVIMRC<CR>

" puts the autocmd inside a group so it does not source multiple times
augroup augroup_vimrc
	" remove all autocommands for the current group.
	autocmd!
	" sources the vimrc file when it is saved
	autocmd BufWritePost .vimrc source $MYVIMRC
augroup END
