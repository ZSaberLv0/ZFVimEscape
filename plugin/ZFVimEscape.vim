" ZFVimEscape.vim - utilities to escape special chars
" Maintainer:   ZSaberLv0 <http://zsaber.com/>
"               modified from tpope's vim-unimpaired
"               (https://github.com/tpope/vim-unimpaired)
" Version:      1.0
if &cp || v:version < 700
    finish
endif
let g:loaded_ZFVimEscape = 1

let s:python_begin = has('python3') ? "python3 << python_end" : "python << python_end"

let g:ZFVimEscape_html_entities = {
            \ 'nbsp':     160, 'iexcl':    161, 'cent':     162, 'pound':    163,
            \ 'curren':   164, 'yen':      165, 'brvbar':   166, 'sect':     167,
            \ 'uml':      168, 'copy':     169, 'ordf':     170, 'laquo':    171,
            \ 'not':      172, 'shy':      173, 'reg':      174, 'macr':     175,
            \ 'deg':      176, 'plusmn':   177, 'sup2':     178, 'sup3':     179,
            \ 'acute':    180, 'micro':    181, 'para':     182, 'middot':   183,
            \ 'cedil':    184, 'sup1':     185, 'ordm':     186, 'raquo':    187,
            \ 'frac14':   188, 'frac12':   189, 'frac34':   190, 'iquest':   191,
            \ 'Agrave':   192, 'Aacute':   193, 'Acirc':    194, 'Atilde':   195,
            \ 'Auml':     196, 'Aring':    197, 'AElig':    198, 'Ccedil':   199,
            \ 'Egrave':   200, 'Eacute':   201, 'Ecirc':    202, 'Euml':     203,
            \ 'Igrave':   204, 'Iacute':   205, 'Icirc':    206, 'Iuml':     207,
            \ 'ETH':      208, 'Ntilde':   209, 'Ograve':   210, 'Oacute':   211,
            \ 'Ocirc':    212, 'Otilde':   213, 'Ouml':     214, 'times':    215,
            \ 'Oslash':   216, 'Ugrave':   217, 'Uacute':   218, 'Ucirc':    219,
            \ 'Uuml':     220, 'Yacute':   221, 'THORN':    222, 'szlig':    223,
            \ 'agrave':   224, 'aacute':   225, 'acirc':    226, 'atilde':   227,
            \ 'auml':     228, 'aring':    229, 'aelig':    230, 'ccedil':   231,
            \ 'egrave':   232, 'eacute':   233, 'ecirc':    234, 'euml':     235,
            \ 'igrave':   236, 'iacute':   237, 'icirc':    238, 'iuml':     239,
            \ 'eth':      240, 'ntilde':   241, 'ograve':   242, 'oacute':   243,
            \ 'ocirc':    244, 'otilde':   245, 'ouml':     246, 'divide':   247,
            \ 'oslash':   248, 'ugrave':   249, 'uacute':   250, 'ucirc':    251,
            \ 'uuml':     252, 'yacute':   253, 'thorn':    254, 'yuml':     255,
            \ 'OElig':    338, 'oelig':    339, 'Scaron':   352, 'scaron':   353,
            \ 'Yuml':     376, 'circ':     710, 'tilde':    732, 'ensp':    8194,
            \ 'emsp':    8195, 'thinsp':  8201, 'zwnj':    8204, 'zwj':     8205,
            \ 'lrm':     8206, 'rlm':     8207, 'ndash':   8211, 'mdash':   8212,
            \ 'lsquo':   8216, 'rsquo':   8217, 'sbquo':   8218, 'ldquo':   8220,
            \ 'rdquo':   8221, 'bdquo':   8222, 'dagger':  8224, 'Dagger':  8225,
            \ 'permil':  8240, 'lsaquo':  8249, 'rsaquo':  8250, 'euro':    8364,
            \ 'fnof':     402, 'Alpha':    913, 'Beta':     914, 'Gamma':    915,
            \ 'Delta':    916, 'Epsilon':  917, 'Zeta':     918, 'Eta':      919,
            \ 'Theta':    920, 'Iota':     921, 'Kappa':    922, 'Lambda':   923,
            \ 'Mu':       924, 'Nu':       925, 'Xi':       926, 'Omicron':  927,
            \ 'Pi':       928, 'Rho':      929, 'Sigma':    931, 'Tau':      932,
            \ 'Upsilon':  933, 'Phi':      934, 'Chi':      935, 'Psi':      936,
            \ 'Omega':    937, 'alpha':    945, 'beta':     946, 'gamma':    947,
            \ 'delta':    948, 'epsilon':  949, 'zeta':     950, 'eta':      951,
            \ 'theta':    952, 'iota':     953, 'kappa':    954, 'lambda':   955,
            \ 'mu':       956, 'nu':       957, 'xi':       958, 'omicron':  959,
            \ 'pi':       960, 'rho':      961, 'sigmaf':   962, 'sigma':    963,
            \ 'tau':      964, 'upsilon':  965, 'phi':      966, 'chi':      967,
            \ 'psi':      968, 'omega':    969, 'thetasym': 977, 'upsih':    978,
            \ 'piv':      982, 'bull':    8226, 'hellip':  8230, 'prime':   8242,
            \ 'Prime':   8243, 'oline':   8254, 'frasl':   8260, 'weierp':  8472,
            \ 'image':   8465, 'real':    8476, 'trade':   8482, 'alefsym': 8501,
            \ 'larr':    8592, 'uarr':    8593, 'rarr':    8594, 'darr':    8595,
            \ 'harr':    8596, 'crarr':   8629, 'lArr':    8656, 'uArr':    8657,
            \ 'rArr':    8658, 'dArr':    8659, 'hArr':    8660, 'forall':  8704,
            \ 'part':    8706, 'exist':   8707, 'empty':   8709, 'nabla':   8711,
            \ 'isin':    8712, 'notin':   8713, 'ni':      8715, 'prod':    8719,
            \ 'sum':     8721, 'minus':   8722, 'lowast':  8727, 'radic':   8730,
            \ 'prop':    8733, 'infin':   8734, 'ang':     8736, 'and':     8743,
            \ 'or':      8744, 'cap':     8745, 'cup':     8746, 'int':     8747,
            \ 'there4':  8756, 'sim':     8764, 'cong':    8773, 'asymp':   8776,
            \ 'ne':      8800, 'equiv':   8801, 'le':      8804, 'ge':      8805,
            \ 'sub':     8834, 'sup':     8835, 'nsub':    8836, 'sube':    8838,
            \ 'supe':    8839, 'oplus':   8853, 'otimes':  8855, 'perp':    8869,
            \ 'sdot':    8901, 'lceil':   8968, 'rceil':   8969, 'lfloor':  8970,
            \ 'rfloor':  8971, 'lang':    9001, 'rang':    9002, 'loz':     9674,
            \ 'spades':  9824, 'clubs':   9827, 'hearts':  9829, 'diams':   9830,
            \ 'apos':      39}

