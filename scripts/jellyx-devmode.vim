""" Run as `vim -S jellyx-devmode.vim', or `rake devmode'

if exists('g:jellyx_devmode')
    finish
endif
let g:jellyx_devmode = 1


""" Commands

command! JellyX call JellyX()
function! JellyX()
    :source <sfile>:p:h/colors/jellyx.vim
endfunction

" Quick colorscheme switcher
function! <SID>ToggleColorscheme()
    if g:colors_name == 'jellyx'
        :colorscheme jellybeans
    else
        JellyX
    endif
endfunction


""" Go!

" highlight groups after our custom command
syntax match vimHighlight "\<HI\>" skipwhite nextgroup=vimHiBang,@vimHighlightCluster

JellyX

noremap <Leader><Leader> :call <SID>ToggleColorscheme()<CR>
