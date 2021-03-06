return require('packer').startup(function()

    use 'wbthomason/packer.nvim'
    use "ellisonleao/gruvbox.nvim" 
    use 'kyazdani42/nvim-web-devicons'
    use '9mm/vim-closer'
    use 'bling/vim-airline'
    use 'miyakogi/seiya.vim'
    use 'preservim/tagbar'
    use {"akinsho/toggleterm.nvim"}
    use 'sonph/onehalf'
    use 'tpope/vim-surround'
    use 'ap/vim-css-color'
    use "lukas-reineke/lsp-format.nvim"
  --  use 'Valloric/YouCompleteMe'
    use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}
end)