function! s:Transform(algorithm,type)
    let l:sel_save = &selection
    let l:cb_save = &clipboard
    set selection=exclusive clipboard-=unnamed clipboard-=unnamedplus
    let l:reg_save = @@
    if a:type =~ '^\d\+$'
        silent exe 'norm! ^v'.a:type.'$hy'
    elseif a:type =~ '^.$'
        silent exe "normal! `<" . a:type . "`>y"
    elseif a:type == 'line'
        silent exe "normal! '[V']y"
    elseif a:type == 'block'
        silent exe "normal! `[\<C-V>`]y"
    else
        silent exe "normal! `[v`]y"
    endif
    if a:algorithm =~# '^\u\|#'
        let @@ = {a:algorithm}(@@)
    else
        let @@ = s:{a:algorithm}(@@)
    endif
    norm! gvp
    let @@ = l:reg_save
    let &selection = l:sel_save
    let &clipboard = l:cb_save
    if a:type =~ '^\d\+$'
        silent! call repeat#set("\<Plug>ZFVimEscape_line_".a:algorithm,a:type)
    endif
endfunction

function! s:TransformOpfunc(type)
    return s:Transform(s:encode_algorithm, a:type)
endfunction

function! s:TransformSetup(algorithm)
    let s:encode_algorithm = a:algorithm
    let &opfunc = matchstr(expand('<sfile>'), '<SNR>\d\+_').'TransformOpfunc'
