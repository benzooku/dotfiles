function ColorMyPencils(color)

    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, "MatchParen", {bg = "#3d375e", fg = "#edecee"})
end

ColorMyPencils()
