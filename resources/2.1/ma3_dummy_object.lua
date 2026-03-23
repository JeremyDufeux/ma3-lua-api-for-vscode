---@diagnostic disable: unused-local
---@meta
--- Ma3 API version: 2.1

-- Object definition
-- ========================================

---@class Handle
Handle = {}

---@return Handle
function Handle:new()
end

---@param baseLocationHandle? Handle @Optional
---@param useToAddrIndex? boolean|nil @Optional
---@return string numericRootAddress
function Handle:Addr(baseLocationHandle, useToAddrIndex)
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

---@param childIndex integer
---@return Handle|nil child
function Handle:Ptr(childIndex)
    return Handle:new()
end

---@return string address
function Handle:ToAddr()
    return ""
end