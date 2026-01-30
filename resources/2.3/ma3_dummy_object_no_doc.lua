---@meta
--- Ma3 API version: 2.3

--- Not documented Object definition
--- ========================================

---@param class? string @Optional
---@param undo? Handle @Optional
---@return Handle childHandle
function Handle:Acquire(class, undo)
    return Handle:new()
end

---@param parent Handle
---@param role? string @Optional
function Handle:AddListChildren(parent, role)
end

---@param parent Handle
---@param role? string @Optional
function Handle:AddListChildrenNames(parent, role)
end

---@param name string
---@param value string
---@param callback function
---@param argument? any @Optional
---@param appearance? table @Optional
function Handle:AddListLuaItem(name, value, callback, argument, appearance)
end

---@param items table
function Handle:AddListLuaItems(items)
end

---@param name string
---@param value  number
---@param baseHandle? Handle @Optional
---@param appearance? table @Optional
function Handle:AddListNumericItem(name, value, baseHandle, appearance)
end

---@param items table
function Handle:AddListNumericItems(items)
end

---@param targetObject Handle @Target object to add to the list
---@param _explicitName? string @Optional explicit name for the object
---@param _roleOrAppearance? table |  integer @Optional: either appearance table with boolean appearance field and left/right tables, or Roles enum value
---@param _extendedName? boolean @Optional: whether to use extended name (only when role is specified)
---@param _appearance? table @Optional: appearance table with left/right properties (only when role is specified)
---@param _postNameText? string @Optional: text to append after the name (only when role is specified)
function Handle:AddListObjectItem(targetObject, _explicitName, _roleOrAppearance, _extendedName, _appearance, _postNameText)
end

---@param name string
---@param value string
---@param targetHandle Handle
---@param appearance? table @Optional
function Handle:AddListPropertyItem(name, value, targetHandle, appearance)
end

---@param items table
function Handle:AddListPropertyItems(items)
end

---@param parent Handle
---@param role? string @Optional
function Handle:AddListRecursiveNames(parent, role)
end

---@param name string
---@param value string
---@param appearance? table @Optional
function Handle:AddListStringItem(name, value, appearance)
end

---@param items table
function Handle:AddListStringItems(items)
end

---@param class? string @Optional
---@param undo? Handle @Optional
---@param count?  integer @Optional
---@return Handle childHandle
function Handle:Append(class, undo, count)
    return Handle:new()
end

---@param changeLevelEnum string
function Handle:Changed(changeLevelEnum)
end

function Handle:ClearList()
end

function Handle:ClearUIChildren()
end

---@return table childHandles
function Handle:CmdlineChildren()
    return {}
end

---@param index  integer
---@return Handle childHandle
function Handle:CmdlinePtr(index)
    return Handle:new()
end

function Handle:CommandAt()
end

---@param destHandle Handle
---@param focusSearchAllowed? boolean @Optional
function Handle:CommandCall(destHandle, focusSearchAllowed)
end

function Handle:CommandCreateDefaults()
end

function Handle:CommandDelete()
end

function Handle:CommandStore()
end

---@param otherHandle Handle
---@return boolean isEqual
---@return string whatDiffers
function Handle:Compare(otherHandle)
    return false, ""
end

---@param srcHandle Handle
---@param undo? Handle @Optional
function Handle:Copy(srcHandle, undo)
end

---@param childIndex  integer
---@param class? string @Optional
---@param undo? Handle @Optional
---@return Handle childHandle
function Handle:Create(childIndex, class, undo)
    return Handle:new()
end

---@return Handle | nil currentChild
function Handle:CurrentChild()
    return Handle:new()
end

---@param childIndex  integer
---@param undo? Handle @Optional
function Handle:Delete(childIndex, undo)
end

---@param cell table
---@return boolean
function Handle:FSExtendedModeHasDots(cell)
    return false
end

---@param searchName string
---@param searchClassName? string @Optional
---@return Handle foundHandle
function Handle:Find(searchName, searchClassName)
    return Handle:new()
