-- vim.keymap.set("n", "", vim.cmd.Ex)
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle)

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<S-h>", "<cmd>bprev<CR>")
vim.keymap.set("n", "<S-l>", "<cmd>bnext<CR>")

-- vim.keymap.set("i", "jk", "<Esc>")

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move focus to the down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move focus to the up window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })

-- vim.keymap.set("x", "p", '"_dP', { noremap = true })
-- vim.keymap.set({ "n", "x" }, "<leader>d", '"_d', { noremap = true })
-- vim.keymap.set({ "n", "x" }, "<leader>diw", '"_diw', { noremap = true })
-- vim.keymap.set("n", "cc", '"_cc', { noremap = true })
vim.keymap.set("x", "<leader>d", '"_d', { noremap = true })

vim.keymap.set("n", "<C-Up>", "<cmd>resize +2<CR>")
vim.keymap.set("n", "<C-Down>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<CR>")
vim.keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<CR>")

vim.keymap.set("v", ">", ">gv^")
vim.keymap.set("v", "<", "<gv^")

vim.keymap.set("n", "<leader>qq", ":qa<CR>")
-- vim.keymap.set("n", "<leader>p", "<cmd>lua vim.lsp.buf.format()<CR>")
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")
vim.keymap.set({ "n" }, "<leader>t", ":ToggleTerm<CR>")
-- vim.keymap.set({ "n", "t" }, "<C-/>", ":ToggleTerm<CR>")

-- Example remap to compile and run the current Java file
-- This assumes your main class has the same name as the file
-- vim.api.nvim_set_keymap("n", "<F5>", ":w<CR>:terminal javac % && java % <CR>i", { noremap = true, silent = true })

-- Store the terminal buffer ID globally
-- local java_term_buf = nil
--
-- function RunJavaToggle()
-- 	local file = vim.fn.expand("%:p")
-- 	local class = vim.fn.expand("%:t:r")
--
-- 	-- If terminal exists and visible -> close it (toggle off)
-- 	if java_term_buf and vim.api.nvim_buf_is_valid(java_term_buf) then
-- 		local term_win = vim.fn.bufwinnr(java_term_buf)
-- 		if term_win ~= -1 then
-- 			vim.cmd(term_win .. "close")
-- 			return
-- 		end
-- 	end
--
-- 	-- Save file before running
-- 	vim.cmd("w")
--
-- 	-- Reuse existing terminal if buffer still valid
-- 	if java_term_buf and vim.api.nvim_buf_is_valid(java_term_buf) then
-- 		vim.cmd("botright split")
-- 		vim.api.nvim_set_current_buf(java_term_buf)
-- 	else
-- 		vim.cmd("botright split | terminal")
-- 		java_term_buf = vim.api.nvim_get_current_buf()
-- 	end
--
-- 	-- Clear and run the Java code
-- 	local cmd = "clear && javac " .. file .. " && java " .. class .. "\n"
-- 	vim.fn.chansend(vim.b.terminal_job_id, cmd)
-- end
--
-- -- Map F5 to toggle + run
-- vim.keymap.set("n", "<F5>", RunJavaToggle, { noremap = true, silent = true })
