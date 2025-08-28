-- If there is no `init.lua` in a folder, direct module calls must be made
require("core.autocmds")
require("core.keymaps")

require("config.lazy")

-- `plugins/` has an `init.lua`, so calling just the directory is sufficient
require("plugins")