end

---@param value string
---@return  integer index
function Handle:FindListItemByName(value)
    return 1
end

---@param value string
---@return  integer index
function Handle:FindListItemByValueStr(value)
    return 1
end

---@param searchClassName string
---@return Handle foundHandle
function Handle:FindParent(searchClassName)
    return Handle:new()
end

---@param searchName string
---@param searchClassName? string @Optional
---@return Handle foundHandle
function Handle:FindRecursive(searchName, searchClassName)
    return Handle:new()
end

---@param searchName string
---@return Handle foundHandle
function Handle:FindWild(searchName)
    return Handle:new()
end

---@param index  integer
---@return string value
function Handle:GetListItemAdditionalInfo(index)
    return ""
end

---@return Handle assignedHandle
function Handle:GetAssignedObj()
    return Handle:new()
end

---@return Handle displayHandle
function Handle:GetDisplay()
    return Handle:new()
end

---@return  integer displayIndex
function Handle:GetDisplayIndex()
    return 1
end

---@param camelCaseToFileName? boolean @Optional
---@return string fileName
function Handle:GetExportFileName(camelCaseToFileName)
    return ""
end

---@param lineNumber  integer
---@return string lineContent
function Handle:GetLineAt(lineNumber)
    return ""
end

---@return  integer count
function Handle:GetLineCount()
    return 0
end

---@param index  integer
---@return table appearance
function Handle:GetListItemAppearance(index)
    return {}
end

---@param index  integer
---@return Handle | nil buttonHandle
function Handle:GetListItemButton(index)
    return Handle:new()
end

---@param index  integer
---@return string name
function Handle:GetListItemName(index)
    return ""
end

---@param index  integer
---@return  integer value
function Handle:GetListItemValueI64(index)
    return 0
end

---@param index  integer
---@return string value
function Handle:GetListItemValueStr(index)
    return ""
end

---@return  integer count
function Handle:GetListItemsCount()
    return 0
end

---@return  integer index
function Handle:GetListSelectedItemIndex()
    return 1
end

---@return Handle overlayHandle
function Handle:GetOverlay()
    return Handle:new()
end

---@return Handle screenHandle
function Handle:GetScreen()
    return Handle:new()
end

---@param index  integer
---@return Handle uiObjectHandle
function Handle:GetUIChild(index)
    return Handle:new()
end

---@return  integer count
function Handle:GetUIChildrenCount()
    return 0
end

---@param cell table
---@return boolean exists
function Handle:GridCellExists(cell)
    return false
end

---@return Handle gridBaseHandle
function Handle:GridGetBase()
    return Handle:new()
end

---@param cell table
---@return table cellData
function Handle:GridGetCellData(cell)
    return {}
end

---@param cell table
---@return table dimensions
function Handle:GridGetCellDimensions(cell)
    return {}
end

---@return Handle gridDataHandle
function Handle:GridGetData()
    return Handle:new()
end

---@return table dimensions
function Handle:GridGetDimensions()
    return {}
end

---@param rowId  integer
---@return  integer | nil parentRowId
function Handle:GridGetParentRowId(rowId)
    return 0
end

---@return table cell
function Handle:GridGetScrollCell()
    return {}
end

---@return table offset
function Handle:GridGetScrollOffset()
    return {}
end

---@return table selectedCells
function Handle:GridGetSelectedCells()
    return {}
end

---@return Handle gridSelectionHandle
function Handle:GridGetSelection()
    return Handle:new()
end

---@return Handle gridSettingsHandle
function Handle:GridGetSettings()
    return Handle:new()
end

---@param cell table
---@return boolean isReadOnly
function Handle:GridIsCellReadOnly(cell)
    return false
end

---@param cell table
---@return boolean isVisible
function Handle:GridIsCellVisible(cell)
    return false
end

---@param x  integer
---@param y  integer
function Handle:GridMoveSelection(x, y)
end

