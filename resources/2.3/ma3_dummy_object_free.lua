---@meta
--- Ma3 API version: 2.3

--- Object free definition
--- ========================================

---@param fixtureTable table
---@return boolean | nil success
function AddFixtures(fixtureTable)
    return true
end

---@param addonName string
---@return Handle addonVariable
function AddonVars(addonName)
    return Handle:new()
end

---@return table buildDetails
function BuildDetails()
    return {}
end

---@param dmxMode Handle
---@param startAddress string
---@param count? integer | nil @Optional
---@param breakIndex? integer @Optional
---@return boolean noCollisionFound
function CheckDMXCollision(dmxMode, startAddress, count, breakIndex)
    return true
end

---@param fixtureId integer
---@param count? integer @Optional
---@param type? integer @Optional
---@return boolean noCollisionFound
function CheckFIDCollision(fixtureId, count, type)
    return true
end

---@param className string
---@return boolean result
function ClassExists(className)
    return true
end

function CloseAllOverlays()
end

---@param undoHandle Handle
---@return boolean closed
function CloseUndo(undoHandle)
    return true
end

---@param command string
---@param undoHandle? Handle @Optional
---@return string result
function Cmd(command, undoHandle)
    return ""
end

---@param command string
---@param undoHandle? Handle @Optional
---@param handleTarget? Handle @Optional
function CmdIndirect(command, undoHandle, handleTarget)
    
end

---@param command string
---@param undoHandle? Handle @Optional
---@param handleTarget? Handle @Optional
function CmdIndirectWait(command, undoHandle, handleTarget)
    
end

---@return Handle object
function CmdObj()
    return Handle:new()
end

---@return table configDetails
function ConfigTable()
    return {}
end

---@param title string
---@param text? string @Optional
---@param screen? integer @Optional
---@param showCancel? boolean @Optional
---@return boolean result
function Confirm(title, text, screen, showCancel)
    return true
end

---@param fixtureTableHandle Handle
---@param multiPatchAmount integer
---@param undoText? string @Optional
---@return integer | nil multiPatchAmountCreated
function CreateMultiPatch(fixtureTableHandle, multiPatchAmount, undoText)
    return 0
end

---@param undoText any
---@return Handle undoHandle
function CreateUndo(undoText)
    return Handle:new()
end

---@return Handle environmentHandle
function CurrentEnvironment()
    return Handle:new()
end

---@return Handle execHandle
function CurrentExecPage()
    return Handle:new()
end

---@return Handle profileHandle
function CurrentProfile()
    return Handle:new()
end

---@return Handle screenConfigHandle
function CurrentScreenConfig()
    return Handle:new()
end

---@return Handle userHandle
function CurrentUser()
    return Handle:new()
end

---@return Handle dataPoolHandle
function DataPool()
    return Handle:new()
end

---@return Handle displayPositionsHandle
function DefaultDisplayPositions()
    return Handle:new()
end

---@param variableSetHandle Handle
---@param variableName string
---@return boolean success 
function DelVar(variableSetHandle, variableName)
    return true
end

---@return boolean deskIsLocked
function DeskLocked()
    return true
end

---@return Handle configurationHandle
function DeviceConfiguration()
    return Handle:new()
end

---@param path string
---@param filter? string @Optional
---@return table
function DirList(path, filter)
    return {}
end

---@param displayIndex integer
---@param position table
---@param duration? integer @Optional
function DrawPointer(displayIndex, position, duration)
end

function DumpAllHooks()
end

---@param message string
function Echo(message)
end

---@param message string
function ErrEcho(message)
end

---@param message string
function ErrPrintf(message)
    
end

---@param fileName string
---@param exportData table
---@return boolean success
function Export(fileName, exportData)
    return true
end

---@param fileName string
---@param exportData table
---@return boolean success
function ExportCSV(fileName, exportData)
    return true    
end

---@param fileName string
---@param exportData table
---@return boolean success
function ExportJson(fileName, exportData)
    return true
