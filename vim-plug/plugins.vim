call plug#begin('~/.config/nvim/autoload/plugged')

" Start Screen
Plug 'glepnir/dashboard-nvim'

" Better Syntax Support
Plug 'sheerun/vim-polyglot'

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" Cool Icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

Plug 'preservim/nerdcommenter'

" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'p00f/nvim-ts-rainbow'

"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'mattn/emmet-vim'
" Better Tabline
Plug 'romgrk/barbar.nvim'

" Terminal
Plug 'voldikss/vim-floaterm'

" File Explorer
Plug 'kyazdani42/nvim-tree.lua'

" Auto Format
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'

" Intellisense
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-compe'
Plug 'glepnir/lspsaga.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'kosayoda/nvim-lightbulb'

" Themes
Plug 'Shadorain/shadotheme'
Plug 'folke/tokyonight.nvim'

" Status Line
Plug 'glepnir/galaxyline.nvim'

" Have the file system follow you around
Plug 'airblade/vim-rooter'

" Auto Change HTML Tags
Plug 'AndrewRadev/tagalong.vim'

" Closetags
Plug 'alvan/vim-closetag'

" Colorizer
Plug 'norcalli/nvim-colorizer.lua'
call plug#end()
