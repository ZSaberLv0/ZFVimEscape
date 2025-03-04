
if has('python3')
    let s:python_EOF='python3 << python_EOF'
elseif has('python')
    let s:python_EOF='python << python_EOF'
else
    let s:python_EOF=''
endif

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


" ================================================================================
let g:ZFVimEscapeRunningMode = ''
let g:ZFVimEscapeRunningIndex = -1
let s:state = {}

function! s:TransformAction(algorithm, str)
    return {a:algorithm}(a:str)
endfunction

function! s:Transform_normal(algorithm) abort
    let g:ZFVimEscapeRunningMode = 'normal'
    let g:ZFVimEscapeRunningIndex = 0

    silent exe 'normal! `[v`]y'
    let @@ = s:TransformAction(a:algorithm, @@)
    normal! gvp

    let g:ZFVimEscapeRunningMode = ''
    let g:ZFVimEscapeRunningIndex = -1
endfunction
function! s:Transform_line(algorithm) abort
    let g:ZFVimEscapeRunningMode = 'line'
    let g:ZFVimEscapeRunningIndex = 0

    silent exe "normal! '[V']y"
    let result = []
    for line in split(@@, "\n")
        call add(result, s:TransformAction(a:algorithm, line))
        let g:ZFVimEscapeRunningIndex += 1
    endfor
    let @@ = join(result, "\n")
    normal! gvp

    let g:ZFVimEscapeRunningMode = ''
    let g:ZFVimEscapeRunningIndex = -1
endfunction
function! s:Transform_block(algorithm) abort
    let g:ZFVimEscapeRunningMode = 'block'
    let g:ZFVimEscapeRunningIndex = 0

    silent exe 'normal! `[\<C-V>`]x'
    let pos = getpos('.')
    let oldPos = copy(pos)
    for line in split(@@, "\n")
        let @@ = s:TransformAction(a:algorithm, line)
        let g:ZFVimEscapeRunningIndex += 1
        normal! P
        let pos[1] += 1
        call setpos('.', pos)
    endfor
    call setpos('.', oldPos)

    let g:ZFVimEscapeRunningMode = ''
    let g:ZFVimEscapeRunningIndex = -1
endfunction

function! s:Transform(algorithm,type) abort
    let sel_save = &selection
    let cb_save = &clipboard
    set selection=inclusive clipboard-=unnamed clipboard-=unnamedplus
    let reg_save = @@

    if a:type ==# 'line'
        call s:Transform_line(a:algorithm)
    elseif a:type ==# 'block'
        call s:Transform_block(a:algorithm)
    else
        call s:Transform_normal(a:algorithm)
    endif

    let @@ = reg_save
    let &selection = sel_save
    let &clipboard = cb_save
endfunction

function! ZF_VimEscape_TransformOpfunc(type) abort
    return s:Transform(s:encode_algorithm, a:type)
endfunction

function! s:TransformSetup(algorithm) abort
    let s:encode_algorithm = a:algorithm
    let &opfunc = 'ZF_VimEscape_TransformOpfunc'
    return 'g@'
endfunction

function! ZFVimEscapeMapTransform(name, algorithm)
    exe 'nnoremap <expr> <Plug>ZFVimEscape_'     .a:name.' <SID>TransformSetup("'.a:algorithm.'")'
    exe 'xnoremap <expr> <Plug>ZFVimEscape_'     .a:name.' <SID>TransformSetup("'.a:algorithm.'")'
    exe 'nnoremap <expr> <Plug>ZFVimEscape_line_'.a:name.' <SID>TransformSetup("'.a:algorithm.'")."_"'
endfunction

" ================================================================================
" xml
function! ZF_xml_encode(str)
    let str = a:str
    let str = substitute(str,'&','\&amp;','g')
    let str = substitute(str,'<','\&lt;','g')
    let str = substitute(str,'>','\&gt;','g')
    let str = substitute(str,'"','\&quot;','g')
    return str
endfunction
call ZFVimEscapeMapTransform('xml_encode', 'ZF_xml_encode')