end

---@param fileName string
---@return boolean result
function FileExists(fileName)
    return true
end

---@param textureName string
---@return Handle | nil textureHandle
function FindTexture(textureName)
    return Handle:new()
end

---@param fixtureDMXMode Handle
---@return Handle fixtureHandle
function FirstDmxModeFixture(fixtureDMXMode)
    return Handle:new()
end

---@return Handle | nil fixtureHandle
function FixtureType()
    return Handle:new()
end

---@param objectString string
---@param addressHandle? Handle @Optional
---@return Handle object
function FromAddr(objectString, addressHandle)
    return Handle:new()
end

---@return table apiDescriptor
function GetApiDescriptor()
    return {}
end

---@param channelIndex integer
---@return Handle attributeHandle
function GetAttributeByUIChannel(channelIndex)
    return Handle:new()
end

---@return integer attributeCount
function GetAttributeCount()
    return 0
end

---@param attributeName string
---@return integer attributeIndex
function GetAttributeIndex(attributeName)
    return 0
end

---@param Ma3ModuleHandle Handle
---@return table state
function GetButton(Ma3ModuleHandle)
    return {}
end

---@param channelIndex integer
---@param attributeIndex integer
---@return Handle channelFunctionHandle
function GetChannelFunction(channelIndex, attributeIndex)
    return Handle:new()
end

---@param channelIndex integer
---@param attributeIndex integer
---@return integer channelFunctionIndex
function GetChannelFunctionIndex(channelIndex, attributeIndex)
    return 0
end

---@param className string
---@return integer derivationLevel
function GetClassDerivationLevel(className)
    return 0
end

---@return Handle cueHandle
function GetCurrentCue()
    return Handle:new()
end

---@return integer fps
function GetDebugFPS()
    return 0
end

---@param displayIndex integer
---@return Handle displayHandle
function GetDisplayByIndex(displayIndex)
    return Handle:new()
end

---@return Handle DisplayCollectHandle
function GetDisplayCollect()
    return Handle:new()
end

---@param universe integer
---@param isPercent? boolean @Optional
---@return table | nil universe
function GetDMXUniverse(universe, isPercent)
    return {}
end

---@param address integer
---@param universe? integer @Optional
---@param returnPercent? boolean @Optional
---@return integer | nil value
function GetDMXValue(address, universe, returnPercent)
    return 0
end

---@param executorNumber integer
---@return Handle executor, Handle page
function GetExecutor(executorNumber)
    return Handle:new(), Handle:new()
end

---@return Handle focusHandle
function GetFocus()
    return Handle:new()
end

---@return Handle focusDisplayHandle
function GetFocusDisplay()
    return Handle:new()
end

---@return table apiDescriptor
function GetObjApiDescriptor()
    return {}
end

---@param folderNameOrIndex string | integer
---@param createIfNotExist? boolean | nil @Optional
---@return string path
function GetPath(folderNameOrIndex, createIfNotExist)
    return ""
end

---@param folderNameOrIndex string | integer
---@param basePath string
---@param createIfNotExist? boolean @Optional 
---@return string path
function GetPathOverrideFor(folderNameOrIndex, basePath, createIfNotExist)
    return ""
end

---@return string separator
function GetPathSeparator()
    return ""
end

---@param objectHandle Handle
---@param pathContentType? integer @Optional
---@return string pathType
function GetPathType(objectHandle, pathContentType)
    return ""
end

---@param presetHandle Handle
---@param returnPhaserData? boolean | nil @Optional
---@param extract? boolean @Optional
---@return table | nil presetData
function GetPresetData(presetHandle, returnPhaserData, extract)
    return {}
end

---@param rtChannelIndex integer
---@return table reChanelDescriptor
function GetRTChannel(rtChannelIndex)
    return {}
end

---@return integer count
function GetRTChannelCount()
    return 0
end

