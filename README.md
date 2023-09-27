# colorscheme_template.nvim

This is a color scheme template to create new color schemes.



## Groups
You can set the color for each group or link them to other groups with the same colors.

### Highlight groups
Vim has default [highlight groups](https://neovim.io/doc/user/syntax.html#highlight-blend)
``` :help highlight-groups```

<details>
<summary><h4>Highlight groups</h4></summary>

|Highlight groups       |Comment                                                                                                                             |
|:----------------------|:----------------------------------------------------------------------------------------------------------------------------|
| ColorColumn	        | Used for the columns set with 'colorcolumn'.                                                                                |
| Conceal		        | Placeholder characters substituted for concealed text (see 'conceallevel').                                                 |
| CurSearch	            | Used for highlighting a search pattern under the cursor (see 'hlsearch').                                                   |
| Cursor		        | Character under the cursor.                                                                                                 |
| lCursor		        | Character under the cursor when |language-mapping| is used (see 'guicursor').                                               |
| CursorIM	            | Like Cursor, but used when in IME mode. *CursorIM*                                                                          |
| CursorColumn	        | Screen-column at the cursor, when 'cursorcolumn' is set.                                                                    |
| CursorLine	        | Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.              |
| Directory	            | Directory names (and other special names in listings).                                                                      |
| DiffAdd		        | Diff mode: Added line. |diff.txt|                                                                                           |
| DiffChange	        | Diff mode: Changed line. |diff.txt|                                                                                         |
| DiffDelete	        | Diff mode: Deleted line. |diff.txt|                                                                                         |
| DiffText	            | Diff mode: Changed text within a changed line. |diff.txt|                                                                   |
| EndOfBuffer	        | Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.                            |
| TermCursor	        | Cursor in a focused terminal.                                                                                               |
| TermCursorNC	        | Cursor in an unfocused terminal.                                                                                            |
| ErrorMsg	            | Error messages on the command line.                                                                                         |
| WinSeparator	        | Separators between window splits.                                                                                           |
| Folded		        | Line used for closed folds.                                                                                                 |
| FoldColumn	        | 'foldcolumn'                                                                                                                |
| SignColumn	        | Column where |signs| are displayed.                                                                                         |
| IncSearch	            | 'incsearch' highlighting; also used for the text replaced with ":s///c".                                                    |
| Substitute	        | |:substitute| replacement text highlighting.                                                                                |
| LineNr		        | Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.                           |
| LineNrAbove	        | Line number for when the 'relativenumber' option is set, above the cursor line.                                             |
| LineNrBelow	        | Line number for when the 'relativenumber' option is set, below the cursor line.                                             |
| CursorLineNr	        | Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line.               |
| CursorLineFold	    | Like FoldColumn when 'cursorline' is set for the cursor line.                                                               |
| CursorLineSign        | Like SignColumn when 'cursorline' is set for the cursor line.                                                               |
| MatchParen	        | Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|                      |
| ModeMsg		        | 'showmode' message (e.g., "-- INSERT --").                                                                                  |
| MsgArea		        | Area for messages and cmdline.                                                                                              |
| MsgSeparator	        | Separator for scrolled messages |msgsep|.                                                                                   |
| MoreMsg		        | |more-prompt|                                                                                                               |
| NonText		        | '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.    |
| Normal		        | Normal text.                                                                                                                |
| NormalFloat	        | Normal text in floating windows.                                                                                            |
| FloatBorder	        | Border of floating windows.                                                                                                 |
| FloatTitle	        | Title of floating windows.                                                                                                  |
| NormalNC	            | Normal text in non-current windows.                                                                                         |
| Pmenu		            | Popup menu: Normal item.                                                                                                    |
| PmenuSel	            | Popup menu: Selected item.                                                                                                  |
| PmenuKind	            | Popup menu: Normal item "kind".                                                                                             |
| PmenuKindSel	        | Popup menu: Selected item "kind".                                                                                           |
| PmenuExtra	        | Popup menu: Normal item "extra text".                                                                                       |
| PmenuExtraSel	        | Popup menu: Selected item "extra text".                                                                                     |
| PmenuSbar	            | Popup menu: Scrollbar.                                                                                                      |
| PmenuThumb	        | Popup menu: Thumb of the scrollbar.                                                                                         |
| Question	            | |hit-enter| prompt and yes/no questions.                                                                                    |
| QuickFixLine	        | Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.                     |
| Search		        | Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.                      |
| SpecialKey	        | Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|  |
| SpellBad	            | Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.                     |
| SpellCap	            | Word that should start with a capital. |spell| Combined with the highlighting used otherwise.                               |
| SpellLocal	        | Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.    |
| SpellRare	            | Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.          |
| StatusLine	        | Status line of current window.                                                                                              |
| StatusLineNC	        | Status lines of not-current windows. Note: If this is equal to "StatusLine", Vim will use "^^^" in the status line of the current window.    |
| TabLine		        | Tab pages line, not active tab page label.                                                                                  |
| TabLineFill	        | Tab pages line, where there are no labels.                                                                                  |
| TabLineSel	        | Tab pages line, active tab page label.                                                                                      |
| Title		            | Titles for output from ":set all", ":autocmd" etc.                                                                          |
| Visual		        | Visual mode selection.                                                                                                      |
| VisualNOS	            | Visual mode selection when vim is "Not Owning the Selection".                                                               |
| WarningMsg	        | Warning messages.                                                                                                           |
| Whitespace	        | "nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.                                                    |
| WildMenu	            | Current match in 'wildmenu' completion.                                                                                     |
| WinBar	            | Window bar of current window.                                                                                               |
| WinBarNC	            | Window bar of not-current windows.                                                                                          |

</details>




### Syntax groups
Show default [syntax groups](https://neovim.io/doc/user/syntax.html)
```:help group-name```

<details>
<summary><h4>Syntax groups</h4></summary>

|   |Syntax groups      |Comment                                        |
|:-:|:------------------|:----------------------------------------------|
|*  |Comment	        |any comment                                    |
|*  |Constant	        |any constant                                   |
|   |String		        |a string constant: "this is a string"          |
|   |Character	        |a character constant: 'c', '\n'                |
|   |Number		        |a number constant: 234, 0xff                   |
|   |Boolean	        |a boolean constant: TRUE, false                |
|   |Float		        |a floating point constant: 2.3e10              |
|*  |Identifier	        |any variable name                              |
|   |Function	        |function name (also: methods for classes)      |
|*  |Statement	        |any statement                                  |
|   |Conditional	    |if, then, else, endif, switch, etc.            |
|   |Repeat		        |for, do, while, etc.                           |
|   |Label		        |case, default, etc.                            |
|   |Operator	        |"sizeof", "+", "*", etc.                       |
|   |Keyword	        |any other keyword                              |
|   |Exception	        |try, catch, throw                              |
|*  |PreProc	        |generic Preprocessor                           |
|   |Include	        |preprocessor #include                          |
|   |Define		        |preprocessor #define                           |
|   |Macro		        |same as Define                                 |
|   |PreCondit	        |preprocessor #if, #else, #endif, etc.          |
|*  |Type		        |int, long, char, etc.                          |
|   |StorageClass	    |static, register, volatile, etc.               |
|   |Structure	        |struct, union, enum, etc.                      |
|   |Typedef	        |A typedef                                      |
|*  |Special	        |any special symbol                             |
|   |SpecialChar	    |special character in a constant                |
|   |Tag		        |you can use CTRL-] on this                     |
|   |Delimiter	        |character that needs attention                 |
|   |SpecialComment	    |special things inside a comment                |
|   |Debug		        |debugging statements                           |
|*  |Underlined	        |text that stands out, HTML links               |
|*  |Ignore		        |left blank, hidden  |hl-Ignore|                |
|*  |Error		        |any erroneous construct                        |
|*  |Todo		        |anything that needs extra attention; mostly the keywords TODO FIXME and XXX|

</details>

Highlight groups can be **linked** to other groups - they have the same highlighting!

All groups without a ```*``` are linked to the previous one. For example ```String``` is linked to ```Constant```

### Active Groups

You can also run the ```hitest.vim``` file to see all active groups and their colors
```
:so $VIMRUNTIME/syntax/hitest.vim
```


## Colorscheme structure
```
~/colorscheme_template.nvim
|-- colors/
|    |-- template_dark.lua
|    |-- template_light.lua
|    |-- template_main.lua
|-- lua/
|    |-- colorscheme_template/
|        |-- color_palette.lua
|        |-- config.lua
|        |-- set_theme.lua
|    |-- colorscheme_template.lua
|-- README.md
```

Vim (Neovim) has default color schemes located at ```$VIMRUNTIME/colors/```

Vim (Neovim) will search for specific folders and file types. You can see the list with ```:help runtimepath``` or ```:help rtp```
- color scheme file are stored in a ```colors/``` folder
- Lua plugins are stored in a ```lua/``` folder