function! ZF_xml_entity_decode(str)
    let str = a:str
    let str = substitute(str,'\c&#\%(0*38\|x0*26\);','&amp;','g')
    let str = substitute(str,'\c&#\(\d\+\);','\=nr2char(submatch(1))','g')
    let str = substitute(str,'\c&#\(x\x\+\);','\=nr2char("0".submatch(1))','g')
    let str = substitute(str,'\c&apos;',"'",'g')
    let str = substitute(str,'\c&quot;','"','g')
    let str = substitute(str,'\c&gt;','>','g')
    let str = substitute(str,'\c&lt;','<','g')
    let str = substitute(str,'\C&\(\%(amp;\)\@!\w*\);','\=nr2char(get(g:ZFVimEscape_html_entities,submatch(1),63))','g')
    return substitute(str,'\c&amp;','\&','g')
endfunction
function! ZF_xml_decode(str)
    let str = substitute(a:str,'<\%([[:alnum:]-]\+=\%("[^"]*"\|''[^'']*''\)\|.\)\{-\}>','','g')
    return ZF_xml_entity_decode(str)
endfunction
call ZFVimEscapeMapTransform('xml_decode', 'ZF_xml_decode')

" ================================================================================
" json
function! ZF_json_encode(str)
    let str = a:str
    let str = substitute(str,'\\','\\\\','g')
    let str = substitute(str,'"','\\"','g')
    let str = substitute(str,"\t",'\\t','g')
    let str = substitute(str,"\r",'\\r','g')
    let str = substitute(str,"\n",'\\n','g')
    return str
endfunction
call ZFVimEscapeMapTransform('json_encode', 'ZF_json_encode')

function! ZF_json_decode(str)
    let str = a:str
    let str = substitute(str,'\\\\','\\','g')
    let str = substitute(str,'\\"','"','g')
    let str = substitute(str,'\\t',"\t",'g')
    let str = substitute(str,'\\r',"\r",'g')
    let str = substitute(str,'\\n',"\n",'g')
    return str
endfunction
call ZFVimEscapeMapTransform('json_decode', 'ZF_json_decode')

" ================================================================================
" unicode
" convert between `\u0061\u0062` and `ab`
function! ZF_unicode_encode(str)
    let str = a:str
    if !exists('g:ZFVimEscape_unicode_lowercase') || g:ZFVimEscape_unicode_lowercase != 1
        let x = 'X'
    else
        let x = 'x'
    endif
    let str = substitute(str, '\(.\)', '\=printf("\\u%04' . x . '", char2nr(submatch(1)))', 'g')
    return str
endfunction
call ZFVimEscapeMapTransform('unicode_encode', 'ZF_unicode_encode')

function! ZF_unicode_decode(str)
    let str = a:str
    let str = substitute(str, '\\u\(\x\x\x\x\)', '\=nr2char("0x" . submatch(1))', 'g')
    return str
endfunction
call ZFVimEscapeMapTransform('unicode_decode', 'ZF_unicode_decode')

" ================================================================================
" UTF8
" convert between `6162` and `ab`
function! ZF_utf8_encode_char(x, str, prefix)
    let n = char2nr(a:str)
    if n <= 0x7F
        return printf('%s%02' . a:x, a:prefix, n)
    elseif n <= 0x07FF
        let c0 = or(and(n / 64, 0x1F), 0xC0)
        let c1 = or(and(n, 0x3F), 0x80)
        return printf('%s%02' . a:x . '%s%02' . a:x, a:prefix, c0, a:prefix, c1)
    elseif n <= 0xFFFF
        let c0 = or(and(n / 4096, 0x0F), 0xE0)
        let c1 = or(and(n / 64, 0x3F), 0x80)
        let c2 = or(and(n, 0x3F), 0x80)
        return printf('%s%02' . a:x . '%s%02' . a:x . '%s%02' . a:x, a:prefix, c0, a:prefix, c1, a:prefix, c2)
    endif
    return str