---@param cell table
function Handle:GridScrollCellIntoView(cell)
end

---@param columnId  integer
---@param size  integer
function Handle:GridSetColumnSize(columnId, size)
end

---@param columnId  integer
---@return  integer | nil columnIndex
function Handle:GridsGetColumnById(columnId)
    return 0
end

---@return table | nil cell
function Handle:GridsGetExpandHeaderCell()
    return {}
end

---@return boolean | nil state
function Handle:GridsGetExpandHeaderCellState()
    return false
end

---@param cell table
---@return  integer | nil width
function Handle:GridsGetLevelButtonWidth(cell)
    return 0
end

---@param rowId  integer
---@return  integer | nil rowIndex
function Handle:GridsGetRowById(rowId)
    return 0
end

---@return boolean hasDependencies
function Handle:HasDependencies()
    return false
end

---@return boolean hasEditSettingUI
function Handle:HasEditSettingUI()
    return false
end

---@return boolean hasEditUI
function Handle:HasEditUI()
    return false
end

---@param objectToCheck Handle
function Handle:HasParent(objectToCheck)
end

---@return boolean hasReferences
function Handle:HasReferences()
    return false
end

---@param callback function
---@param argument? any @Optional
---@return boolean | nil success
function Handle:HookDelete(callback, argument)
    return true
end

---@return integer index
function Handle:Index()
    return 0
end

---@param functionName string
---@return any result
function Handle:InputCallFunction(functionName)
    return nil
end

---@param functionName string
---@return boolean | nil hasFunction
function Handle:InputHasFunction(functionName)
    return true
end

function Handle:InputRun()
end

---@param parameterName string
---@param parameterValue string
function Handle:InputSetAdditionalParameter(parameterName, parameterValue)
end

---@param nameValue string
function Handle:InputSetEditTitle(nameValue)
end

---@param length  integer
function Handle:InputSetMaxLength(length)
end

---@param nameValue string
function Handle:InputSetTitle(nameValue)
end

---@param value string
function Handle:InputSetValue(value)
end

---@param childIndex  integer
---@param class? string @Optional
---@param undo? Handle @Optional
---@param count?  integer @Optional
---@return Handle childHandle
function Handle:Insert(childIndex, class, undo, count)
    return Handle:new()
end

---@return boolean isClass
function Handle:IsClass()
    return false
end

---@return boolean isEmpty
function Handle:IsEmpty()
    return false
end

---@return boolean isEnabled
function Handle:IsEnabled()
    return false
end

---@param index  integer
function Handle:IsListItemEmpty(index)
end

---@param index  integer
function Handle:IsListItemEnabled(index)
end

---@return boolean isLocked
function Handle:IsLocked()
    return false
end

---@return boolean isValid
function Handle:IsValid()
    return false
end

---@return boolean isVisible
function Handle:IsVisible()
    return false
end

---@param filePath string
---@param fileName string
---@return boolean success
function Handle:Load(filePath, fileName)
    return false
end

---@return  integer maxCount
function Handle:MaxCount()
    return 0
end

---@param callbackName string
---@param ctx? any @Optional
function Handle:OverlaySetCloseCallback(callbackName, ctx)
end

---@return Handle parentHandle
function Handle:Parent()
    return Handle:new()
end

function Handle:PrepareAccess()
end

---@return  integer propertyCount
function Handle:PropertyCount()
    return 0
end

---@param propertyIndex  integer
---@return table propertyInfo
function Handle:PropertyInfo(propertyIndex)
    return {}
end

---@param propertyIndex  integer
---@return string propertyName
function Handle:PropertyName(propertyIndex)
    return ""
end

---@param propertyIndex  integer
---@return string propertyType
function Handle:PropertyType(propertyIndex)
    return ""
end

---@param childIndex  integer
---@param undo? Handle @Optional
function Handle:Remove(childIndex, undo)
end

---@param name string
function Handle:RemoveListItem(name)
end

