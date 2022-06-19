vim.cmd([[
try
  let g:nord_disable_background = v:true
  let g:nord_italic = v:false

  let g:transparent_background = v:true 

  colorscheme gruvbox-material

  hi Normal guibg=none ctermbg=none
  hi NvimTreeNormal guibg=none ctermbg=none
  hi LineNr guibg=none ctermbg=none
  hi Folded guibg=none ctermbg=none
  hi NonText guibg=none ctermbg=none
  hi SpecialKey guibg=none ctermbg=none
  hi VertSplit guibg=none ctermbg=none
  hi SignColumn guibg=none ctermbg=none
  hi EndOfBuffer guibg=none ctermbg=none
  hi NormalFloat guibg=none ctermbg=none
  hi StatusLine guibg=none ctermbg=none
  hi StatusLineNC guibg=none ctermbg=none

catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]])
