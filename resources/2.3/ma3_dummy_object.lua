---@meta
--- Ma3 API version: 2.3

-- Object definition
-- ========================================

---@class Handle
---@field [string] any
Handle = {}
Obj = {}

---@return Handle
function Handle:new()
    local instance = setmetatable({}, { __index = Handle })
    return instance
end

---@return Handle handle
function Obj()
    return Handle:new()
end

---@param baseLocationHandle? Handle @Optional
---@param useToAddrIndex? boolean | nil @Optional
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

---@return number count
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
---@param roleInteger? number @Optional
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

---@param childIndex number
---@return Handle | nil child
function Handle:Ptr(childIndex)
    return Handle:new()
end

---@param returnName boolean
---@return string address
function Handle:ToAddr(returnName)
    return ""
end