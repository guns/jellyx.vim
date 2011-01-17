""" Run as `vim -S jellyx-dev.vim', or `rake devmode'

if exists('g:jellyx_devmode')
    finish
endif
let g:jellyx_devmode = 1

command! JellyX call JellyX()
function! JellyX()
    :source <sfile>:p:h/colors/jellyx.vim
endfunction

" source the development script now
JellyX

" Don't go totally blind
syntax match vimHighlight "\<HI\>" skipwhite nextgroup=vimHiBang,@vimHighlightCluster

" Quick colorscheme switcher
noremap <Leader><Leader> :call <SID>ToggleColorscheme()<CR>
function! <SID>ToggleColorscheme()
    if g:colors_name == 'jellyx'
        :colorscheme jellybeans
    else
        JellyX
    endif
endfunction
