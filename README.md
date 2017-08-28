# ZFVimEscape

vim script to escape special chars

modified and enhanced from [tpope's vim-unimpaired](https://github.com/tpope/vim-unimpaired)


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
vnoremap your_keymap <esc>:call ZF_VimEscape()<cr>
```

popup a menu to choose encode/decode function

## escape xml/html

```
vmap your_keymap <Plug>ZFVimEscape_xml_encode
vmap your_keymap <Plug>ZFVimEscape_xml_decode
```

```
<abc>    <=>    &lt;abc&gt;
```

## escape ANSI encoded Unicode

```
vmap your_keymap <Plug>ZFVimEscape_unicode_encode
vmap your_keymap <Plug>ZFVimEscape_unicode_decode
```

```
a的b    <=>    \u0061\u8476\u0062
```

## escape binary encoded UTF-8

```
vmap your_keymap <Plug>ZFVimEscape_utf8_encode
vmap your_keymap <Plug>ZFVimEscape_utf8_decode
```

```
a的b    <=>    61E79A8462
```

## escape URL

```
vmap your_keymap <Plug>ZFVimEscape_url_encode
vmap your_keymap <Plug>ZFVimEscape_url_decode
```

```
http://a的b    <=>    http%3A%2F%2Fa%E7%9A%84b
```

## escape C string

```
vmap your_keymap <Plug>ZFVimEscape_cstring_encode
vmap your_keymap <Plug>ZFVimEscape_cstring_decode
```

```
\a  b    <=>    \\a\tb
```

## base64

```
vmap your_keymap <Plug>ZFVimEscape_base64_encode
vmap your_keymap <Plug>ZFVimEscape_base64_decode
```

```
abcd    <=>    YWJjZA==
```

you may change the default base64 table by:

```
let g:ZFVimEscape_base64_table="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
```

or change the base64 pad by:

```
let g:ZFVimEscape_base64_pad="="
```

