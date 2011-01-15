""" Run as `vim -S jellyx-dev.vim', or `rake devmode'

if exists('g:jellyx_devmode')
    finish
endif
let g:jellyx_devmode = 1

" source the development script
execute 'source colors/jellyx.vim'

" Don't go totally blind
syn match vimHighlight "\<HI\>" skipwhite nextgroup=vimHiBang,@vimHighlightCluster

" Quick colorscheme switcher
noremap <Leader><Leader> :call <SID>ToggleColorscheme()<CR>
function! <SID>ToggleColorscheme()
    if g:colors_name == 'jellyx'
        :colorscheme jellybeans
    else
        :source /usr/local/project/vimfiles/jellyx.vim/colors/jellyx.vim
    endif
endfunction