---@param fixtureIndexOrHandle integer | Handle
---@param returnHandles? boolean @Optional
---@return table rtChannels
function GetRTChannels(fixtureIndexOrHandle, returnHandles)
    return {}
end

---@param sampleType string
---@return integer sample
function GetSample(sampleType)
    return 0.1
end

---@param screenHandle Handle
---@return Handle screenContentHandle
function GetScreenContent(screenHandle)
    return Handle:new()
end

---@return Handle attributeHandle
function GetSelectedAttribute()
    return Handle:new()
end

---@return string status
function GetShowFileStatus()
    return ""
end

---@param fixtureIndex integer
---@return Handle subFixtureHandle
function GetSubfixture(fixtureIndex)
    return Handle:new()
end

---@return integer count
function GetSubfixtureCount()
    return 0
end

---@param shortKeyword string
---@return string | nil tokenName
function GetTokenName(shortKeyword)
    return ""
end

---@param index string
---@return string | nil tokenName
function GetTokenNameByIndex(index)
    return ""    
end

---@return Handle | nil modalHandle
function GetTopModal()
    return Handle:new()
end

---@param displayIndex integer
---@return Handle | nil overlayHandle
function GetTopOverlay(displayIndex)
    return Handle:new()
end

---@return integer count
function GetUIChannelCount()
    return 0
end

---@param patchIndex integer
---@param attributeIndex integer
---@return integer index
function GetUIChannelIndex(patchIndex, attributeIndex)
    return 0
end

---@param fixtureIndexOrHandle integer | Handle
---@param returnHandles? boolean @Optional
---@return table channels
function GetUIChannels(fixtureIndexOrHandle, returnHandles)
    return {}
end

---@param displayIndex integer
---@param positionTable table
---@return Handle | nil objectHandle
function GetUIObjectAtPosition(displayIndex, positionTable)
    return Handle:new()
end

---@param variableSetHandle Handle
---@param varName string
---@return string | integer | integer | nil value
function GetVar(variableSetHandle, varName)
    return ""
end

---@return Handle globalVarHandle
function GlobalVars()
    return Handle:new()
end

---@param objectHandle Handle
---@return integer handleInt
function HandleToInt(objectHandle)
    return 0
end

---@param objectHandle Handle
---@return string handleString
function HandleToStr(objectHandle)
    return ""
end

---@param functionName function
---@param objectHandle Handle
---@param pluginHandle Handle
---@param passedObjectHandle? Handle @Optional
---@return integer hookId
function HookObjectChange(functionName, objectHandle, pluginHandle, passedObjectHandle)
    return 0
end

---@return string os
function HostOS()
    return ""
end

---@return string subType
function HostSubType()
    return ""
end

---@return string type
function HostType()
    return ""
end

---@param fileName string
---@return table content
function Import(fileName)
    return {}
end

---@param progressBarHandle Handle
---@param value integer
function IncProgress(progressBarHandle, value)
end

---@param handleInteger integer
---@return Handle handle
function IntToHandle(handleInteger)
    return Handle:new()
end

---@param derivedClassName string
---@param baseClassName string
---@return boolean result
function IsClassDerivedFrom(derivedClassName, baseClassName)
    return true
end

---@param objectHandle Handle
---@return boolean | nil valid
function IsObjectValid(objectHandle)
    return true
end

---@return Handle keyboardHandle
function KeyboardObj()
    return Handle:new()
end

---@return Handle poolHandle
function MasterPool()
    return Handle:new()
end

---@param messageBoxSettings table
---@return table result
function MessageBox(messageBoxSettings)
    return {}
end

---@return Handle mouseHandle
function MouseObj()
    return Handle:new()
end

---@return boolean needShowSave
function NeedShowSave()
    return true
end

---@param objectListCommand string
---@param optionsTable? table @Optional
---@return table objectList
function ObjectList(objectListCommand, optionsTable)
    return {}
end

---@return Handle patchHandle
function Patch()
    return Handle:new()
