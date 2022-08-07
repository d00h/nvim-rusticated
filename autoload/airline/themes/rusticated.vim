let g:airline#themes#rusticated#palette = {}

let s:gry0 = [ "#d3d2ce", 252 ]
let s:gry1 = [ "#c3c0ba", 250 ]
let s:gry3 = [ "#444136", 238 ]
let s:red_ = [ "#834742", 95 ]
let s:gren = [ "#2c633f", 22 ]
let s:blue = [ "#3c5a89", 25 ]

let s:nrm1 = [ s:gry0[0] , s:gry3[0] , s:gry0[1] , s:gry3[1] ]
let s:nrm2 = [ s:gry3[0] , s:gry1[0] , s:gry3[1] , s:gry1[1] ]
let s:insr = [ s:gry0[0] , s:gren[0] , s:gry0[1] , s:gren[1] ]
let s:visl = [ s:gry0[0] , s:blue[0] , s:gry0[1] , s:blue[1] ]
let s:rplc = [ s:gry0[0] , s:red_[0] , s:gry0[1] , s:red_[1] ]
let s:inac = [ s:gry3[0] , s:gry1[0] , s:gry3[1] , s:gry1[1] ]

let g:airline#themes#rusticated#palette.normal =
  \ airline#themes#generate_color_map( s:nrm1 , s:nrm2 , s:nrm2 )

let g:airline#themes#rusticated#palette.insert =
  \ airline#themes#generate_color_map( s:insr , s:nrm2 , s:nrm2 )

let g:airline#themes#rusticated#palette.visual =
  \ airline#themes#generate_color_map( s:visl , s:nrm2 , s:nrm2 )

let g:airline#themes#rusticated#palette.replace =
  \ airline#themes#generate_color_map( s:rplc , s:nrm2 , s:nrm2 )

let g:airline#themes#rusticated#palette.inactive =
  \ airline#themes#generate_color_map( s:inac , s:inac , s:inac )

if !get(g:, "loaded_ctrlp", 0)
  finish
endif

let g:airline#themes#rusticated#palette.ctrlp =
  \ airline#extensions#ctrlp#generate_color_map( s:nrm2 , s:nrm1 , s:nrm2 )