endfunction

function! s:ZFVimEscapeMapTransform(algorithm)
    exe 'nnoremap <silent> <Plug>ZFVimEscape_'    .a:algorithm.' :<C-U>call <SID>TransformSetup("'.a:algorithm.'")<CR>g@'
    exe 'xnoremap <silent> <Plug>ZFVimEscape_'    .a:algorithm.' :<C-U>call <SID>Transform("'.a:algorithm.'",visualmode())<CR>'
    exe 'nnoremap <silent> <Plug>ZFVimEscape_line_'.a:algorithm.' :<C-U>call <SID>Transform("'.a:algorithm.'",v:count1)<CR>'
endfunction

" ================================================================================
" xml encode and decode
function! s:xml_encode(str)
    let l:str = a:str
    let l:str = substitute(l:str,'&','\&amp;','g')
    let l:str = substitute(l:str,'<','\&lt;','g')
    let l:str = substitute(l:str,'>','\&gt;','g')
    let l:str = substitute(l:str,'"','\&quot;','g')
    return l:str
endfunction
function! s:xml_entity_decode(str)
    let l:str = a:str
    let l:str = substitute(l:str,'\c&#\%(0*38\|x0*26\);','&amp;','g')
    let l:str = substitute(l:str,'\c&#\(\d\+\);','\=nr2char(submatch(1))','g')
    let l:str = substitute(l:str,'\c&#\(x\x\+\);','\=nr2char("0".submatch(1))','g')
    let l:str = substitute(l:str,'\c&apos;',"'",'g')
    let l:str = substitute(l:str,'\c&quot;','"','g')
    let l:str = substitute(l:str,'\c&gt;','>','g')
    let l:str = substitute(l:str,'\c&lt;','<','g')
    let l:str = substitute(l:str,'\C&\(\%(amp;\)\@!\w*\);','\=nr2char(get(g:ZFVimEscape_html_entities,submatch(1),63))','g')
    return substitute(l:str,'\c&amp;','\&','g')
endfunction
function! s:xml_decode(str)
    let l:str = substitute(a:str,'<\%([[:alnum:]-]\+=\%("[^"]*"\|''[^'']*''\)\|.\)\{-\}>','','g')
    return s:xml_entity_decode(l:str)
endfunction
call s:ZFVimEscapeMapTransform('xml_encode')
call s:ZFVimEscapeMapTransform('xml_decode')

" ================================================================================
" json encode and decode
function! s:json_encode(str)
    let l:str = a:str
    let l:str = substitute(l:str,'\\','\\\\','g')
    let l:str = substitute(l:str,'"','\\"','g')
    let l:str = substitute(l:str,"\t",'\\t','g')
    let l:str = substitute(l:str,"\r",'\\r','g')
    let l:str = substitute(l:str,"\n",'\\n','g')
    return l:str
endfunction
function! s:json_decode(str)
    let l:str = a:str
    let l:str = substitute(l:str,'\\\\','\\','g')
    let l:str = substitute(l:str,'\\"','"','g')
    let l:str = substitute(l:str,'\\t',"\t",'g')
    let l:str = substitute(l:str,'\\r',"\r",'g')
    let l:str = substitute(l:str,'\\n',"\n",'g')
    return l:str
endfunction
call s:ZFVimEscapeMapTransform('json_encode')
call s:ZFVimEscapeMapTransform('json_decode')

" ================================================================================
" unicode encode and decode
" convert between "\u0061\u0062" and "ab"
function! s:unicode_encode(str)
    let l:str = a:str
    let l:str = substitute(l:str, '\(.\)', '\=printf("\\u%04x", char2nr(submatch(1)))', 'g')
    return l:str
endfunction
function! s:unicode_decode(str)
    let l:str = a:str
    let l:str = substitute(l:str, '\\u\(\x\x\x\x\)', '\=nr2char("0x" . submatch(1))', 'g')
    return l:str
endfunction
call s:ZFVimEscapeMapTransform('unicode_encode')
call s:ZFVimEscapeMapTransform('unicode_decode')

