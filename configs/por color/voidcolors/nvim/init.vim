"   o8o               o8o      .                    o8o                    
"   `"'               `"'    .o8                    `"'                    
"  oooo  ooo. .oo.   oooo  .o888oo      oooo    ooo oooo  ooo. .oo.  .oo.   
"  `888  `888P"Y88b  `888    888         `88.  .8'  `888  `888P"Y88bP"Y88b  
"   888   888   888   888    888          `88..8'    888   888   888   888  
"   888   888   888   888    888 .   .o.   `888'     888   888   888   888  
"  o888o o888o o888o o888o   '888i'  Y8P    `8'     o888o o888o o888o o888o 
"
" Configuraciones basicas
set laststatus=0
set ruler
syntax on
set title
set number
set relativenumber
set cursorline
set mouse=a
set scrolloff=4
set tabstop=8
set laststatus=2
set noshowmode

" Color del renglon
hi CursorLine cterm=NONE ctermbg=8
hi CursorLineNr ctermbg=7 ctermfg=11
hi LineNr ctermbg=0 ctermfg=7

" Mapeos
map WW :wq<Return>
map WS :w<Return>
map WQ :q<Return>

" Statusbar
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'v'  : 'Visual',
    \ '^V' : 'V·Bloque',
    \ 'V'  : 'V·Linea',
    \ 's'  : 'Seleccionar',
    \ 'S'  : 'S·Linea',
    \ '^S' : 'S·Bloque',
    \ 'i'  : 'Insertar',
    \ 'R'  : 'Reemplazar',
    \ 'Rv' : 'V·Reemplazar',
    \ 'c'  : 'Comando',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Consola',
    \ 'rm' : 'Mas',
    \ 'r?' : 'Confirmar',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

function! InsertStatuslineColor(mode)
 if a:mode == 'i'
    hi statusline ctermfg=6 ctermbg=4
  elseif a:mode == 'r'
    hi statusline ctermfg=9 ctermbg=1
  else
    hi statusline ctermfg=8 ctermbg=15
  endif
endfunction

au InsertEnter * call InsertStatuslineColor(v:insertmode)
au InsertLeave * hi statusline ctermfg=8 ctermbg=15

set statusline=%4*%m
set statusline+=%3*\ \%f\ 
set statusline+=%2*\ \%y%r%w\ 
set statusline+=%1*\ \%=
set statusline+=%5*\ Linea:%l/%L\ 
set statusline+=%0*\ \%{toupper(g:currentmode[mode()])}\ 

hi StatusLine ctermbg=15 ctermfg=8
hi StatusLineNC ctermbg=8 ctermfg=15
hi User1 ctermbg=8 ctermfg=0
hi User2 ctermbg=14 ctermfg=0
hi User3 ctermbg=11 ctermfg=0
hi User4 ctermbg=9 ctermfg=0
hi User5 ctermbg=10 ctermfg=0

