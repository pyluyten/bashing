This plugin is a fork of Tim Pope vim-rsi plugin with following changes
i do not care shadowing a vim mapping.

- Control+d : use readline mapping. To delete indent use Control+g d
- Control+k : use readline mapping. To insert dygrah use Control+g k
- Control+t : use readline mapping. To insert insert, Control+g t
- Control+y : yank previous text

# what is vim-rsi

vim-rsi makes vim user readline (bash) shortcuts in
- insert mode
- command mode

# mappings

vim mapping are only indicated when different from *bashing*
bash mappings are only indicated when different from *bashing*

| key | bashing                  | former vim insert mode | bash           |
|-----|--------------------------|------------------------|----------------|
| a   | beg of line              | yank previous text     |                |
| b   | backw char               |                        |                |
| c   |                          |                        | intr           |
| d   | del next char            | remove indent          |                |
| e   | end of line              | insert char below      |                |
| f   | forward char             |                        |                |
| g   | prefix (see below)       |                        | ENTER          |
| h   | del prev char            |                        |                |
| i   | TAB                      |                        |                |
| j   | ENTER                    |                        |                |
| k   | kill line                | insert digraph         |                |
| l   | copy char below          |                        | clear          |
| m   | ENTER                    |                        |                |
| n   | next keyword             |                        | next command   |
| o   | normal mode command      |                        | ENTER          |
| p   | previous keyword         |                        | prev command   |
| q   |                          |                        | restart output |
| r   | register                 |                        | history        |
| s   |                          |                        | stop output    |
| t   | swap chars               | indent                 |                |
| u   | delete up to beg of line |                        |                |
| v   | quoted insert            |                        | ?              |
| w   | del prev word            |                        |                |
| x   | CtrlX Mode               |                        | swap position  |
| y   | yank previous text       | insert char above      | paste          |
| z   |                          |                        | suspend        |

Some mappings are shaddowed. These func need a direct mapping to prove useful.

| key | bashing              | former vim insert mode |
|-----|----------------------|------------------------|
| j   | copy character above | newline                |
| l   | copy character below |                        |

These other func are fine with a prefix mapping, control+g...

| C-g + C- | function           |
|----------|--------------------|
| a        | yank previous text |
| d        | remove indent      |
| k        | enter digraph      |
| t        | indent             |

# License

This plugin uses the same license than vim.
