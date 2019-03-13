**bash shortcuts in vim insert mode**

These mappings make vim insert mode offer use bash shortcuts,
like Control+k to delete up to end of line.
Some bash shortcuts already exist in vim : C-h, C-w, C-u...

Sometimes we shadow an existing vim shortcut.
For example C-a is beginning of line in bash
we shadow "insert previously inserted text."
so this is remaped to C-g a.

Alt mappings are not handled yet because
depending on your env different mappings are necessary.

# mappings

vim mapping are only indicated when different from *bashing*
bash mappings are only indicated when different from *bashing*

| key | bashing                  | former vim insert mode | bash           |
|-----|--------------------------|------------------------|----------------|
| a   | beg of line              | yank previous text     |                |
| b   | backw char               |                        |                |
| c   | escape                   |                        | intr           |
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
| o   | jump                     |                        | ENTER          |
| p   | previous keyword         |                        | prev command   |
| q   | *control+v*              |                        | restart output |
| r   | register                 |                        | history        |
| s   | *cv*                     |                        | stop output    |
| t   | swap chars               | indent                 |                |
| u   | delete up to beg of line |                        |                |
| v   | quoted insert            |                        | ?              |
| w   | del prev word            |                        |                |
| x   | CtrlX Mode               |                        | swap position  |
| y   | yank previous text       | insert char above      | paste          |
| z   | insert char above        |                        | suspend        |

Regarding mappings which are shadowed, use Control+g

| prefix C-g + key | function           |
|------------------|--------------------|
| a                | yank previous text |
| d                | remove indent      |
| k                | enter digraph      |
| t                | indent             |

