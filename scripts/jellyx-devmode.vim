""" Run as `vim -S jellyx-devmode.vim', or `rake devmode'

if exists('jellyx_devmode')
    finish
endif
let jellyx_devmode = 1


""" Commands

command! JellyX call JellyX()
function! JellyX()
    :source <sfile>:p:h/colors/jellyx.vim
endfunction

" Quick colorscheme switcher
function! <SID>ToggleColorscheme()
    if g:colors_name == 'jellyx'
        :colorscheme xoria256
    elseif g:colors_name == 'xoria256'
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
