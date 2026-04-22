# Emacs Keybindings Reference

## Custom Bindings

### Runner (`runner.el`)
| Key       | Action                                      |
|-----------|---------------------------------------------|
| `C-c x`   | Save and run current file (C, C++, Python, Go) |
| `F5`      | Save and run current file                   |
| `q`       | Close `*run*` buffer/window (inside run buffer) |

### Timer / Stopwatch (`stopwatch.el`)
| Key         | Action                      |
|-------------|-----------------------------|
| `C-c t s`   | Start timer                 |
| `C-c t p`   | Pause / continue timer      |
| `C-c t q`   | Stop timer                  |
| `C-c t t`   | Set countdown timer         |
| `C-c t 2`   | Set 20-minute timer         |

### Terminal (`packages.el`)
| Key       | Action         |
|-----------|----------------|
| `C-c v`   | Open vterm     |

### PDF Reader (`pdf-tools`)

#### Navigation
| Key                   | Action                                      |
|-----------------------|---------------------------------------------|
| `SPC` / `DEL`         | Scroll down / up by page                    |
| `n` / `p`             | Next / previous page                        |
| `C-n` / `C-p`         | Scroll down / up by line                    |
| `C-f` / `C-b`         | Scroll right / left                         |
| `M-<` / `M->`         | Jump to first / last page                   |
| `M-g g`               | Jump to page number                         |
| `l` / `r`             | Navigate back / forward in history          |
| `o`                   | Document outline                            |
| `m` / `'`             | Store / retrieve position in register       |
| `F`                   | Pick a link and jump                        |
| `f`                   | Search links incrementally                  |

#### Search
| Key       | Action                          |
|-----------|---------------------------------|
| `C-s`     | Incremental search forward      |
| `C-r`     | Incremental search backward     |
| `M-s o`   | Display all matching lines      |

#### Zoom & Display
| Key           | Action                          |
|---------------|---------------------------------|
| `+` / `-`     | Zoom in / out                   |
| `0`           | Reset zoom                      |
| `H` / `W` / `P` | Fit to height / width / page  |
| `R`           | Rotate page                     |
| `s b`         | Trim margins to bounding box    |
| `s r`         | Reset margin trimming           |

#### Annotations
| Key           | Action                          |
|---------------|---------------------------------|
| `C-c C-a t`   | Add text annotation             |
| `C-c C-a h`   | Add highlight annotation        |
| `C-c C-a u`   | Add underline annotation        |
| `C-c C-a s`   | Add squiggly annotation         |
| `C-c C-a o`   | Add strikeout annotation        |
| `C-c C-a m`   | Add markup annotation           |
| `C-c C-a l`   | List annotations                |
| `C-c C-f`     | Toggle annotation follow mode   |

#### Bookmarks
| Key           | Action                          |
|---------------|---------------------------------|
| `C-x r m`     | Set bookmark (with name)        |
| `C-x r b`     | Jump to bookmark                |
| `C-x r l`     | List all bookmarks              |
| `d` then `x`  | Delete bookmark (inside list)   |

#### Misc
| Key           | Action                          |
|---------------|---------------------------------|
| `C-c C-p`     | Print document                  |
| `q`           | Quit window                     |

### EPUB / EPUD Reader (`nov`, default)
| Key                   | Action                              |
|-----------------------|-------------------------------------|
| `SPC`                 | Scroll down, then move to next chapter |
| `S-SPC` / `DEL`       | Scroll up, then move to previous chapter |
| `n` / `]`             | Next chapter                        |
| `p` / `[`             | Previous chapter                    |
| `t`                   | Table of contents                   |
| `TAB`                 | Next link                           |
| `S-TAB` / `M-TAB`     | Previous link                       |
| `l` / `r`             | Back / forward in history           |
| `g`                   | Rerender current chapter            |
| `<home>` / `<end>`    | Beginning / end of buffer           |

### Spell Check (`packages.el`)
| Key     | Action                         |
|---------|--------------------------------|
| `M-$`   | Correct word (jinx / ispell)   |

---

## Eglot (LSP) — Built-in Bindings
| Key           | Action                          |
|---------------|---------------------------------|
| `M-.`         | Find definition                 |
| `M-,`         | Go back                         |
| `M-?`         | Find references                 |
| `C-c C-r`     | Rename symbol                   |
| `C-c C-a`     | Code actions                    |
| `C-c C-d`     | Show documentation              |
| `C-c C-f`     | Format buffer                   |
| `C-c !`       | List errors (flymake)           |
| `M-n` / `M-p` | Next / previous error           |

