---@meta
--- Ma3 API version: 2.3

--- Not documented Object free definition
--- ========================================

---@param functionName string
---@return boolean | integer | number | string | table | nil | Handle resultOfFunction
function CallRealtimeLockedProtected(functionName)
    return true
end

---@param attributeNameOrIndex string | integer
---@return table uiChannelIndexes
function ChannelTable(attributeNameOrIndex)
    return {}
end

---@param queueName string
---@return boolean success
function CloseMessageQueue(queueName)
    return true
end

---@return integer flag
function ColMeasureDeviceDarkCalibrate()
    return 0
end

---@return table values
function ColMeasureDeviceDoMeasurement()
    return {}
end

---@param sourcePath string
---@param destinationPath string
---@return boolean result
function CopyFile(sourcePath, destinationPath)
    return true
end

---@param path string
---@return boolean result
function CreateDirectoryRecursive(path)
    return true
end

---@return string devMode3d
function DevMode3d()
    return ""
end

---@param handle Handle @handle to UIGrid (or derived)
---@param cell table @{r, c}
---@return boolean
function FSExtendedModeHasDots(handle, cell)
    return true
end

---@param patch Handle
---@param startingAddress integer
---@param footprint integer
---@return integer absoluteAddress
function FindBestDMXPatchAddr(patch, startingAddress, footprint)
    return 0
end

---@param handle? Handle @Optional
function FindBestFocus(handle)
end

---@param backwards? boolean @Optional @default: false
---@param reason? integer @Optional @Focus::Reason, default: UserTabKey
function FindNextFocus(backwards, reason)
end

---@param handle Handle
---@param attribute Handle
---@return integer columnId
function GetAttributeColumnId(handle, attribute)
    return 0
end

---@return boolean blockInput
function GetBlockInput()
    return false
end

---@param address string
---@return Handle handle
function GetObject(address)
    return Handle:new()
end

---@param uiChannelIndex integer
---@param phaserOnly boolean
---@return table
function GetProgPhaser(uiChannelIndex, phaserOnly)
    return {}
end

---@param uiChannelIndex integer
---@param step integer
---@return table
function GetProgPhaserValue(uiChannelIndex, step)
    return {}
end

---@param handle Handle
---@param propertyName string
---@return integer columnId
function GetPropertyColumnId(handle, propertyName)
    return 0
end

---@return integer wingID, boolean isExtension
function GetRemoteVideoInfo()
    return 0, false
end

---@return integer internalLineNumber
function GetTextScreenLine()
    return 0
end

---@param startingInternalLineNumber? integer @Optional
---@return integer lineCount
function GetTextScreenLineCount(startingInternalLineNumber)
    return 0
end

---@param uiChannelIndex integer | Handle
---@param attributeIndex integer | string
---@return table uiChannelDescriptor
function GetUIChannel(uiChannelIndex, attributeIndex)
    return {}
end

---@param variableSetHandle Handle
---@param varName string
---@return string | integer | number | nil value
function GetVarVersion(variableSetHandle, varName)
    return ""
    
end

---@return string HostRevision
function HostRevision()
    return ""
end

---@param displayIndex integer
---@param type string @'press', 'char', 'release'
---@param charOrKeycode? string @Optional
---@param shift? boolean @Optional
---@param ctrl? boolean @Optional
---@param alt? boolean @Optional
---@param numLock? boolean @Optional
function Keyboard(displayIndex, type, charOrKeycode, shift, ctrl, alt, numLock)
end

---@param executor Handle
function LoadExecConfig(executor)
end

---@param displayIndex integer
---@param type string @'press', 'move', 'release'
---@param buttonOrAbsX string | integer @'Left', 'Middle', 'Right' for 'press'/'release' or absolute X coordinate
---@param absY? integer @Optional
function Mouse(displayIndex, type, buttonOrAbsX, absY)
end

---@param queueName string
---@return boolean success
function OpenMessageQueue(queueName)
    return true
end

---@return Handle handle
function OverallDeviceCertificate()
    return Handle:new()
end

---@param pluginName? string @Optional
---@return Handle pluginPreferences
function PluginVars(pluginName)
    return Handle:new()
end

---@param options table
---@return integer selectedIndex, string selectedValue
function PopupInput(options)
    return 0, ""
end

---@param handle Handle
---@param changeLevelThreshold? integer @Optional
---@return boolean
function PrepareWaitObjectChange(handle, changeLevelThreshold)
    return true
end

---@param handle Handle
function RefreshLibrary(handle)
end

---@param ip string
---@param command string
---@return boolean success
function RemoteCommand(ip, command)
    return true
end

---@return boolean remoteCallIsRunning
function RemoteCallRunning()
    return false
end

---@param executor Handle
function SaveExecConfig(executor)
end

---@return Handle handle
function SelectedDrive()
    return Handle:new()
end

---@return integer min, integer max, integer index, integer block, integer group
function SelectionComponentX()
    return 0, 0, 0, 0, 0
end

---@return integer min, integer max, integer index, integer block, integer group
function SelectionComponentY()
    return 0, 0, 0, 0, 0
end

---@return integer min, integer max, integer index, integer block, integer group
function SelectionComponentZ()
    return 0, 0, 0, 0, 0
end

---@param context Handle
function SelectionNotifyBegin(context)
end

---@param context Handle
function SelectionNotifyEnd(context)
end

---@param objectToNotify Handle
function SelectionNotifyObject(objectToNotify)
end

---@return table subFixtureIndexes
function SelectionTable()
    return {}
end

---@param ipOrStation string
---@param channelName string
---@param data table
---@return boolean success
function SendLuaMessage(ipOrStation, channelName, data)
    return true
end

---@param colorModel string @'RGB', 'xyY', 'Lab', 'XYZ', 'HSB'
---@param tripel1 number
---@param tripel2 number
---@param tripel3 number
---@param brightness number
---@param quality number
---@param constBrightness boolean
---@return integer flag
function SetColor(colorModel, tripel1, tripel2, tripel3, brightness, quality, constBrightness)
    return 0
end

---@param uiChannelIndex integer
---@param options table
function SetProgPhaser(uiChannelIndex, options)
end

---@param uiChannelIndex integer
---@param step integer
---@param options table
function SetProgPhaserValue(uiChannelIndex, step, options)
end

function SyncFS()
end

---@param displayIndex integer
---@param type string @'press', 'move', 'release'
---@param touchId integer
---@param absX integer
---@param absY integer
function Touch(displayIndex, type, touchId, absX, absY)
end

---@param secondsToWait? number @Optional
---@return Handle | nil modalHandle
function WaitModal(secondsToWait)
    return nil
end

---@param handle Handle @handle to UIObject
---@param secondsToWait? number @Optional
---@return boolean | nil @true on success, nil on timeout
function WaitObjectDelete(handle, secondsToWait)
    return true
end