<p align="center">
  <img alt="rust1" width=100px src="https://user-images.githubusercontent.com/67513038/213436632-820a1675-98d9-4626-979d-be63c60cdcb7.png" />
  <img alt="ferris" width=45px src="https://user-images.githubusercontent.com/67513038/213403213-1b1b3efc-ce53-4825-9dfc-e9bf2956a7f4.svg" />
  <img alt="nvim" width=80px src="https://github.com/YoungHaKim7/Cpp_Training/assets/67513038/ce74ee64-b16b-47aa-8afd-84c36d69a6b8" />
  <img alt="vim" width=45px src="https://user-images.githubusercontent.com/67513038/154793161-089985a0-db1d-457b-8dfd-26386af89158.png" />
</p>

<hr>

# nvim_gy_NvChad_version
- https://docs.rockylinux.org/ko/books/nvchad/template_chadrc/
- https://docs.rockylinux.org/ko/books/nvchad/install_nvchad/

# 설치 설명서

- https://docs.rockylinux.org/ko/books/nvchad/template_chadrc/
```
// 처음설치로 만들기 & 세팅하다가 작살나면 캐쉬삭제 해주기

// 백업
mkdir ~/backup_nvim
cp -r ~/.config/nvim ~/backup_nvim
cp -r ~/.local/share/nvim ~/backup_nvim
cp -r ~/.cache/nvim ~/backup_nvim

// 캐쉬삭제
rm -rf ~/.config/nvim
rm -rf ~/.local/share/nvim
rm -rf ~/.cache/nvim

```

# Rust LSP

- https://www.reddit.com/r/neovim/comments/11clka0/adding_rust_to_lazyvim/

# 내 LunarVim Setting

- https://github.com/YoungHaKim7/lvim_Rust_AI_Setting

<hr>
:
# lsp-inlayhints Color Setting(LspInlayHint로 해야 Comment까지 안됨)

```
:hi LspInlayHint guifg=#35638f guibg=#420517


// 요즘 쓰는 색 240106
:hi LspInlayHint guifg=#35638f guibg=#420517
:hi Comment guifg=#35638f guibg=#420517
```

# Nvim - Surround

- https://github.com/kylechui/nvim-surround 

```
    Old text                    Command         New text
--------------------------------------------------------------------------------
    surr*ound_words             ysiw)           (surround_words)
    *make strings               ys$"            "make strings"
    [delete ar*ound me!]        ds]             delete around me!
    remove <b>HTML t*ags</b>    dst             remove HTML tags
    'change quot*es'            cs'"            "change quotes"
    <b>or tag* types</b>        csth1<CR>       <h1>or tag types</h1>
    delete(functi*on calls)     dsf             function calls

```
<hr>

- My setting Key
```
-- Normal Mode
key_map("n", "<leader>W", ":wqall<CR>", opts)
key_map("n", "<leader>e", ":Neotree<CR>", opts)
key_map("n", "<leader>t", ":TroubleToggle<CR>", opts)
key_map("n", "<leader>o", ":SymbolsOutline<CR>", opts)

-- buffer new
key_map("n", "<leader>bt", ":tabe<CR>", opts)
key_map("n", "<leader>btt", ":terminal<CR>", opts)
-- buffer kill
key_map("n", "<leader>bd", ":bd<CR>", opts)
-- buffer next,previous tabe
key_map("n", "L", "gt", opts)
key_map("n", "H", "gT", opts)

-- Insert Mode
key_map("i","jk", "<Esc>", opts)

 ["j"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },
    ["k"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
    ["<Up>"] = { 'v:count || mode(1)[0:1] == "no" ? "k" : "gk"', "Move up", opts = { expr = true } },
    ["<Down>"] = { 'v:count || mode(1)[0:1] == "no" ? "j" : "gj"', "Move down", opts = { expr = true } },

    -- new buffer
    ["<leader>b"] = { "<cmd> enew <CR>", "New buffer" },
    ["<leader>ch"] = { "<cmd> NvCheatsheet <CR>", "Mapping cheatsheet" },
    ["L"] = { "<cmd> bn <CR>", "Next Buffer" },
    ["H"] = { "<cmd> bp <CR>", "Previous Buffer" },

    ["<leader>fm"] = {
      function()
        vim.lsp.buf.format { async = true }
      end,
      "LSP formatting",
    },
```