" ================================================================================
" UTF8 encode and decode
" convert between "6162" and "ab"
function! s:utf8_encode_char(str, prefix)
    let l:n = char2nr(a:str)
    if n <= 0x7F
        return printf("%s%02X", a:prefix, n)
    elseif n <= 0x07FF
        let l:c0 = or(and(n / 64, 0x1F), 0xC0)
        let l:c1 = or(and(n, 0x3F), 0x80)
        return printf("%s%02X%s%02X", a:prefix, c0, a:prefix, c1)
    elseif n <= 0xFFFF
        let l:c0 = or(and(n / 4096, 0x0F), 0xE0)
        let l:c1 = or(and(n / 64, 0x3F), 0x80)
        let l:c2 = or(and(n, 0x3F), 0x80)
        return printf("%s%02X%s%02X%s%02X", a:prefix, c0, a:prefix, c1, a:prefix, c2)
    endif
    return l:str
endfunction
function! s:utf8_encode(str)
    let l:str = a:str
    let l:str = substitute(l:str, '\(.\)', '\=s:utf8_encode_char(submatch(1),"")', 'g')
    return l:str
endfunction
function! s:utf8_decode_char_1(str)
    return nr2char("0x" . a:str)
endfunction
function! s:utf8_decode_char_2(str)
    let l:n0 = char2nr(nr2char("0x" . substitute(a:str, '\(\x\x\)\x\x', '\1', 'g')))
    let l:n1 = char2nr(nr2char("0x" . substitute(a:str, '\x\x\(\x\x\)', '\1', 'g')))
    let l:n = and(n1, 0x3F)
    let l:n = or(n, and(n0, 0x1F) * 64)
    return nr2char(n)
endfunction
function! s:utf8_decode_char_3(str)
    let l:n0 = char2nr(nr2char("0x" . substitute(a:str, '\(\x\x\)\x\x\x\x', '\1', 'g')))
    let l:n1 = char2nr(nr2char("0x" . substitute(a:str, '\x\x\(\x\x\)\x\x', '\1', 'g')))
    let l:n2 = char2nr(nr2char("0x" . substitute(a:str, '\x\x\x\x\(\x\x\)', '\1', 'g')))
    let l:n = and(n2, 0x3F)
    let l:n = or(n, and(n1, 0x3F) * 64)
    let l:n = or(n, and(n0, 0x0F) * 4096)
    return nr2char(n)
endfunction
function! s:utf8_decode(str)
    let l:str = a:str
    let l:str = substitute(l:str, '[ \t]', '', 'g')
    let l:str = substitute(l:str, '\c\(E\x[89AB]\x[89AB]\x\)', '\=s:utf8_decode_char_3(submatch(1))', 'g')
    let l:str = substitute(l:str, '\c\([CD]\x[89AB]\x\)', '\=s:utf8_decode_char_2(submatch(1))', 'g')
    let l:str = substitute(l:str, '\([01234567]\x\)', '\=s:utf8_decode_char_1(submatch(1))', 'g')
    return l:str
endfunction
call s:ZFVimEscapeMapTransform('utf8_encode')
call s:ZFVimEscapeMapTransform('utf8_decode')

" ================================================================================
" url encode and decode
function! s:url_encode_char(str)
    return s:utf8_encode_char(a:str, '%')
endfunction
function! s:url_encode(str)
    let l:str = a:str
    let l:str = substitute(l:str, '\([^A-Za-z0-9_.~-]\)', '\=s:url_encode_char(submatch(1))', 'g')
    return l:str
endfunction
function! s:url_decode_string(str)
    let l:str = substitute(a:str, '%', '', 'g')
    return s:utf8_decode(l:str)
endfunction
function! s:url_decode(str)
    let l:str = a:str
    let l:ret = ''
    while l:str != ''
        let l:tmp = substitute(l:str, '^\(.\{-}\)\(%\x\x\)\+.\{-}$', '\1', 'g')
        if l:tmp != ''
            let l:ret = l:ret . l:tmp
            let l:str = strpart(l:str, strlen(l:tmp))
        endif
        let l:tmp = substitute(l:str, '^\(\(%\x\x\)\+\).\{-}$', '\1', 'g')
        if l:tmp != ''
            let l:ret = l:ret . s:url_decode_string(l:tmp)
            let l:str = strpart(l:str, strlen(l:tmp))
        endif
    endwhile
    return l:ret
