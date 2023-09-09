require("mason").setup()

local registry = require("mason-registry")

-- --- snip ---

-- :h mason-registry.refresh()
registry.refresh(function ()
    -- This callback is called when the local registry is reasonably up to date.
    -- Interacting with the registry, such as getting packages, can be done with
    -- reasonable certainty that they can be loaded.
end)

-- You can also refresh the registry synchronously (i.e. blocks execution) if working with callbacks is difficult.
-- Note that this freezes the editor if the registry needs to be updated (otherwise it yields back immediately).
registry.refresh()

