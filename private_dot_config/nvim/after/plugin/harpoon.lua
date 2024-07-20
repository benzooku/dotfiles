local harpoon = require('harpoon')
harpoon:setup()


vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-7>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-8>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-9>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-0>", function() harpoon:list():select(4) end)

vim.keymap.set("n", "<C-ä>", function() harpoon:list():remove() end)
-- vim.keymap.set("n", "<C-0>", function() harpoon:list():set(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-+>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-#>", function() harpoon:list():next() end)
