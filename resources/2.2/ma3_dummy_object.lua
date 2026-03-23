---@diagnostic disable: unused-local
---@meta
--- Ma3 API version: 2.2

-- Object definition
-- ========================================

---@class Handle
--- @field dmxInvertPan boolean | string
--- @field dmxInvertTilt boolean | string
--- @field encInvertPan boolean | string
--- @field encInvertTilt boolean | string
--- @field castShadow boolean | string
--- @field followTarget boolean | string
--- @field gridInvX boolean | string
--- @field gridInvY boolean | string
--- @field gridInvZ boolean | string
Handle = {}

---@return Handle
function Handle:new()
    local instance = setmetatable({}, { __index = Handle })
    instance.dmxInvertPan = nil
    instance.dmxInvertTilt = nil
    instance.encInvertPan = nil
    instance.encInvertTilt = nil
    instance.castShadow = nil
    instance.gridInvX = nil
    instance.gridInvY = nil
    instance.gridInvZ = nil
    return instance
end

---@return Handle handle
function Obj()
    return Handle:new()
end

---@param baseLocationHandle? Handle @Optional
---@param useToAddrIndex? boolean|nil @Optional
---@param isCueObject? boolean @Optional
---@return string numericRootAddress
function Handle:Addr(baseLocationHandle, useToAddrIndex, isCueObject)
    return ""
end

---@param baseLocationHandle? Handle @Optional
---@param returnNamesInQuotes? boolean @Optional
---@return string numericRootAddress
function Handle:AddrNative(baseLocationHandle, returnNamesInQuotes)
    return ""
end

---@return table children
function Handle:Children()
    return {}
end

---@return integer count
function Handle:Count()
    return 0
end

function Handle:Dump()
end

---@param filePath string
---@param fileName string
---@return boolean success
function Handle:Export(filePath, fileName)
    return true
end

---@param propertyName string
---@param roleInteger? integer @Optional
---@return string property
function Handle:Get(propertyName, roleInteger)
    return ""
end

---@return string className
function Handle:GetChildClass()
    return ""
end

---@return string className
function Handle:GetClass()
    return ""
end

---@return table dependencies
function Handle:GetDependencies()
    return {}
end

---@param tokenAndIndex table
---@return number value 
function Handle:GetFader(tokenAndIndex)
    return 0
end

---@param tokenAndIndex table
---@return string text
function Handle:GetFaderText(tokenAndIndex)
    return ""
end

---@return string references
function Handle:GetReferences()
    return ""
end

---@return string uiEditorName
function Handle:GetUIEditor()
    return ""
end

---@return string uiSettingsName
function Handle:GetUISettings()
    return ""
end

---@return boolean hasActivePlayback
function Handle:HasActivePlayback()
    return true
end

---@param filePath string
---@param fileName string
---@return boolean success
function Handle:Import(filePath, fileName)
    return true
end

---@param settingsTable table
function Handle:SetFader(settingsTable)
end

---@param childIndex integer
---@return Handle|nil child
function Handle:Ptr(childIndex)
    return Handle:new()
end

---@param returnName boolean
---@return string address
function Handle:ToAddr(returnName)
    return ""
end