### Completion Preview (active in LSP buffers)
| Key     | Action                     |
|---------|----------------------------|
| `TAB`   | Accept completion preview  |

---

## Magit
| Key       | Action             |
|-----------|--------------------|
| `C-x g`   | Magit status       |
| `C-x M-g` | Magit dispatch     |

---

## Navigation & Movement

### Basic Cursor
| Key           | Action                        |
|---------------|-------------------------------|
| `C-f` / `C-b` | Forward / backward char       |
| `C-n` / `C-p` | Next / previous line          |
| `M-f` / `M-b` | Forward / backward word       |
| `C-a` / `C-e` | Beginning / end of line       |
| `M-a` / `M-e` | Beginning / end of sentence   |
| `C-v` / `M-v` | Scroll down / up (page)       |
| `M-<` / `M->` | Beginning / end of buffer     |

### Fast Movement
| Key           | Action                              |
|---------------|-------------------------------------|
| `M-g g`       | Go to line number                   |
| `M-g M-g`     | Go to line number                   |
| `C-l`         | Recenter (cycle: center/top/bottom) |
| `C-M-f`       | Forward sexp                        |
| `C-M-b`       | Backward sexp                       |
| `C-M-d`       | Down into sexp                      |
| `C-M-u`       | Up out of sexp                      |
| `C-M-n`       | Forward list                        |
| `C-M-p`       | Backward list                       |
| `M-{` / `M-}` | Backward / forward paragraph        |
| `C-x [`       | Previous page                       |
| `C-x ]`       | Next page                           |

### Search
| Key       | Action                              |
|-----------|-------------------------------------|
| `C-s`     | Incremental search forward (isearch) |
| `C-r`     | Incremental search backward         |
| `C-M-s`   | Regex search forward                |
| `C-M-r`   | Regex search backward               |
| `M-%`     | Query replace                       |
| `C-M-%`   | Query replace regex                 |

---

## Buffers & Windows

### Buffers
| Key           | Action                        |
|---------------|-------------------------------|
| `C-x b`       | Switch buffer (fido-vertical) |
| `C-x C-b`     | List buffers                  |
| `C-x k`       | Kill buffer                   |
| `C-x C-f`     | Find / open file              |
| `C-x C-s`     | Save buffer                   |
| `C-x C-w`     | Save buffer as                |
| `C-x s`       | Save some buffers             |

### Windows
| Key           | Action                        |
|---------------|-------------------------------|
| `C-x o`       | Switch to other window        |
| `C-x 0`       | Delete current window         |
| `C-x 1`       | Delete other windows          |
| `C-x 2`       | Split window below            |
| `C-x 3`       | Split window right            |
| `C-x ^`       | Enlarge window vertically     |
| `C-x {` / `C-x }` | Shrink / enlarge horizontally |
| `C-x +`       | Balance windows               |

---

## Editing

### Cut / Copy / Paste
| Key       | Action                        |
|-----------|-------------------------------|
| `C-SPC`   | Set mark                      |
| `C-w`     | Kill (cut) region             |
| `M-w`     | Copy region                   |
| `C-y`     | Yank (paste)                  |
| `M-y`     | Cycle yank ring               |
| `C-x C-x` | Swap point and mark           |

### Kill & Delete
| Key       | Action                        |
|-----------|-------------------------------|
| `C-k`     | Kill line                     |
| `M-d`     | Kill word forward             |
| `M-DEL`   | Kill word backward            |
| `C-M-k`   | Kill sexp                     |

### Undo
| Key       | Action    |
|-----------|-----------|
| `C-/`     | Undo      |
| `C-x u`   | Undo      |
| `C-g C-/` | Redo (break undo chain with `C-g`, then `C-/` replays forward) |
| `M-;`     | Comment / uncomment region or line |

### Case & Transform
| Key       | Action                |
|-----------|-----------------------|
| `M-u`     | Upcase word           |
| `M-l`     | Downcase word         |
| `M-c`     | Capitalize word       |
| `C-x C-u` | Upcase region         |
| `C-x C-l` | Downcase region       |

---

## Help
| Key       | Action                        |
|-----------|-------------------------------|
| `C-h k`   | Describe key                  |
| `C-h f`   | Describe function             |
| `C-h v`   | Describe variable             |
| `C-h m`   | Describe current modes        |
| `C-h b`   | List all keybindings          |
| `C-h i`   | Open Info manual              |
