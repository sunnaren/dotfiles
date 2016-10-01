" Open the Ag command and place the cursor into the quotes

"nmap ,ag :Ag ""<Left>
"nmap ,af :AgFile ""<Left>

if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif