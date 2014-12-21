" ~/.vim/ftplugin/php.vim

"autocmd filetype php :setl expandtab
"autocmd filetype php :setl fileencodings=euc-jp,utf8,iso-2022-jp,sjis
"autocmd filetype php :setl tags=~/.vim/tags_php
"autocmd filetype php :setl makeprg=php\ -l\ %
"autocmd filetype php :setl errorformat=%m\ in\ %f\ on\ line\ %l
setl fileencodings=euc-jp,utf8,iso-2022-jp,sjis
setl tags=~/.vim/tags_php
setl makeprg=php\ -l\ %
setl errorformat=%m\ in\ %f\ on\ line\ %l

"------------------------------------
"  taglist Setting
"------------------------------------
"autocmd filetype php :let Tlist_Ctags_Cmd="/usr/bin/ctags"
"autocmd filetype php :let Tlist_Show_One_File=1
"autocmd filetype php :let Tlist_Exit_OnlyWindow=1
"autocmd filetype php :let Tlist_Use_Right_Window=1
"autocmd filetype php :let tlist_php_settings='php;c:class;d:constant;f:function'
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Use_Right_Window=1
let tlist_php_settings='php;c:class;d:constant;f:function'
