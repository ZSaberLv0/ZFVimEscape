# ZFVimEscape

vim script to escape special chars

modified and enhanced from [tpope's vim-unimpaired](https://github.com/tpope/vim-unimpaired)


# how to use

1. have your own key mapping in your vimrc (accorrding the functions below)
1. select something that you want to encode or decode
1. press the mapped key to encode or decode the selected text


# functions

## escape xml/html

```
vmap your_keymap <Plug>ZFVimEscape_xml_encode
vmap your_keymap <Plug>ZFVimEscape_xml_encode
```

plain text:
```
<abc>
```
escaped text:
```
&lt;abc&gt;
```

## escape ANSI encoded Unicode

```
vmap your_keymap <Plug>ZFVimEscape_unicode_encode
vmap your_keymap <Plug>ZFVimEscape_unicode_encode
```

plain text:
```
ab
```
escaped text:
```
\u0061\u0062
```

## escape binary encoded UTF-8

```
vmap your_keymap <Plug>ZFVimEscape_utf8_encode
vmap your_keymap <Plug>ZFVimEscape_utf8_encode
```

plain text:
```
ab
```
escaped text:
```
6162
```

## escape URL

```
vmap your_keymap <Plug>ZFVimEscape_url_encode
vmap your_keymap <Plug>ZFVimEscape_url_encode
```

plain text:
```
http://www/<>?!
```
escaped text:
```
http%3A%2F%2Fwww%2F%3C%3E%3F%21
```

## escape C string

```
vmap your_keymap <Plug>ZFVimEscape_cstring_encode
vmap your_keymap <Plug>ZFVimEscape_cstring_encode
```

plain text: (```____``` stands for tab)
```
\a____b
```
escaped text:
```
\\a\tb
```