endfunction
function! ZF_utf8_encode(str)
    let str = a:str
    if !exists('g:ZFVimEscape_utf8_lowercase') || g:ZFVimEscape_utf8_lowercase != 1
        let x = 'X'
    else
        let x = 'x'
    endif
    let str = substitute(str, '\(.\)', '\=ZF_utf8_encode_char("' . x . '", submatch(1),"")', 'g')
    return str
endfunction
call ZFVimEscapeMapTransform('utf8_encode', 'ZF_utf8_encode')

function! ZF_utf8_decode(str)
    let str = substitute(a:str, '[^0-9a-zA-Z]', '', 'g')
    let len = len(str)
    let p = 0
    let ret = ''
    while p < len
        if p + 2 <= len
                    \ && ('0x' . strpart(str, p, 2)) <= 0x7F
            let ret .= nr2char('0x' . strpart(str, p, 2))
            let p += 2
        elseif p + 4 <= len
                    \ && ('0x' . strpart(str, p, 2)) <= 0xDF
                    \ && ('0x' . strpart(str, p + 2, 2)) <= 0xBF
            let c = 0
            let c = or(c, and('0x' . strpart(str, p, 2), 0x1F) * float2nr(pow(2, 6)) )
            let c = or(c, and('0x' . strpart(str, p + 2, 2), 0x3F) )
            let ret .= nr2char(c)
            let p += 4
        elseif p + 6 <= len
                    \ && ('0x' . strpart(str, p, 2)) <= 0xEF
                    \ && ('0x' . strpart(str, p + 2, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 4, 2)) <= 0xBF
            let c = 0
            let c = or(c, and('0x' . strpart(str, p, 2), 0x0F) * float2nr(pow(2, 12)) )
            let c = or(c, and('0x' . strpart(str, p + 2, 2), 0x3F) * float2nr(pow(2, 6)) )
            let c = or(c, and('0x' . strpart(str, p + 4, 2), 0x3F) )
            let ret .= nr2char(c)
            let p += 6
        elseif p + 8 <= len
                    \ && ('0x' . strpart(str, p, 2)) <= 0xF7
                    \ && ('0x' . strpart(str, p + 2, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 4, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 6, 2)) <= 0xBF
            let ret .= '?'
            let p += 8
        elseif p + 10 <= len
                    \ && ('0x' . strpart(str, p, 2)) <= 0xFB
                    \ && ('0x' . strpart(str, p + 2, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 4, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 6, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 8, 2)) <= 0xBF
            let ret .= '?'
            let p += 10
        elseif p + 12 <= len
                    \ && ('0x' . strpart(str, p, 2)) <= 0xFD
                    \ && ('0x' . strpart(str, p + 2, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 4, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 6, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 8, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 10, 2)) <= 0xBF
            let ret .= '?'
            let p += 12
        elseif p + 14 <= len
                    \ && ('0x' . strpart(str, p, 2)) <= 0xFE
                    \ && ('0x' . strpart(str, p + 2, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 4, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 6, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 8, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 10, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 12, 2)) <= 0xBF
            let ret .= '?'
            let p += 14
        elseif p + 16 <= len
                    \ && ('0x' . strpart(str, p, 2)) <= 0xFF
                    \ && ('0x' . strpart(str, p + 2, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 4, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 6, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 8, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 10, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 12, 2)) <= 0xBF
                    \ && ('0x' . strpart(str, p + 14, 2)) <= 0xBF
            let ret .= '?'
            let p += 16
        else
            break
        endif
    endwhile
    return ret
endfunction
call ZFVimEscapeMapTransform('utf8_decode', 'ZF_utf8_decode')

