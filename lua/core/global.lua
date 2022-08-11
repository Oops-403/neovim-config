local sys_name = vim.loop.os_uname().sysname
local global = {}

function global:init_variables()
	self.is_linux = sys_name == 'Linux'
	self.is_mac = sys_name == 'Darwin'
	-- ~
	self.home = os.getenv('HOME')
	-- ~/.cache/nvim/
	self.cache_dir = self.home .. '/' .. '.cache' .. '/' .. 'nvim' .. '/'
	-- ~/.config/nvim
	self.vim_path = vim.fn.stdpath('config')
	-- ~/.config/nvim/modules
	self.modules_dir = self.vim_path .. '/' .. 'modules'
	-- ~/.local/share/nvim/site/
	self.data_dir = string.format('%s/site/', vim.fn.stdpath('data'))
end

global:init_variables()

return global