end

---@param message string
function Printf(message)
end

---@return Handle programmerHandle
function Programmer() 
    return Handle:new()
end

---@return Handle programmerPartHandle
function ProgrammerPart()
    return Handle:new()
end

---@return Handle currentPultHandle
function Pult()
    return Handle:new()
end

---@return string releaseType
function ReleaseType()
    return ""
end

---@return Handle rootHandle
function Root()
    return Handle:new()
end

---@return Handle featureHandle
function SelectedFeature()
    return Handle:new()
end

---@return Handle layoutHandle
function SelectedLayout()
    return Handle:new()
end

---@return Handle sequenceHandle
function SelectedSequence()
    return Handle:new()
end

---@return Handle timecodeHandle
function SelectedTimecode()
    return Handle:new()
end

---@return Handle timerHandle
function SelectedTimer()
    return Handle:new()
end

---@return Handle fixturesHandle
function Selection()
    return Handle:new()
end

---@return integer count
function SelectionCount()
    return 0
end

---@return integer patchIndex, integer gridX, integer gridY, integer gridZ
function SelectionFirst()
    return 0, 0, 0, 0
end

---@param fixtureIndex integer
---@return integer patchIndex, integer gridX, integer gridY, integer gridZ
function SelectionNext(fixtureIndex)
    return 0, 0, 0, 0
end

---@return string serialNumber
function SerialNumber()
    return ""
end

---@param block boolean
---@param _showInfo? boolean @Optional
function SetBlockInput(block, _showInfo)
end

---@param moduleHandle Handle
---@param ledTable table
function SetLED(moduleHandle, ledTable)
end

---@param progressBarHandle Handle
---@param progress integer
function SetProgress(progressBarHandle, progress)
end

---@param progressBarHandle Handle
---@param rangeStart integer
---@param rangeEnd integer
function SetProgressRange(progressBarHandle, rangeStart, rangeEnd)
end

---@param progressBarHandle Handle
---@param text string
function SetProgressText(progressBarHandle, text)
end

---@param variableSetHandle Handle
---@param varName string
---@param value string | integer
---@return boolean success
function SetVar(variableSetHandle, varName, value)
    return true
end

---@return Handle showDataHandle
function ShowData()
    return Handle:new()
end

---@return Handle settingsHandle
function ShowSettings()
   return Handle:new()
end

---@param title string
---@return Handle progressBarHandle
function StartProgress(title)
    return Handle:new()
end

---@param progressBarHandle Handle
function StopProgress(progressBarHandle)
end

---@param handleString string
---@return Handle handle
function StrToHandle(handleString)
    return Handle:new()
end

---@param title? string @Optional
---@param textGuide? string @Optional
---@param xPosition? string @Optional
---@param yPosition? string @Optional
---@return string textInputHandle
function TextInput(title, textGuide, xPosition, yPosition)
    return ""
end

---@return integer time
function Time()
    return 0
end

---@param timedFunction function
---@param waitSeconds integer
---@param iterations integer
---@param timerCleanup? function | nil @Optional
---@param passedObjectHandle? Handle @Optional
function Timer(timedFunction, waitSeconds, iterations, timerCleanup, passedObjectHandle)
end

---@param objectHandle Handle
---@param returnType? boolean @Optional
---@return string address
function ToAddr(objectHandle, returnType)
    return ""
end

---@return Handle touchObjectHandle
function TouchObj()
    return Handle:new()
end

---@param hookId integer
function Unhook(hookId)
end

---@param functionName function | nil
---@param targetObjectHandle Handle | nil
---@param contextObjectHandle Handle | nil
---@return integer amount
function UnhookMultiple(functionName, targetObjectHandle, contextObjectHandle)
    return 0
end

---@return Handle userVarHandle
function UserVars()
    return Handle:new()
end

---@return string textVersion, integer major, integer minor, integer streaming, integer ui
function Version()
    return "", 0, 0, 0, 0
end