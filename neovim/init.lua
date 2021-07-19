-- Configuration for neovim by Tintin Ho <me@tintinho.net>


-- General Setting
vim.o.termguicolors = true
vim.o.syntax = "on"
vim.o.number = true         -- Show line numbers
vim.o.ruler = true          --  Show row and column of the cursor
vim.o.colorcolumn = "80"    --  column ruler
vim.o.smartindent = true
vim.o.sm = true             --  Auto complete brackets
vim.o.mouse = "a"

-- Searching
vim.o.hlsearch = true       -- Highlight search results
vim.o.ignorecase = true     -- When doing a search, ignore the case of letters
vim.o.smartcase = true      -- Override the ignorecase option if the search pattern contains upper case letters

--- clear the search highlight by pressing ENTER when in Normal mode (Typing commands)
vim.api.nvim_set_keymap("n", "<CR>", ":nohlsearch<CR>/<BS><CR>", { noremap = true })

-- Leader key
vim.g.mapleader = " "

-- Tabs & Spaces
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

-- Buffer
vim.o.hidden = true
vim.api.nvim_set_keymap("n", "<C-N>", ":bnext<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-P>", ":bprev<CR>", { noremap = true })

-- Autocomplete
vim.o.completeopt = "menuone,noselect"

-- Key Mappings

-- ;; can be used as <ESC>
vim.api.nvim_set_keymap("n", ";;", "<ESC>", { noremap = true })
vim.api.nvim_set_keymap("v", ";;", "<ESC>", { noremap = true })
vim.api.nvim_set_keymap("i", ";;", "<ESC>", { noremap = true })

-- Plugins
require("plugins")

-- Colorscheme
vim.cmd "colorscheme miramare"

-- LSP
require("config/lsp")

-- NERDTree shortcut
vim.g.loaded_netrwPlugin = 1
vim.g.NERDTreeRespectWildIgnore = 1
vim.g.NERDTreeShowHidden = 1
vim.cmd [[autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif]]
vim.api.nvim_set_keymap("n", "<leader>a", ":NERDTreeToggle<CR>", { noremap = true })


--Map blankline
vim.g.indent_blankline_char = '┊'
vim.g.indent_blankline_filetype_exclude = { 'help', 'packer' }
vim.g.indent_blankline_buftype_exclude = { 'terminal', 'nofile' }
vim.g.indent_blankline_char_highlight = 'LineNr'
vim.g.indent_blankline_show_trailing_blankline_indent = false

-- Supertab
vim.g.SuperTabDefaultCompletionType = "<c-n>"

-- -- lightline
-- vim.g.lightline = {
--   active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
--   component_function = { gitbranch = 'fugitive#head' },
-- }

-- -- gitsigns
-- require('gitsigns').setup {
--   signs = {
--     add = { hl = 'GitGutterAdd', text = '+' },
--     change = { hl = 'GitGutterChange', text = '~' },
--     delete = { hl = 'GitGutterDelete', text = '_' },
--     topdelete = { hl = 'GitGutterDelete', text = '‾' },
--     changedelete = { hl = 'GitGutterChange', text = '~' },
--   },
-- }

-- treesitter
require('nvim-treesitter.configs').setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true, -- false will disable the whole extension
    additional_vim_regex_highlighting = false,
  },
}

-- -- deoplete
-- vim.g["deoplete#enable_at_startup"] = true

-- --- Use ALE as completion sources for all code.
-- vim.fn["deoplete#custom#option"]("sources", { _ = { "ale" } })
-- vim.fn["deoplete#custom#option"]("auto_complete_delay", 10)


-- Minimap
vim.g.minimap_width = 10
vim.g.minimap_auto_start = 1


require("compe").setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    -- the border option is the same as `|help nvim_open_win|`
    border = { '', '' ,'', ' ', '', '', '', ' ' },
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };
}