endfunction
call s:ZFVimEscapeMapTransform('url_encode')
call s:ZFVimEscapeMapTransform('url_decode')

" ================================================================================
" C string encode and decode
function! s:cstring_encode(str)
    let l:map = {"\n": 'n', "\r": 'r', "\t": 't', "\b": 'b', "\f": '\f', '"': '"', '\': '\'}
    return substitute(a:str,"[\001-\033\\\\\"]",'\="\\".get(map,submatch(0),printf("%03o",char2nr(submatch(0))))','g')
endfunction
function! s:cstring_decode(str)
    let l:map = {'n': "\n", 'r': "\r", 't': "\t", 'b': "\b", 'f': "\f", 'e': "\e", 'a': "\001", 'v': "\013", "\n": ''}
    let l:str = a:str
    if l:str =~ '^\s*".\{-\}\\\@<!\%(\\\\\)*"\s*\n\=$'
        let l:str = substitute(substitute(l:str,'^\s*\zs"','',''),'"\ze\s*\n\=$','','')
    endif
    return substitute(l:str,'\\\(\o\{1,3\}\|x\x\{1,2\}\|u\x\{1,4\}\|.\)','\=get(map,submatch(1),submatch(1) =~? "^[0-9xu]" ? nr2char("0".substitute(submatch(1),"^[Uu]","x","")) : submatch(1))','g')
endfunction
call s:ZFVimEscapeMapTransform('cstring_encode')
call s:ZFVimEscapeMapTransform('cstring_decode')

" ================================================================================
" base64 encode and decode
let s:ZFVimEscape_base64_table_default="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/="
if !exists("g:ZFVimEscape_base64_table")
    let g:ZFVimEscape_base64_table="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
endif
if !exists("g:ZFVimEscape_base64_pad")
    let g:ZFVimEscape_base64_pad="="
endif
function! s:base64_encode(str)
execute s:python_begin
import string
import base64
import vim
str = vim.eval("a:str")
tableDefault = vim.eval("s:ZFVimEscape_base64_table_default")
table = vim.eval("g:ZFVimEscape_base64_table . g:ZFVimEscape_base64_pad")
result = base64.b64encode(str.encode()).decode().translate(str.maketrans(tableDefault, table))
vim.command("let l:result='%s'"% result)
python_end
    return l:result
endfunction
function! s:base64_decode(str)
    let str = a:str
    while len(str) % 4 != 0
        let str .= '='
    endwhile
execute s:python_begin
import string
import base64
import vim
str = vim.eval("str")
tableDefault = vim.eval("s:ZFVimEscape_base64_table_default")
table = vim.eval("g:ZFVimEscape_base64_table . g:ZFVimEscape_base64_pad")
result = base64.b64decode(str.translate(str.maketrans(table, tableDefault)).encode()).decode()
vim.command("let l:result='%s'"% result)
python_end
    return l:result
endfunction
call s:ZFVimEscapeMapTransform('base64_encode')
call s:ZFVimEscapeMapTransform('base64_decode')

" ================================================================================
" util function, usage
" xnoremap your_key <esc>:call ZF_VimEscape()<cr>
function! ZF_VimEscape(...)
    let mode='n'
    if a:0 > 0
        let mode=a:1
    endif
    let funcs = [
                \     'xml_encode',
                \     'xml_decode',
                \     'json_encode',
                \     'json_decode',
                \     'unicode_encode',
                \     'unicode_decode',
                \     'utf8_encode',
                \     'utf8_decode',
                \     'url_encode',
                \     'url_decode',
                \     'cstring_encode',
                \     'cstring_decode',
                \     'base64_encode',
                \     'base64_decode',
                \ ]
    for i in range(len(funcs))
        call ZF_VimCmdMenuAdd({'showKeyHint':1, 'text':funcs[i], 'callback':'ZF_VimEscapeCallback', 'callbackParam0':funcs[i], 'callbackParam1':mode})
    endfor

    call ZF_VimCmdMenuShow({'headerText':'escape method:'})
endfunction
function! ZF_VimEscapeCallback(f, mode)
    if a:mode=='n'
        normal! ggvG$
    else
        normal! gv
    endif
    execute "normal \<Plug>ZFVimEscape_" . a:f
endfunction

