local neofs = require('neofs')

neofs.setup({
    devicons = true
})

vim.keymap.set("n", "<leader>pv", function()
    neofs.open()
end, {noremap = true})
