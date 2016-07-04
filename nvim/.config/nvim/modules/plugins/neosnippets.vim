"neosnippet
let g:neosnippet#enable_snipmate_compatibility = 1
"tab to expand
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
