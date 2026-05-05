# NVIM CHEATSHEET

## Basics

- Leader = `space`
- Quit buffer = `:q`
- Save = `:w`
- Quit all = `:qa`
- Save & quit = `:wq`
- Exit insert mode = `jk`
- Redo = `CTRL + r`

### Number

- Increment number = `space + +`
- Decrement number = `space + -`

### Sessions

- Restore session for cwd = `space + wr`
- Save session for auto session root dir = `space + ws`

### Tree Sitter

- Select node (press again for parent etc.) = `CTRL + space`

### Autocomplete

- Scroll up/down = `CTRL + j/k`
- Show suggestions = `CTRL + space`
- Close completion window = `CTRL + e`
- Show path folders suggestions = `/` ou `./`

### Comments

- Comment lines at cursor = `gcc`
- Comment lines covered by motion = `gc + {motion}`
- Comment selected line = `{Visual} + gc`

### Surround

- Surround text by char = `ys + {motion}`
  Example -> `ys + iw + "` => surrounds the word with double quotes
- Remove text surrounding = `ds + {motion}`
- Change text surrounding = `cs + {motion}`
  => Works with common surrounding characters

### Git

- See git blame for line = `space + hb`
- Toggle git blame = `space + hB`
- See diff = `space + hd`
- Open LazyGit = `space + lg`

### Flash

- Jump to any word = `s + {start typing word} + {letter displayed}`
- Select whole blocks of tree = `S + {letter displayed}`
- Use flash in search mode = `/ + {type word} + {letter displayed}`
- Use flash with search line = `f + {type search} + {letter displayed}` or move forward with `f` (`F` for backward)
- Use flash with navigate before char = `t + {type search} + {letter displayed}` or move forward with `t` (`T` for backward)
- Delete tree sitter nodes = `d + R + {letter displayed}`
  -> (It could be any operator {c,d,y})
  -> R = remote change
- Remote operation with cursor returning to first place = `d + r + {letter displayed} + {motion}`
  -> for example to remove { 'a', 'b', 'c' } => `d + r + {letter displayed} + { + i + }` (i = inner)

## Basic navigation

### Window

- Split vertically = `space + sv`
- Split window horizontally = `space + sh`
- Make split equal size = `space + se`
- Close current split = `space + sx`
- Move between splits = `CTRL + hjkl`
- Maximize current split = `space +sm`

### Tabs

- Open new tab = `space + to`
- Close tab = `space + tx`
- Next tab = `space +tn`
- Previous tab = `space +tp`
- Move current buffer to new tab = `space + tf`

### File tree

- Toggle file explorer = `space + ee`
- Toggle file explorer on current file = `space + ef`
- Collapse file explorer = `space + ec`
- Refresh file explorer = `space + er`
- Add file = `a`
- Remove file = `x`
- Rename file = `d`
- Open file in vertical split = `CTRL + v`

### File finder (Telescope)

- Find file in directory = `space + ff`
- Find recent file in directory = `space + fr`
- Find string in directory = `space + fs`
- Find string under cursor in directory = `space + fc`
- Find Twig template under selction = `{Visual} + ft`
  -> Need to select the template name + extension: 'edit.html.twig'

## LSP

### Navigation

- Show LSP reference = `space + gR`
- Go to declaration = `space + gD`
- Show LSP definition = `space + gd`
- Show LSP type definition = `space + gt`
- See available code actions = `space + ca`
- Rename = `space + rn`
- Show buffer diagnostic = `space + D`
- Show line diagnostic = `space +d`
- got to next/previous diagnostic = `space + [d` `space + [d`
- Show documentation for what is under cursor = `space + K`
- restart LSP = `space + rs`
- Reload buffer = `:e`

### Commands

- Lint = `space + l`
- Format = `space + mp`

### Trouble

- Toggle diagnostics = `space + xx`
- Trouble location list = `space + xL`

### PHP

- Import class under cursor =`space + ci`
- Import missing class in current file = `space + cm`
- Create class (in php file) = `space + pf`
- Create get/set on property = `space + pg`

# TMUX
