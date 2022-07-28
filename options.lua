return {
  opt = {
    conceallevel = 2, -- enable conceal
    foldenable = true,
    -- foldexpr = "nvim_treesitter#foldexpr()", -- set Treesitter based folding
    foldmethod = "indent",
    foldlevelstart = 2,
    linebreak = true, -- linebreak soft wrap at words
    list = true, -- show whitespace characters
    listchars = { tab = "│→", extends = "⟩", precedes = "⟨", trail = "·", nbsp = "␣" },
    shortmess = vim.opt.shortmess + { I = true },
    showbreak = "↪ ",
    wrap = false, -- soft wrap lines
    -- fix indent for php
    indentexpr = '',
    copyindent = true,
    preserveindent = true,
    autoindent = true,
    smartindent = false
  },
}