" ================================================================================
" binary string
" convert between '6162' and 'ab' with specified encoding
let s:binstr_prevenc = 'utf-8'
function! ZF_binstr_encode(str, ...)
    let encoding = get(a:, 1, '')
    if empty(encoding)
        if g:ZFVimEscapeRunningIndex == 0
            let encoding = get(s:state, 'binstr_prevenc', '')
            if empty(encoding)
                call inputsave()
                let encoding = input('[Python] input encoding: ', s:binstr_prevenc)
                call inputrestore()
            endif
        else
            let encoding = get(s:state, 'binstr_prevenc', '')
        endif
        if empty(encoding)
            return a:str
        endif
        let s:state['binstr_prevenc'] = encoding
        let s:binstr_prevenc = encoding
    endif
    let str = a:str
    if !empty(s:python_EOF)
        try

execute s:python_EOF
import string
import vim
str = vim.eval('str')
encoding = vim.eval('encoding')
result = str.encode(encoding)
vim.command("let result='%s'"% result.hex())
python_EOF

        catch
            echomsg 'Warning: unable to convert string with encoding: ' . encoding
            return a:str
        endtry
    else
        echomsg 'Warning: binstr_encode require python'
        return a:str
    endif
    if !exists('g:ZFVimEscape_binstr_lowercase') || g:ZFVimEscape_binstr_lowercase != 1
        let result = toupper(result)
    endif
    return result
endfunction
call ZFVimEscapeMapTransform('binstr_encode', 'ZF_binstr_encode')

function! ZF_binstr_decode(str, ...)
    let encoding = get(a:, 1, '')
    if empty(encoding)
        if g:ZFVimEscapeRunningIndex == 0
            let encoding = get(s:state, 'binstr_prevenc', '')
            if empty(encoding)
                call inputsave()
                let encoding = input('[Python] input encoding: ', s:binstr_prevenc)
                call inputrestore()
            endif
        else
            let encoding = get(s:state, 'binstr_prevenc', '')
        endif
        if empty(encoding)
            return a:str
        endif
        let s:state['binstr_prevenc'] = encoding
        let s:binstr_prevenc = encoding
    endif
    let str = a:str
    if !empty(s:python_EOF)
        try

execute s:python_EOF
import string
import array
import vim
str = vim.eval('str')
encoding = vim.eval('encoding')
result = bytearray.fromhex(str).decode(encoding)
vim.command("let result='%s'"% result)
python_EOF

        catch
            echomsg 'Warning: unable to convert string with encoding: ' . encoding
            return a:str
        endtry
    else
        echomsg 'Warning: binstr_decode require python'
        return a:str
    endif
    return result
endfunction
call ZFVimEscapeMapTransform('binstr_decode', 'ZF_binstr_decode')

" ================================================================================
" url
function! ZF_url_encode_char(str)
    if !exists('g:ZFVimEscape_url_lowercase') || g:ZFVimEscape_url_lowercase != 1
        let x = 'X'
    else
        let x = 'x'
    endif
    return ZF_utf8_encode_char(x, a:str, '%')
endfunction
function! ZF_url_encode(str)
    let str = a:str
    let str = substitute(str, '\([^A-Za-z0-9_.~-]\)', '\=ZF_url_encode_char(submatch(1))', 'g')
    return str
endfunction
call ZFVimEscapeMapTransform('url_encode', 'ZF_url_encode')

function! s:url_decode_string(str)
    let str = substitute(a:str, '%', '', 'g')
    return ZF_utf8_decode(str)
endfunction
function! ZF_url_decode(str)
    let str = a:str
    let ret = ''
    while str != ''
        let tmp = substitute(str, '^\(.\{-}\)\(%\x\x\)\+.\{-}$', '\1', 'g')
        if tmp != ''
            let ret = ret . tmp
            let str = strpart(str, strlen(tmp))
        endif
        let tmp = substitute(str, '^\(\(%\x\x\)\+\).\{-}$', '\1', 'g')
        if tmp != ''
            let ret = ret . s:url_decode_string(tmp)
            let str = strpart(str, strlen(tmp))
        endif
    endwhile
    return ret
endfunction
call ZFVimEscapeMapTransform('url_decode', 'ZF_url_decode')

