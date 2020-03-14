
function! ZFBase64Encode(outFile, inFile, ...)
    let table = get(a:, 1, g:ZFVimEscape_base64_table_default)
    let pad = get(a:, 2, g:ZFVimEscape_base64_pad_default)

    if has('python3')

python3 << base64_encode_python3
import string
import base64
import vim
tableDefault = vim.eval('g:ZFVimEscape_base64_table_default . g:ZFVimEscape_base64_pad_default')
table = vim.eval('table . pad')
inFile = open(vim.eval('a:inFile'), 'rb')
outFile = open(vim.eval('a:outFile'), 'w')
result = base64.b64encode(inFile.read()).translate(bytes.maketrans(tableDefault.encode(), table.encode())).decode()
outFile.write(result)
inFile.close()
outFile.close()
base64_encode_python3

    elseif has('python')

python << base64_encode_python2
import string
import base64
import vim
tableDefault = vim.eval('g:ZFVimEscape_base64_table_default . g:ZFVimEscape_base64_pad_default')
table = vim.eval('table . pad')
inFile = open(vim.eval('a:inFile'), 'rb')
outFile = open(vim.eval('a:outFile'), 'w')
result = base64.b64encode(inFile.read()).translate(string.maketrans(tableDefault, table))
outFile.write(result)
inFile.close()
outFile.close()
base64_encode_python2

    else
        echomsg 'Warning: python not available'
    endif
endfunction

function! ZFBase64Decode(outFile, inFile, ...)
    let table = get(a:, 1, g:ZFVimEscape_base64_table_default)
    let pad = get(a:, 2, g:ZFVimEscape_base64_pad_default)

    if has('python3')

python3 << base64_encode_python3
import string
import base64
import vim
tableDefault = vim.eval('g:ZFVimEscape_base64_table_default . g:ZFVimEscape_base64_pad_default')
table = vim.eval('table . pad')
inFile = open(vim.eval('a:inFile'), 'r')
outFile = open(vim.eval('a:outFile'), 'wb')
result = base64.b64decode(inFile.read().encode().translate(bytes.maketrans(table.encode(), tableDefault.encode())))
outFile.write(result)
inFile.close()
outFile.close()
base64_encode_python3

    elseif has('python')

python << base64_encode_python2
import string
import base64
import vim
tableDefault = vim.eval('g:ZFVimEscape_base64_table_default . g:ZFVimEscape_base64_pad_default')
table = vim.eval('table . pad')
inFile = open(vim.eval('a:inFile'), 'r')
outFile = open(vim.eval('a:outFile'), 'wb')
result = base64.b64decode(inFile.read().translate(string.maketrans(table, tableDefault)))
outFile.write(result)
inFile.close()
outFile.close()
base64_encode_python2

    else
        echomsg 'Warning: python not available'
    endif
endfunction

