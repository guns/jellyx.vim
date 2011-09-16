""" Run as `vim -S jellyx-devmode.vim', or `rake devmode'

" Quick colorscheme switcher "{{{
let s:Colorschemes = [
    \ '',
    \ 'xoria256',
    \ 'jellybeans',
    \ 'tir_black'
\ ]

noremap <Leader><Leader> :call <SID>ToggleColorscheme()<CR>
function! <SID>ToggleColorscheme()
    if !exists('g:JellyXToggle')
        let g:JellyXToggle = 0
        let init = 1
    endif

    if g:JellyXToggle
        let name = s:Colorschemes[g:JellyXToggle]
        execute 'colorscheme '.name
    else
        let name = 'jellyx [dev]'
        source <sfile>:p:h/colors/jellyx.vim
    endif

    let g:JellyXToggle = (g:JellyXToggle + 1) % len(s:Colorschemes)

    if !exists('l:init')
        call system('command -v growlnotify && growlnotify Colorscheme -m '.name)
    endif
endfunction

call <SID>ToggleColorscheme() "}}}
