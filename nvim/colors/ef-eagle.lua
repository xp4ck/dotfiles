local lush = require('lush')
local hsl = lush.hsl

local palette = {
  bg_main     = hsl("#f1ecd0"),
  fg_main     = hsl("#231a1f"),
  bg_dim      = hsl("#e4dbc0"),
  fg_dim      = hsl("#685f53"),
  bg_alt      = hsl("#cec8ae"),
  fg_alt      = hsl("#524874"),

  red         = hsl("#882000"),
  green       = hsl("#226022"),
  yellow      = hsl("#6b4500"),
  blue        = hsl("#113384"),
  magenta     = hsl("#822478"),
  cyan        = hsl("#125a7f"),

  bg_added    = hsl("#b0e7b0"),
  bg_removed  = hsl("#f8c8a6"),
  bg_changed  = hsl("#f5e690"),

  border      = hsl("#7f785f"),
  cursor      = hsl("#774400"),
}

local theme = lush(function()
  return {
      Normal      { fg = palette.fg_main, bg = palette.bg_main },
      Comment     { fg = palette.fg_dim, gui = "italic" },
      Constant    { fg = palette.green },
      String      { fg = palette.green },
      Identifier  { fg = palette.cyan },
      Function    { fg = palette.red },
      Statement   { fg = palette.red, gui = "bold" },
      PreProc     { fg = palette.red },
      Type        { fg = palette.green },
      Special     { fg = palette.blue },
      Underlined  { fg = palette.blue, gui = "underline" },
      Error       { fg = palette.red, bg = palette.bg_removed },
      Todo        { fg = palette.yellow, bg = palette.bg_changed },
      LineNr      { fg = palette.fg_dim },
      CursorLine  { bg = palette.bg_dim },
      Visual      { bg = palette.bg_alt },
      StatusLine  { fg = palette.fg_main, bg = palette.border },
      VertSplit   { fg = palette.border },
  }
end)

return theme
