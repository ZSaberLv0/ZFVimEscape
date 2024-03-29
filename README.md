# ZFVimEscape

vim script to escape special chars

modified and enhanced from [tpope's vim-unimpaired](https://github.com/tpope/vim-unimpaired)

if you like my work, [check here](https://github.com/ZSaberLv0?utf8=%E2%9C%93&tab=repositories&q=ZFVim) for a list of my vim plugins,
or [buy me a coffee](https://github.com/ZSaberLv0/ZSaberLv0)


# how to use

1. install by [vim-plug](https://github.com/junegunn/vim-plug) or any other plugin manager:

    ```
    Plug 'ZSaberLv0/ZFVimCmdMenu' " only required if you want the util method ZF_VimEscape()
    Plug 'ZSaberLv0/ZFVimEscape'
    ```

1. have your own key mapping in your vimrc (accorrding the functions below)
1. select something that you want to encode or decode
1. press the mapped key to encode or decode the selected text


# functions

## util method

```
xnoremap your_keymap <esc>:call ZF_VimEscape('v')<cr>
nnoremap your_keymap :call ZF_VimEscape()<cr>
```

popup a menu to choose encode/decode function

## xml/html

```
xmap your_keymap <Plug>ZFVimEscape_xml_encode
xmap your_keymap <Plug>ZFVimEscape_xml_decode
```

```
<abc>    <=>    &lt;abc&gt;
```

## json

```
xmap your_keymap <Plug>ZFVimEscape_json_encode
xmap your_keymap <Plug>ZFVimEscape_json_decode
```

```
a"  b\c    <=>    a\"\tb\\c
```

## Unicode

```
xmap your_keymap <Plug>ZFVimEscape_unicode_encode
xmap your_keymap <Plug>ZFVimEscape_unicode_decode
```

```
a的b    <=>    \u0061\u8476\u0062
```

## UTF-8

```
xmap your_keymap <Plug>ZFVimEscape_utf8_encode
xmap your_keymap <Plug>ZFVimEscape_utf8_decode
```

```
a的b    <=>    61E79A8462
```

## Binary String

similar to `UTF-8` above, but let you choose the encoding

```
xmap your_keymap <Plug>ZFVimEscape_binstr_encode
xmap your_keymap <Plug>ZFVimEscape_binstr_decode
```

## URL

```
xmap your_keymap <Plug>ZFVimEscape_url_encode
xmap your_keymap <Plug>ZFVimEscape_url_decode
```

```
http://a的b    <=>    http%3A%2F%2Fa%E7%9A%84b
```

## C string

```
xmap your_keymap <Plug>ZFVimEscape_cstring_encode
xmap your_keymap <Plug>ZFVimEscape_cstring_decode
```

```
\a  b    <=>    \\a\tb
```

## base64

```
xmap your_keymap <Plug>ZFVimEscape_base64_encode
xmap your_keymap <Plug>ZFVimEscape_base64_decode
```

```
abcd    <=>    YWJjZA==
```

## timestamp

```
xmap your_keymap <Plug>ZFVimEscape_timestamp_encode
xmap your_keymap <Plug>ZFVimEscape_timestamp_decode
```

```
1544607765    <=>    2018-12-12 17:42:45
5C10D815      <=>    2018-12-12 17:42:45
0x5C10D815    <=>    2018-12-12 17:42:45
```

## crc32

```
xmap your_keymap <Plug>ZFVimEscape_crc32_encode
```

```
abcd    =>    ED82CD11
```

## md5

```
xmap your_keymap <Plug>ZFVimEscape_md5_encode
```

```
abcd    =>    E2FC714C4727EE9395F324CD2E7F331F
```

## qrcode

```
xmap your_keymap <Plug>ZFVimEscape_qrcode_encode
```

