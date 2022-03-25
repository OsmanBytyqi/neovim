return require('packer').startup(function()

    use 'wbthomason/packer.nvim'
    use "ellisonleao/gruvbox.nvim" 
    use 'kyazdani42/nvim-web-devicons'
    use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree'.setup {} end
}
end)
