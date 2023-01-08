local ModuleTemplate = {}
ModuleTemplate.__index = ModuleTemplate

local Packages = script.Packages

function ModuleTemplate.new()
    local self = setmetatable({}, ModuleTemplate)
    return self
end

function ModuleTemplate:DoSomething()
    print("Hello, World!")
end

return ModuleTemplate