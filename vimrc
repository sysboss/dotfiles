" I hate spaces in end of lines or tabs anywhere
" match Error /\t\|\s\+$/

" convert tabs to spaces, use 4 spaces (in tab jump and shift)
set ts=4
set expandtab
set sw=4

" .tt and .tt2 are html files for me
au BufNewFile,BufRead *.tt set filetype=html
au BufNewFile,BufRead *.tt2 set filetype=html
au BufNewFile,BufRead *.t set filetype=perl
au BufNewFile,BufRead *.md set filetype=markdown


" experimental, darkred? FFD9D9?
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" original: /\%81v.*/
match OverLength /\%81v.\+/

" Makefiles work with tabs and not spaces
autocmd FileType make setlocal noexpandtab

" remaps to handle tmux stuff
" noremap D <C-Left>
" noremap! D <C-Left>
" noremap C <C-Right>
" noremap! C <C-Right>

" noremap  gT

" set background=light
set background=dark
