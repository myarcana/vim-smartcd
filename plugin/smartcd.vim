" Title:        smartcd
" Description:  Change the current working directory based on the current buffer.
" Last Change:  24 March 2023
" Maintainer:   My Arcana <https://github.com/myarcana>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if exists("g:loaded_smartcd")
    finish
endif
let g:loaded_smartcd = 1

autocmd BufEnter * :echo expand('%:p:h')