" ================================================================================
" C string
function! ZF_cstring_encode(str)
    let map = {"\n": 'n', "\r": 'r', "\t": 't', "\b": 'b', "\f": '\f', '"': '"', '\': '\'}
    return substitute(a:str,"[\001-\033\\\\\"]",'\="\\".get(map,submatch(0),printf("%03o",char2nr(submatch(0))))','g')
endfunction
call ZFVimEscapeMapTransform('cstring_encode', 'ZF_cstring_encode')

function! ZF_cstring_decode(str)
    let map = {'n': "\n", 'r': "\r", 't': "\t", 'b': "\b", 'f': "\f", 'e': "\e", 'a': "\001", 'v': "\013", "\n": ''}
    let str = a:str
    if str =~ '^\s*".\{-\}\\\@<!\%(\\\\\)*"\s*\n\=$'
        let str = substitute(substitute(str,'^\s*\zs"','',''),'"\ze\s*\n\=$','','')
    endif
    return substitute(str,'\\\(\o\{1,3\}\|x\x\{1,2\}\|u\x\{1,4\}\|.\)','\=get(map,submatch(1),submatch(1) =~? "^[0-9xu]" ? nr2char("0".substitute(submatch(1),"^[Uu]","x","")) : submatch(1))','g')
endfunction
call ZFVimEscapeMapTransform('cstring_decode', 'ZF_cstring_decode')

" ================================================================================
" base64
let g:ZFVimEscape_base64_table_default = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
if !exists('g:ZFVimEscape_base64_table')
    let g:ZFVimEscape_base64_table = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
endif

let g:ZFVimEscape_base64_pad_default = '='
if !exists('g:ZFVimEscape_base64_pad')
    let g:ZFVimEscape_base64_pad=g:ZFVimEscape_base64_pad_default
endif

function! ZF_base64_encode(str)
    if has('python3')

python3 << base64_encode_python3
import string
import base64
import vim
str = vim.eval('a:str')
tableDefault = vim.eval('g:ZFVimEscape_base64_table_default . g:ZFVimEscape_base64_pad_default')
table = vim.eval('g:ZFVimEscape_base64_table . g:ZFVimEscape_base64_pad')
result = base64.b64encode(str.encode()).translate(bytes.maketrans(tableDefault.encode(), table.encode())).decode()
vim.command("let result='%s'"% result)
base64_encode_python3

    elseif has('python')

python << base64_encode_python2
import string
import base64
import vim
str = vim.eval('a:str')
tableDefault = vim.eval('g:ZFVimEscape_base64_table_default . g:ZFVimEscape_base64_pad_default')
table = vim.eval('g:ZFVimEscape_base64_table . g:ZFVimEscape_base64_pad')
result = base64.b64encode(str).translate(string.maketrans(tableDefault, table))
vim.command("let result='%s'"% result)
base64_encode_python2

    else
        echomsg 'Warning: base64_encode require python'
        return a:str
    endif
    return result
endfunction
call ZFVimEscapeMapTransform('base64_encode', 'ZF_base64_encode')

function! ZF_base64_decode(str)
    let str = a:str
    while len(str) % 4 != 0
        let str .= '='
    endwhile
    if has('python3')

python3 << base64_decode_python3
import string
import base64
import vim
str = vim.eval('str')
tableDefault = vim.eval('g:ZFVimEscape_base64_table_default . g:ZFVimEscape_base64_pad_default')
table = vim.eval('g:ZFVimEscape_base64_table . g:ZFVimEscape_base64_pad')
result = base64.b64decode(str.encode().translate(bytes.maketrans(table.encode(), tableDefault.encode()))).decode()
vim.command("let result='%s'"% result)
base64_decode_python3

    elseif has('python')

python << base64_decode_python2
import string
import base64
import vim
str = vim.eval('str')
tableDefault = vim.eval('g:ZFVimEscape_base64_table_default . g:ZFVimEscape_base64_pad_default')
table = vim.eval('g:ZFVimEscape_base64_table . g:ZFVimEscape_base64_pad')
result = base64.b64decode(str.translate(string.maketrans(table, tableDefault)))
vim.command("let result='%s'"% result)
base64_decode_python2

    else
        echomsg 'Warning: base64_decode require python'
        return a:str
    endif
    return result
endfunction
call ZFVimEscapeMapTransform('base64_decode', 'ZF_base64_decode')

" ================================================================================
" timestamp, format: 2018-10-10 12:34:56
if !exists('g:ZFVimEscape_timestamp_pattern')
    let g:ZFVimEscape_timestamp_pattern='%Y-%m-%d %H:%M:%S'
endif
function! ZF_timestamp_encode(str)
    let str = substitute(a:str, '^[ \t\r\n]*\(.\{-}\)[ \t\r\n]*$', '\1', 'g')
    let str = a:str
    if !empty(s:python_EOF)
        try

execute s:python_EOF
import time
import vim
str = vim.eval('str')
result = time.mktime(time.strptime(str, vim.eval('g:ZFVimEscape_timestamp_pattern')))
vim.command('let result="%d"'% result)
python_EOF

        catch
            echomsg 'Warning: ' . str . ' does not match pattern: ' . g:ZFVimEscape_timestamp_pattern
            return a:str
        endtry
    else
        echomsg 'Warning: timestamp_encode require python'
        return a:str
    endif
    return result
endfunction
call ZFVimEscapeMapTransform('timestamp_encode', 'ZF_timestamp_encode')

function! ZF_timestamp_decode(str)
    let str = substitute(a:str, '^[ \t\r\n]*\(.\{-}\)[ \t\r\n]*$', '\1', 'g')
    if match(str, '^0[xX]') >= 0 || match(str, '[a-fA-F]') >= 0 || len(str) == 8
        let str = substitute(str, '^0[xX]', '', '')
        let str = str2nr(str, 16)
    endif
    return strftime(g:ZFVimEscape_timestamp_pattern, str)
endfunction
call ZFVimEscapeMapTransform('timestamp_decode', 'ZF_timestamp_decode')

" ================================================================================
" crc32
function! ZF_crc32_encode(str)
    if has('python3')

python3 << crc32_encode_python3
import binascii
import vim
str = vim.eval('a:str')
result = binascii.crc32(str.encode())
vim.command("let result='%s'"% result)
crc32_encode_python3

    elseif has('python')

python << crc32_encode_python2
import binascii
import vim
str = vim.eval('a:str')
result = binascii.crc32(str)
vim.command("let result='%s'"% result)
crc32_encode_python2

    else
        echomsg 'Warning: crc32_encode require python'
        return a:str
    endif
    let result = printf('%08x', result)
    if !exists('g:ZFVimEscape_crc32_lowercase') || g:ZFVimEscape_crc32_lowercase != 1
        let result = toupper(result)
    endif
    return result
endfunction
call ZFVimEscapeMapTransform('crc32_encode', 'ZF_crc32_encode')

" ================================================================================
" md5
function! ZF_md5_encode(str)
    try
        let ret = MD5String(a:str)
        if !exists('g:ZFVimEscape_md5_lowercase') || !g:ZFVimEscape_md5_lowercase
            let ret = toupper(ret)
        endif
        return ret
    catch
        echomsg 'Warning: md5_encode require retorillo/md5.vim'
        return a:str
    endtry
endfunction
call ZFVimEscapeMapTransform('md5_encode', 'ZF_md5_encode')

" ================================================================================
" qrcode
if !exists('g:ZFVimEscape_qrcode_bg')
    let g:ZFVimEscape_qrcode_bg='██'
endif
if !exists('g:ZFVimEscape_qrcode_fg')
    let g:ZFVimEscape_qrcode_fg='  '
endif
function! ZF_qrcode_encode(str)
    if !empty(s:python_EOF)
        try

execute s:python_EOF
import pyqrcode
import vim
str = vim.eval('a:str')
data = pyqrcode.create(str)
result = data.text()
vim.command("let result='%s'"% result)
python_EOF

        catch
            echomsg 'Warning: qrcode_encode require python pyqrcode'
            return a:str
        endtry
    else
        echomsg 'Warning: qrcode_encode require python'
        return a:str
    endif
    let result=substitute(result, '0', 'zfbgzf', 'g')
    let result=substitute(result, '1', 'zffgzf', 'g')
    let result=substitute(result, 'zfbgzf', g:ZFVimEscape_qrcode_bg, 'g')
    let result=substitute(result, 'zffgzf', g:ZFVimEscape_qrcode_fg, 'g')
    if !exists('g:ZFVimEscape_qrcode_noboarderfix') || !g:ZFVimEscape_qrcode_noboarderfix
        let result=substitute(result, "\n", "\|\n", 'g')
    endif
    return result
endfunction
call ZFVimEscapeMapTransform('qrcode_encode', 'ZF_qrcode_encode')

" ================================================================================
" util function, usage
" xnoremap your_key <esc>:call ZF_VimEscape('v')<cr>
function! ZF_VimEscape(...)
    let mode='n'
    if a:0 > 0
        let mode=a:1
    endif

    let funcs = [
                \   ['x', '+ XML', 'xml'],
                \   ['s', '+ JSON', 'json'],
                \   ['u', '+ Unicode', 'unicode'],
                \   ['8', '+ UTF-8', 'utf8'],
                \   ['i', '+ Binary String', 'binstr'],
                \   ['l', '+ URL', 'url'],
                \   ['c', '+ C string', 'cstring'],
                \   ['b', '+ Base64', 'base64'],
                \   ['t', '+ Timestamp', 'timestamp'],
                \ ]
    for item in funcs
        call ZF_VimCmdMenuAdd({
                    \   'showKeyHint' : 1,
                    \   'key' : item[0],
                    \   'text' : item[1],
                    \   'command' : 'call ZF_VimEscapeMenuCallback("' . item[1] . '", "' . item[2] .  '", "' . mode . '")',
                    \ })
    endfor

    let funcs = [
                \   ['3', '  CRC32 encode', 'crc32_encode'],
                \   ['5', '  MD5 encode', 'md5_encode'],
                \   ['r', '  QRCode encode', 'qrcode_encode'],
                \ ]
    for item in funcs
        call ZF_VimCmdMenuAdd({
                    \   'showKeyHint' : 1,
                    \   'key' : item[0],
                    \   'text' : item[1],
                    \   'callback' : 'ZF_VimEscapeCallback',
                    \   'callbackParam0' : item[2],
                    \   'callbackParam1' : mode,
                    \ })
    endfor

    call ZF_VimCmdMenuAdd({
                \   'showKeyHint' : 1,
                \   'key' : 'z',
                \   'text' : '### reset state ###',
                \   'callback' : 'ZF_VimEscapeReset',
                \ })

    call ZF_VimCmdMenuShow({'headerText' : 'escape method:'})
endfunction

function! ZF_VimEscapeReset()
    let s:state = {}
endfunction
function! ZF_VimEscapeMenuCallback(name, func, mode)
    call ZF_VimCmdMenuAdd({
                \   'showKeyHint' : 0,
                \   'key' : 'e',
                \   'text' : '(e)ncode',
                \   'callback' : 'ZF_VimEscapeCallback',
                \   'callbackParam0' : a:func . '_encode',
                \   'callbackParam1' : a:mode,
                \ })
    call ZF_VimCmdMenuAdd({
                \   'showKeyHint' : 0,
                \   'key' : 'd',
                \   'text' : '(d)ecode',
                \   'callback' : 'ZF_VimEscapeCallback',
                \   'callbackParam0' : a:func . '_decode',
                \   'callbackParam1' : a:mode,
                \ })

    call ZF_VimCmdMenuShow({'headerText' : a:name})
endfunction

function! ZF_VimEscapeCallback(f, mode)
    if a:mode=='n'
        normal! ggvG$
    else
        normal! gv
    endif
    execute "normal \<Plug>ZFVimEscape_" . a:f
endfunction