---@param size  integer
function Handle:Resize(size)
end

---@param filePath string
---@param fileName string
---@return boolean success
function Handle:Save(filePath, fileName)
    return false
end

---@param scrollType  integer
---@param scrollEntity  integer
---@param valueType  integer
---@param value  number
---@param updateOpposite boolean
---@return boolean success
function Handle:ScrollDo(scrollType, scrollEntity, valueType, value, updateOpposite)
    return false
end

---@param scrollType  integer
---@return table | nil scrollInfo
function Handle:ScrollGetInfo(scrollType)
    return {}
end

---@param scrollType  integer
---@param offset  integer
---@return  integer itemIndex
function Handle:ScrollGetItemByOffset(scrollType, offset)
    return 1
end

---@param scrollType  integer
---@param itemIdx  integer
---@return  integer | nil offset
function Handle:ScrollGetItemOffset(scrollType, itemIdx)
    return 0
end

---@param scrollType  integer
---@param itemIdx  integer
---@return  integer | nil size
function Handle:ScrollGetItemSize(scrollType, itemIdx)
    return 0
end

---@param scrollType  integer
---@return boolean isNeeded
function Handle:ScrollIsNeeded(scrollType)
    return false
end

---@param index  integer
function Handle:SelectListItemByIndex(index)
end

---@param nameValue string
function Handle:SelectListItemByName(nameValue)
end

---@param value string
function Handle:SelectListItemByValue(value)
end

---@param propertyName string
---@param propertyValue string
---@param overrideChangeLevel?  integer @Optional
function Handle:Set(propertyName, propertyValue, overrideChangeLevel)
end

---@param index  integer
---@param value string
function Handle:SetListItemAdditionalInfo(index, value)
    
end

---@param propertyName string
---@param propertyValue string
---@param recursive? boolean @Optional
function Handle:SetChildren(propertyName, propertyValue, recursive)
end

---@param propertyName string
---@param propertyValue string
---@param recursive? boolean @Optional
function Handle:SetChildrenRecursive(propertyName, propertyValue, recursive)
end

---@param topicName string
function Handle:SetContextSensHelpLink(topicName)
end

---@param index  integer
---@param empty? boolean @Optional
function Handle:SetEmptyListItem(index, empty)
end

---@param index  integer
---@param enable? boolean @Optional
function Handle:SetEnabledListItem(index, enable)
end

---@param index  integer
---@param appearance table
function Handle:SetListItemAppearance(index, appearance)
end

---@param index  integer
---@param name string
function Handle:SetListItemName(index, name)
end

---@param index  integer
---@param value string
function Handle:SetListItemValueStr(index, value)
end

---@param x  integer
---@param y  integer
function Handle:SetPositionHint(x, y)
end

---@param callback function
function Handle:ShowModal(callback)
end

---@return table childHandles
function Handle:UIChildren()
    return {}
end

---@param index  integer
---@return  integer x
function Handle:UILGGetColumnAbsXLeft(index)
    return 0
end

---@param index  integer
---@return  integer x
function Handle:UILGGetColumnAbsXRight(index)
    return 0
end

---@param index  integer
---@return  integer size
function Handle:UILGGetColumnWidth(index)
    return 0
end

---@param index  integer
---@return  integer y
function Handle:UILGGetRowAbsYBottom(index)
    return 0
end

---@param index  integer
---@return  integer y
function Handle:UILGGetRowAbsYTop(index)
    return 0
end

---@param index  integer
---@return  integer size
function Handle:UILGGetRowHeight(index)
    return 0
end

---@param expectedChildren  integer
---@param secondsToWait?  number @Optional
---@return boolean success
function Handle:WaitChildren(expectedChildren, secondsToWait)
    return false
end

---@param secondsToWait?  number @Optional
---@param forceReInit? boolean @Optional
---@return boolean success
function Handle:WaitInit(secondsToWait, forceReInit)
    return false
end