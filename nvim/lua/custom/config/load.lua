local function read_files_in_dir(dir_path)
	local handle = vim.loop.fs_scandir(dir_path)
	if not handle then
		print("Failed to open directory: " .. dir_path)
		return
	end

	local files = {}
	while true do
		local name, type = vim.loop.fs_scandir_next(handle)
		if not name then break end
		if type == "file" then
			table.insert(files, name)
		end
	end

	return files
end

local dir_path = vim.fn.expand("~/.config/nvim/lua/custom/config")
local files = read_files_in_dir(dir_path)

if files then
	local i = 0
	for _, file in ipairs(files) do
		if file ~= "load.lua" then
			vim.cmd(":so " .. dir_path .. "/" .. file)
		end
		i = i + 1
	end
end
