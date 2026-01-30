--- Ma3 API version: 2.3
---@meta

---@class Enums
Enums = {}

-- @enum ALSideSizeSpecial
Enums.ALSideSizeSpecial = {
  Auto = 0,
  Hybrid = -1,
}

-- @enum ActiveDisplay
Enums.ActiveDisplay = {
  Beat = 2,
  Sound = 1,
  Wave = 0,
}

-- @enum AgendaMode
Enums.AgendaMode = {
  Absolute = 0,
  Dawn = 1,
  Dusk = 4,
  Sunrise = 2,
  Sunset = 3,
}

-- @enum AgendaTool
Enums.AgendaTool = {
  Call = 6,
  Copy = 4,
  Cut = 3,
  Delete = 2,
  Edit = 7,
  Paste = 5,
  Select = 0,
  Store = 1,
}

-- @enum AgendaViewMode
Enums.AgendaViewMode = {
  Day = 4,
  Month = 2,
  Sheet = 0,
  Week = 3,
  Year = 1,
}

-- @enum AlignMode
Enums.AlignMode = {
  ["/"] = 1,
  ["<"] = 2,
  ["<>"] = 5,
  [">"] = 3,
  ["><"] = 4,
  Off = 0,
}

-- @enum AlignmentH
Enums.AlignmentH = {
  Center = 0,
  Left = 1,
  Right = 2,
}

-- @enum AlignmentV
Enums.AlignmentV = {
  Bottom = 2,
  Center = 0,
  Top = 1,
}

-- @enum ArrangementMarcType
Enums.ArrangementMarcType = {
  Dynamic = 1,
  Small = 0,
}

-- @enum ArtNetBroadcastThreshold
Enums.ArtNetBroadcastThreshold = {
  ["Default(5)"] = 5,
}

-- @enum ArtNetDataMode
Enums.ArtNetDataMode = {
  Auto = 2,
  Broadcast = 0,
  Input = 3,
  Unicast = 1,
}

-- @enum AssignType
Enums.AssignType = {
  Empty = 0,
  EncoderBar = 18,
  Executor = 20,
  Filter = 19,
  Fixture = 12,
  Group = 5,
  MAtricks = 13,
  Macro = 2,
  Master = 8,
  Menu = 4,
  Plugin = 3,
  Preset = 15,
  Quickey = 16,
  ScreenConfig = 11,
  Sequence = 7,
  Sound = 9,
  Station = 21,
  Timer = 17,
  User = 10,
  Video = 14,
  View = 1,
  World = 6,
}

-- @enum AssignmentBlindButtonFunctions
Enums.AssignmentBlindButtonFunctions = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
  Off = 8,
  On = 7,
  Temp = 13,
  Toggle = 14,
}

-- @enum AssignmentButtonFunctions
Enums.AssignmentButtonFunctions = {
  [""] = 0,
  ["<<<"] = 6,
  [">>>"] = 5,
  At = 48,
  Black = 2,
  Call = 111,
  DoubleSpeed = 27,
  Empty = 0,
  FastSync = 31,
  Flash = 1,
  ["Go+"] = 3,
  ["Go-"] = 4,
  Goto = 16,
  HalfSpeed = 26,
  Kill = 29,
  Learn = 9,
  LearnSpeed = 10,
  Load = 17,
  LogIn = 74,
  Off = 8,
  On = 7,
  Pause = 18,
  Rate1 = 11,
  ReSync = 30,
  Select = 24,
  SelectFixtures = 123,
  Speed1 = 12,
  Swap = 25,
  Temp = 13,
  Time = 22,
  Toggle = 14,
  Top = 15,
}

-- @enum AssignmentButtonFunctionsGroup
Enums.AssignmentButtonFunctionsGroup = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
  SelectFixtures = 123,
}

-- @enum AssignmentButtonFunctionsMacro
Enums.AssignmentButtonFunctionsMacro = {
  [""] = 0,
  ["<<<"] = 6,
  [">>>"] = 5,
  Call = 111,
  Empty = 0,
  ["Go+"] = 3,
  ["Go-"] = 4,
  Off = 8,
  Pause = 18,
}

-- @enum AssignmentButtonFunctionsPlugin
Enums.AssignmentButtonFunctionsPlugin = {
  [""] = 0,
  ["<<<"] = 6,
  [">>>"] = 5,
  Black = 2,
  Call = 111,
  DoubleSpeed = 27,
  Empty = 0,
  FastSync = 31,
  Flash = 1,
  ["Go+"] = 3,
  ["Go-"] = 4,
  Goto = 16,
  HalfSpeed = 26,
  Learn = 9,
  LearnSpeed = 10,
  Load = 17,
  Off = 8,
  On = 7,
  Pause = 18,
  Rate1 = 11,
  ReSync = 30,
  Speed1 = 12,
  Swap = 25,
  Temp = 13,
  Toggle = 14,
  Top = 15,
}

-- @enum AssignmentButtonFunctionsPreset
Enums.AssignmentButtonFunctionsPreset = {
  [""] = 0,
  [">>>"] = 5,
  At = 48,
  Black = 2,
  DoubleSpeed = 27,
  Empty = 0,
  FastSync = 31,
  Flash = 1,
  ["Go+"] = 3,
  HalfSpeed = 26,
  Kill = 29,
  Learn = 9,
  LearnSpeed = 10,
  Off = 8,
  On = 7,
  Pause = 18,
  Rate1 = 11,
  ReSync = 30,
  SelectFixtures = 123,
  Speed1 = 12,
  Swap = 25,
  Temp = 13,
  Time = 22,
  Toggle = 14,
}

-- @enum AssignmentButtonFunctionsQuickey
Enums.AssignmentButtonFunctionsQuickey = {
  [""] = 0,
  Empty = 0,
  ["Go+"] = 3,
}

-- @enum AssignmentButtonFunctionsScreenConfig
Enums.AssignmentButtonFunctionsScreenConfig = {
  [""] = 0,
  Call = 111,
  Empty = 0,
}

-- @enum AssignmentButtonFunctionsSequence
Enums.AssignmentButtonFunctionsSequence = {
  [""] = 0,
  ["<<<"] = 6,
  [">>>"] = 5,
  Black = 2,
  DoubleSpeed = 27,
  Empty = 0,
  FastSync = 31,
  Flash = 1,
  ["Go+"] = 3,
  ["Go-"] = 4,
  Goto = 16,
  HalfSpeed = 26,
  Kill = 29,
  Learn = 9,
  LearnSpeed = 10,
  Load = 17,
  Off = 8,
  On = 7,
  Pause = 18,
  Rate1 = 11,
  ReSync = 30,
  Select = 24,
  SelectFixtures = 123,
  Speed1 = 12,
  Swap = 25,
  Temp = 13,
  Time = 22,
  Toggle = 14,
  Top = 15,
}

-- @enum AssignmentButtonFunctionsSoundFile
Enums.AssignmentButtonFunctionsSoundFile = {
  [""] = 0,
  Empty = 0,
  ["Go+"] = 3,
  Off = 8,
  On = 7,
  Pause = 18,
  Toggle = 14,
}

-- @enum AssignmentButtonFunctionsTimer
Enums.AssignmentButtonFunctionsTimer = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
  ["Go+"] = 3,
  Off = 8,
  Pause = 18,
  Temp = 13,
  Toggle = 14,
  Top = 15,
}

-- @enum AssignmentButtonFunctionsUser
Enums.AssignmentButtonFunctionsUser = {
  [""] = 0,
  Empty = 0,
  LogIn = 74,
}

-- @enum AssignmentButtonFunctionsView
Enums.AssignmentButtonFunctionsView = {
  [""] = 0,
  Call = 111,
  Empty = 0,
}

-- @enum AssignmentButtonFunctionsWorld
Enums.AssignmentButtonFunctionsWorld = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
  Off = 8,
  On = 7,
  SelectFixtures = 123,
  Temp = 13,
  Toggle = 14,
}

-- @enum AssignmentButtonUnpressFunctions
Enums.AssignmentButtonUnpressFunctions = {
  [""] = 0,
  ["<<<"] = 6,
  [">>>"] = 5,
  At = 48,
  Call = 111,
  DoubleSpeed = 27,
  Empty = 0,
  FastSync = 31,
  ["Go+"] = 3,
  ["Go-"] = 4,
  Goto = 16,
  HalfSpeed = 26,
  Kill = 29,
  Learn = 9,
  LearnSpeed = 10,
  Load = 17,
  LogIn = 74,
  Off = 8,
  On = 7,
  Pause = 18,
  Rate1 = 11,
  ReSync = 30,
  Select = 24,
  SelectFixtures = 123,
  Speed1 = 12,
  Toggle = 14,
  Top = 15,
}

-- @enum AssignmentFaderFunctions
Enums.AssignmentFaderFunctions = {
  [""] = 0,
  Empty = 0,
  Master = 35,
  Rate = 40,
  Speed = 41,
  Temp = 39,
  Time = 45,
  X = 36,
  XA = 37,
  XB = 38,
}

-- @enum AssignmentFaderFunctionsMasterOnly
Enums.AssignmentFaderFunctionsMasterOnly = {
  [""] = 0,
  Empty = 0,
  Master = 35,
}

-- @enum AssignmentFaderFunctionsNone
Enums.AssignmentFaderFunctionsNone = {
  [""] = 0,
  Empty = 0,
}

-- @enum AssignmentFaderFunctionsPreset    
Enums.AssignmentFaderFunctionsPreset     = {
  [""] = 0,
  Empty = 0,
  Master = 35,
  Rate = 40,
  Speed = 41,
  Temp = 39,
  Time = 45,
}

-- @enum AssignmentFaderFunctionsSubTrack
Enums.AssignmentFaderFunctionsSubTrack = {
  Master = 1,
  Rate = 6,
  Speed = 7,
  Temp = 5,
  Time = 11,
  X = 2,
  XA = 3,
  XB = 4,
}

-- @enum AssignmentGrandMasterButtonFunctions
Enums.AssignmentGrandMasterButtonFunctions = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
  Off = 8,
  On = 7,
  Temp = 13,
  Toggle = 14,
}

-- @enum AssignmentHighlightSoloButtonFunctions
Enums.AssignmentHighlightSoloButtonFunctions = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
  Off = 8,
  On = 7,
  Temp = 13,
  Toggle = 14,
}

-- @enum AssignmentPlaybackMasterButtonFunctions
Enums.AssignmentPlaybackMasterButtonFunctions = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
}

-- @enum AssignmentProgExecButtonTimeFunctions
Enums.AssignmentProgExecButtonTimeFunctions = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
  Off = 8,
  On = 7,
  Temp = 13,
  Toggle = 14,
}

-- @enum AssignmentProgExecButtonXFunctions
Enums.AssignmentProgExecButtonXFunctions = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
  Off = 8,
  On = 7,
  Toggle = 14,
}

-- @enum AssignmentRateButtonFunctions
Enums.AssignmentRateButtonFunctions = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
  GoStep = 23,
  Highlight = 19,
  Lowlight = 20,
  Off = 8,
  On = 7,
  Pause = 18,
  Rate1 = 11,
  Solo = 21,
  Temp = 13,
  Toggle = 14,
}

-- @enum AssignmentSoundMasterButtonFunctions
Enums.AssignmentSoundMasterButtonFunctions = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
  Off = 8,
  On = 7,
  Temp = 13,
  Toggle = 14,
}

-- @enum AssignmentSpeedButtonFunctions
Enums.AssignmentSpeedButtonFunctions = {
  [""] = 0,
  Black = 2,
  DoubleSpeed = 27,
  Empty = 0,
  FastSync = 31,
  Flash = 1,
  HalfSpeed = 26,
  Learn = 9,
  LearnSpeed = 10,
  Off = 8,
  On = 7,
  Pause = 18,
  ReSync = 30,
  Speed1 = 12,
  Temp = 13,
  Toggle = 14,
}

-- @enum AssignmentTimecodeFunctions
Enums.AssignmentTimecodeFunctions = {
  [""] = 0,
  ["<<<"] = 6,
  [">>>"] = 5,
  At = 48,
  Black = 2,
  Call = 111,
  DoubleSpeed = 27,
  Empty = 0,
  FastSync = 31,
  Flash = 1,
  ["Go+"] = 3,
  ["Go-"] = 4,
  Goto = 16,
  HalfSpeed = 26,
  Kill = 29,
  Learn = 9,
  LearnSpeed = 10,
  Load = 17,
  LogIn = 74,
  Off = 8,
  On = 7,
  Pause = 18,
  Rate1 = 11,
  ReSync = 30,
  Select = 24,
  SelectFixtures = 123,
  Speed1 = 12,
  Swap = 25,
  Temp = 13,
  Time = 22,
  Toggle = 14,
  Top = 15,
}

-- @enum AssignmentTimingFunctions
Enums.AssignmentTimingFunctions = {
  [""] = 0,
  Black = 2,
  Empty = 0,
  Flash = 1,
}

-- @enum AttributeMode
Enums.AttributeMode = {
  PanTilt = 0,
  XY = 1,
  XZ = 2,
  YZ = 3,
}

-- @enum AttriebuteEncoderResolution
Enums.AttriebuteEncoderResolution = {
  Coarse = 16777216,
  Fine = 1677721,
  Increment = 167772,
  Native = -16777216,
}

-- @enum AttriebuteEncoderResolutionDefault
Enums.AttriebuteEncoderResolutionDefault = {
  Coarse = 16777216,
  Default = 0,
  Fine = 1677721,
  Increment = 167772,
  Native = -16777216,
}

-- @enum AttriebuteEncoderResolutionSmall
Enums.AttriebuteEncoderResolutionSmall = {
  Coarse = 16777216,
  Fine = 1677721,
  Increment = 167772,
}

-- @enum AutoCreateSource
Enums.AutoCreateSource = {
  ChannelSets = 1,
  ["FixtureType Presets"] = 0,
}

-- @enum AutoInterface
Enums.AutoInterface = {
  Auto = 0,
}

-- @enum AutoLayoutScrollType
Enums.AutoLayoutScrollType = {
  Auto = 2,
  Horizontal = 1,
  Vertical = 0,
}

-- @enum AutoSaveMode
Enums.AutoSaveMode = {
  ["120 Minutes"] = 5,
  ["15 Minutes"] = 2,
  ["30 Minutes"] = 3,
  ["360 Minutes"] = 6,
  ["5 Minutes"] = 1,
  ["60 Minutes"] = 4,
  Off = 0,
}

-- @enum AutoStomp
Enums.AutoStomp = {
  Off = 0,
  On = 2,
  Prio = 1,
}

-- @enum AxisGroupType
Enums.AxisGroupType = {
  XY = 0,
  XZ = 1,
  YZ = 2,
}

-- @enum AxisSystem
Enums.AxisSystem = {
  Object = 1,
  Stage = 0,
}

-- @enum BackdropPatchType
Enums.BackdropPatchType = {
  Frame = 1,
  Nine = 0,
  ThreeHorizontal = 3,
  ThreeVertical = 2,
}

-- @enum BackupBrowserFilter
Enums.BackupBrowserFilter = {
  Backups = 1,
  Demoshows = 2,
  Shows = 0,
  Templates = 3,
}

-- @enum BeamMode
Enums.BeamMode = {
  High = 3,
  ["High Fancy"] = 4,
  Line = 1,
  ["No Beam"] = 0,
  Standard = 2,
}

-- @enum BeamModePatch
Enums.BeamModePatch = {
  Line = 1,
  Simple = 2,
}

-- @enum BeamType
Enums.BeamType = {
  Fresnel = 5,
  Glow = 6,
  None = 2,
  PC = 4,
  Rectangle = 3,
  Spot = 1,
  Wash = 0,
}

-- @enum BlinkingButtonMode
Enums.BlinkingButtonMode = {
  Exec = 1,
  Prog = 0,
}

-- @enum BloomIntensity3d
Enums.BloomIntensity3d = {
  Off = 0,
  On = 1,
}

-- @enum BodyQuality3d
Enums.BodyQuality3d = {
  Box = 1,
  High = 5,
  Low = 2,
  None = 0,
  Simple = 3,
  Standard = 4,
  Ultra = 6,
}

-- @enum BodyQuality3dPatch
Enums.BodyQuality3dPatch = {
  Box = 1,
  Standard = 4,
  Ultra = 6,
}

-- @enum BuildType
Enums.BuildType = {
  Asan = 2,
  Debug = 1,
  Release = 0,
}

-- @enum ButtonHeight
Enums.ButtonHeight = {
  ["20"] = 20,
  ["25"] = 25,
  ["30"] = 30,
  ["35"] = 35,
  ["40"] = 40,
  ["45"] = 45,
  ["50"] = 50,
  ["55"] = 55,
  ["60"] = 60,
  Default = 50,
}

-- @enum CachedObjectSource
Enums.CachedObjectSource = {
  Library = 1,
  Resource = 0,
  Showfile = 2,
}

-- @enum CalculatorMode
Enums.CalculatorMode = {
  Dec16 = 10,
  Dec24 = 11,
  Dec8 = 9,
  Decimal = 1,
  Double = 0,
  Hex = 2,
  Hex16 = 13,
  Hex24 = 14,
  Hex8 = 12,
  JointTime = 16,
  Percent = 15,
  Seconds = 5,
  SpeedBPM = 7,
  SpeedHz = 6,
  SpeedSec = 8,
  fps24 = 17,
  fps25 = 18,
  fps30 = 19,
  fps60 = 20,
}

-- @enum CameraMode
Enums.CameraMode = {
  ["2D_Back"] = 5,
  ["2D_Front"] = 1,
  ["2D_Left"] = 2,
  ["2D_Right"] = 4,
  ["2D_Top"] = 3,
  ["3D"] = 0,
}

-- @enum CameraType
Enums.CameraType = {
  Auto = 0,
  Back = 5,
  ["Back/Left"] = 4,
  ["Back/Right"] = 6,
  Front = 1,
  ["Front/Left"] = 2,
  ["Front/Right"] = 8,
  Left = 3,
  Right = 7,
  Top = 9,
}

-- @enum CategoryName
Enums.CategoryName = {
  Chat = 6,
  ["Command Line"] = 2,
  ["MA-Net"] = 4,
  Power = 3,
  System = 1,
  USB = 5,
  Undefined = 0,
}

-- @enum CellGrouping
Enums.CellGrouping = {
  SizeDriven = 4294967295,
}

-- @enum ChangeLevel
Enums.ChangeLevel = {
  Create = 7,
  Delete = 6,
  Exchange = 3,
  File = 0,
  Full = 8,
  FullWithoutContent = 9,
  Insert = 2,
  Layout = 5,
  Little = 13,
  Move = 4,
  MyProperty = 12,
  None = 14,
  Property = 11,
  Remove = 1,
  Structural = 10,
}

-- @enum ChannelFilterMode
Enums.ChannelFilterMode = {
  Active = 4,
  ["Active For Selected"] = 2,
  All = 5,
  ["All For Selected"] = 3,
}

-- @enum ChannelFrequency
Enums.ChannelFrequency = {
  ["15"] = 2,
  ["30"] = 1,
  ["60"] = 0,
  Slow1 = 3,
  Slow2 = 4,
  Slow3 = 5,
}

-- @enum ChannelSetReadoutMode
Enums.ChannelSetReadoutMode = {
  Name = 2,
  Value = 0,
  ["Value+Name"] = 1,
}

-- @enum ChildrenFillPolicy
Enums.ChildrenFillPolicy = {
  ColumnFirst = 2,
  Default = 0,
  RowFirst = 1,
}

-- @enum CleanupOperation
Enums.CleanupOperation = {
  Duplicates = 8,
  GridPosition = 32,
  NoReference = 1,
  None = 0,
  Recipe = 4,
  StackAll = 16,
}

-- @enum ClipMode
Enums.ClipMode = {
  Clip = 1,
  None = 0,
  Wrap = 2,
}

-- @enum ClockSources
Enums.ClockSources = {
  ["Session Time"] = 0,
  ["Time Zone"] = 2,
  Timecode = 1,
  Timer = 3,
}

-- @enum CloningWindowMode
Enums.CloningWindowMode = {
  Grid = 1,
  Layout = 2,
  Sheet = 0,
}

-- @enum CmdEventStatus
Enums.CmdEventStatus = {
  Off = 0,
  On = 1,
}

-- @enum ColorDisplayMode
Enums.ColorDisplayMode = {
  CMY = 2,
  RGB = 1,
}

-- @enum ColorDisplayModeAuto
Enums.ColorDisplayModeAuto = {
  Auto = 0,
  CMY = 2,
  RGB = 1,
}

-- @enum ColorEncoderFunction
Enums.ColorEncoderFunction = {
  Auto = 0,
  CIE = 4,
  CMY = 3,
  HSB = 1,
  RGB = 2,
}

-- @enum ColorMixMode
Enums.ColorMixMode = {
  ["Fixture Type"] = 0,
  ["Rec.2020"] = 2,
  ["Rec.709"] = 1,
  Standard = 3,
}

-- @enum ColorPickerWindowMode
Enums.ColorPickerWindowMode = {
  Book = 3,
  CIE = 0,
  Fader = 2,
  HSB = 1,
}

-- @enum ColorSample
Enums.ColorSample = {
  CES01 = 0,
  CES02 = 1,
  CES03 = 2,
  CES04 = 3,
  CES05 = 4,
  CES06 = 5,
  CES07 = 6,
  CES08 = 7,
  CES09 = 8,
  CES10 = 9,
  CES11 = 10,
  CES12 = 11,
  CES13 = 12,
  CES14 = 13,
  CES15 = 14,
  CES16 = 15,
  CES17 = 16,
  CES18 = 17,
  CES19 = 18,
  CES20 = 19,
  CES21 = 20,
  CES22 = 21,
  CES23 = 22,
  CES24 = 23,
  CES25 = 24,
  CES26 = 25,
  CES27 = 26,
  CES28 = 27,
  CES29 = 28,
  CES30 = 29,
  CES31 = 30,
  CES32 = 31,
  CES33 = 32,
  CES34 = 33,
  CES35 = 34,
  CES36 = 35,
  CES37 = 36,
  CES38 = 37,
  CES39 = 38,
  CES40 = 39,
  CES41 = 40,
  CES42 = 41,
  CES43 = 42,
  CES44 = 43,
  CES45 = 44,
  CES46 = 45,
  CES47 = 46,
  CES48 = 47,
  CES49 = 48,
  CES50 = 49,
  CES51 = 50,
  CES52 = 51,
  CES53 = 52,
  CES54 = 53,
  CES55 = 54,
  CES56 = 55,
  CES57 = 56,
  CES58 = 57,
  CES59 = 58,
  CES60 = 59,
  CES61 = 60,
  CES62 = 61,
  CES63 = 62,
  CES64 = 63,
  CES65 = 64,
  CES66 = 65,
  CES67 = 66,
  CES68 = 67,
  CES69 = 68,
  CES70 = 69,
  CES71 = 70,
  CES72 = 71,
  CES73 = 72,
  CES74 = 73,
  CES75 = 74,
  CES76 = 75,
  CES77 = 76,
  CES78 = 77,
  CES79 = 78,
  CES80 = 79,
  CES81 = 80,
  CES82 = 81,
  CES83 = 82,
  CES84 = 83,
  CES85 = 84,
  CES86 = 85,
  CES87 = 86,
  CES88 = 87,
  CES89 = 88,
  CES90 = 89,
  CES91 = 90,
  CES92 = 91,
  CES93 = 92,
  CES94 = 93,
  CES95 = 94,
  CES96 = 95,
  CES97 = 96,
  CES98 = 97,
  CES99 = 98,
}

-- @enum ColorSource
Enums.ColorSource = {
  Alpha = 3,
  Blue = 2,
  Const = 5,
  Green = 1,
  Intensity = 4,
  Red = 0,
}

-- @enum ColorSpaceMode
Enums.ColorSpaceMode = {
  ANSI = 2,
  Custom = 3,
  ProPhoto = 1,
  sRGB = 0,
}

-- @enum ColorWheelMode
Enums.ColorWheelMode = {
}

-- @enum ColumnOrder
Enums.ColumnOrder = {
  ["Left Right"] = 0,
  ["Right Left"] = 1,
}

-- @enum CommandWingBarDisplayMode
Enums.CommandWingBarDisplayMode = {
  Labels = 0,
}

-- @enum ComponentType
Enums.ComponentType = {
  Consumer = 3,
  Fuse = 4,
  Input = 0,
  NetworkInOut = 8,
  NetworkInput = 6,
  NetworkOutput = 7,
  NetworkProvider = 5,
  Output = 1,
  PowerSource = 2,
}

-- @enum Config
Enums.Config = {
  MaxElementsPerLayout = 16384,
  MaxMultiPatchPerFixture = 1024,
}

-- @enum ConnectionLimitConsole
Enums.ConnectionLimitConsole = {
  ["1"] = 1,
  ["2"] = 2,
}

-- @enum ConnectionLimitOnPC
Enums.ConnectionLimitOnPC = {
  ["1"] = 1,
  ["2"] = 2,
  ["3"] = 3,
  ["4"] = 4,
  ["5"] = 5,
}

-- @enum ConnectorGender
Enums.ConnectorGender = {
  Female = 1,
  Male = -1,
  Universal = 0,
}

-- @enum ConnectorType
Enums.ConnectorType = {
  BNC = 0,
  CACOM = 46,
  CEE_125A = 61,
  CEE_16A_2P = 55,
  CEE_16A_2P_110 = 56,
  CEE_32A = 57,
  CEE_32A_2P = 58,
  CEE_32A_2P_110 = 59,
  CEE_63A = 60,
  CEE_7_7 = 51,
  CENT24 = 35,
  CENT36 = 34,
  CENT50 = 33,
  Camlock = 67,
  DB15 = 18,
  DB25 = 19,
  DB37 = 20,
  DB50 = 21,
  DB9 = 17,
  DIN3 = 24,
  DIN5 = 25,
  DIN56905 = 81,
  DL96 = 30,
  DVI = 37,
  DisplayPort = 36,
  EDAC120 = 29,
  EDAC20 = 26,
  EDAC56 = 27,
  EDAC90 = 28,
  Edison = 53,
  Eieland = 54,
  F_CON = 49,
  HAN_16 = 75,
  HAN_4 = 76,
  HD15 = 22,
  HD25 = 23,
  HDMI = 38,
  HUBBEL_6_4 = 80,
  IEC_60320_C13_14 = 52,
  IEC_60320_C7_C8 = 50,
  IEE488 = 32,
  KRN = 3,
  L15_30 = 78,
  L6_20 = 77,
  LCDUP = 41,
  MDIN4 = 9,
  MDIN5 = 10,
  MDIN6 = 11,
  MSTJ = 5,
  NAC3FCA = 68,
  NAC3FCB = 69,
  NL4 = 45,
  N_CON = 48,
  PS2 = 39,
  PowerCONTRUE1TOP = 71,
  PowerconTRUE1 = 70,
  Powerlock = 62,
  Powerlock_120A = 63,
  Powerlock_400A = 64,
  Powerlock_660A = 65,
  Powerlock_800A = 66,
  RCA = 6,
  RJ11 = 16,
  RJ45 = 15,
  SC = 43,
  SCART = 7,
  SCDUP = 42,
  SCSI68 = 31,
  ST = 44,
  STJ = 4,
  SVIDEO = 8,
  Socapex_16 = 72,
  Socapex_7 = 73,
  Socapex_9 = 74,
  Stagepin = 79,
  TAG = 2,
  TBLK = 1,
  TL_ST = 40,
  USB = 47,
  XLR3 = 12,
  XLR4 = 13,
  XLR5 = 14,
}

-- @enum ContentSheetCueMode
Enums.ContentSheetCueMode = {
  ["Current Cue"] = 0,
  Manual = 3,
  ["Next Cue"] = 2,
  ["Previous Cue"] = 1,
}

-- @enum CookMode
Enums.CookMode = {
  Abort = 0,
  Ask = -1,
  Merge = 3,
  MergeLowPriority = 2,
  Overwrite = 1,
  Remove = 4,
}

-- @enum CopyCueOnly
Enums.CopyCueOnly = {
  DimmerOnly = 3,
  Off = 0,
  On = 1,
}

-- @enum CopyCueOnlyPopup
Enums.CopyCueOnlyPopup = {
  ["Cue Only"] = 2,
  Tracking = 0,
}

-- @enum CountdownAlertRange
Enums.CountdownAlertRange = {
  ["All Stations"] = 1,
  Local = 0,
}

-- @enum CountdownAlertType
Enums.CountdownAlertType = {
  Command = 2,
  None = 0,
  ["Pop-Up"] = 1,
}

-- @enum CreateBy
Enums.CreateBy = {
  ["System Conversion"] = 2,
  Unknown = 0,
  ["User Conversion"] = 1,
}

-- @enum CrossSectionType
Enums.CrossSectionType = {
  TrussFramework = 0,
  Tube = 1,
}

-- @enum CueAssert
Enums.CueAssert = {
  [""] = 0,
  Assert = 1,
  None = 0,
  ["X-Assert"] = 2,
}

-- @enum CueCommandMode
Enums.CueCommandMode = {
  Enabled = 0,
  ["Force No"] = 1,
  ["Force Yes"] = 2,
}

-- @enum CueCopyDst
Enums.CueCopyDst = {
  Retain = 0,
}

-- @enum CueCopyDstCmd
Enums.CueCopyDstCmd = {
  ForceDefault = 2,
  ForceRelease = 1,
  Keep = 0,
}

-- @enum CueCopyDstMode
Enums.CueCopyDstMode = {
  Merge = 1,
  Overwrite = 0,
}

-- @enum CueCopySrc
Enums.CueCopySrc = {
  Content = 0,
  Look = 2,
  Status = 1,
}

-- @enum CueOnly
Enums.CueOnly = {
  DimmerOnly = 3,
  DimmerOnlyDefaultNew = 4,
  Off = 0,
  On = 1,
  OnDefaultNew = 2,
}

-- @enum CueOnlyPopup
Enums.CueOnlyPopup = {
  ["Cue Only"] = 1,
  Tracking = 0,
}

-- @enum CueOperationMode
Enums.CueOperationMode = {
  ["Cue Only"] = 0,
  Tracking = 1,
}

-- @enum CuePartAppearance
Enums.CuePartAppearance = {
  All = 3,
  ["Num+Name"] = 2,
  Number = 1,
  Off = 0,
}

-- @enum CuePartAppearanceContent
Enums.CuePartAppearanceContent = {
  ["Num+Name"] = 2,
  Number = 1,
  Off = 0,
}

-- @enum CuePartMode
Enums.CuePartMode = {
  Default = 4294967295,
}

-- @enum CuePartTextures
Enums.CuePartTextures = {
  IconCooking = 0,
}

-- @enum CueTimeNone
Enums.CueTimeNone = {
  None = -1,
}

-- @enum CueTrigger
Enums.CueTrigger = {
  BPM = 4,
  Follow = 2,
  Go = 0,
  Sound = 3,
  Time = 1,
}

-- @enum CueZeroMode
Enums.CueZeroMode = {
  ["All Used Attributes"] = 1,
  Off = 0,
  ["Only Used Dimmers"] = 2,
}

-- @enum DMXBreak
Enums.DMXBreak = {
  Overwrite = -1,
}

-- @enum DMXMergeMode
Enums.DMXMergeMode = {
  HTP = 2,
  LowTP = 3,
  Off = 0,
  Prio = 1,
}

-- @enum DMXReadoutMode
Enums.DMXReadoutMode = {
  Dec16 = 4,
  Dec24 = 5,
  Dec8 = 3,
  Hex16 = 1,
  Hex24 = 2,
  Hex8 = 0,
  Percent = 6,
}

-- @enum DMXValueReadoutMode
Enums.DMXValueReadoutMode = {
  Decimal = 1,
  Hex = 2,
  Percent = 0,
}

-- @enum DMXVirtualResolution
Enums.DMXVirtualResolution = {
  ["16 bits"] = 2,
  ["24 bits"] = 3,
  ["8 bits"] = 1,
}

-- @enum DSCPCodes
Enums.DSCPCodes = {
  AF11 = 10,
  AF12 = 12,
  AF13 = 14,
  AF21 = 18,
  AF22 = 20,
  AF23 = 22,
  AF31 = 26,
  AF32 = 28,
  AF33 = 30,
  AF41 = 34,
  AF42 = 36,
  AF43 = 38,
  ["CS0 (Default)"] = 0,
  CS1 = 8,
  CS2 = 16,
  CS3 = 24,
  CS4 = 32,
  CS5 = 40,
  CS6 = 48,
  CS7 = 56,
  EF = 46,
  ["Voice-Admit"] = 44,
}

-- @enum DSCPCodesDMX
Enums.DSCPCodesDMX = {
  AF11 = 10,
  AF12 = 12,
  AF13 = 14,
  AF21 = 18,
  AF22 = 20,
  AF23 = 22,
  AF31 = 26,
  AF32 = 28,
  AF33 = 30,
  AF41 = 34,
  AF42 = 36,
  AF43 = 38,
  CS0 = 0,
  CS1 = 8,
  CS2 = 16,
  CS3 = 24,
  ["CS4 (Default)"] = 32,
  CS5 = 40,
  CS6 = 48,
  CS7 = 56,
  EF = 46,
  ["Voice-Admit"] = 44,
}

-- @enum DataMergeTimeout
Enums.DataMergeTimeout = {
  Unlimited = 9223372036854775807,
}

-- @enum DataNegotiationMode
Enums.DataNegotiationMode = {
  Cancel = 0,
  Merge = 2,
  ["Use Master"] = 1,
  ["Use Mine"] = 3,
}

-- @enum DataNegotiationModeDefault
Enums.DataNegotiationModeDefault = {
  Cancel = 0,
  ["Keep Only Master Data"] = 1,
  ["Merge All Data"] = 2,
}

-- @enum DatumMode
Enums.DatumMode = {
  Date = 1,
  Full = 0,
  Time = 2,
}

-- @enum DebugUsbDataSection
Enums.DebugUsbDataSection = {
  All = 0,
  Analog = 7,
  Button = 9,
  Capabilities = 20,
  Digital = 8,
  DmxIn = 1,
  DmxInCheck = 2,
  DmxOut = 3,
  Encoder = 10,
  Fader = 11,
  HeartBeat = 15,
  Led = 12,
  Midi = 4,
  NotifierLayer = 17,
  Protocol = 14,
  RTC = 19,
  Smpte = 5,
  Software = 16,
  Sync = 13,
  Text = 18,
  Ups = 6,
}

-- @enum Default
Enums.Default = {
  Default = 4294967295,
}

-- @enum DefinedPoolColumns
Enums.DefinedPoolColumns = {
  ["Not Defined"] = 4294967295,
  ["Take Current Width"] = 4294967294,
}

-- @enum DeskLightChannel
Enums.DeskLightChannel = {
  DeskLights = 1,
  LedEncoder = 2,
  LedExec = 4,
  LedFader = 3,
  LedKeyboard = 5,
  LedOther = 6,
  ScreenBig = 7,
  ScreenExternal = 10,
  ScreenLetter = 8,
  ScreenSmall = 9,
}

-- @enum DimmerWheelResolution
Enums.DimmerWheelResolution = {
  Coarse = 1,
  Fine = 2,
  Normal = 0,
}

-- @enum Disabled
Enums.Disabled = {
  [""] = 1,
  Disabled = 0,
}

-- @enum DispView
Enums.DispView = {
  CPU = 2,
  ["CPU Temp"] = 4,
  Details = 8,
  Fan = 7,
  ["GPU Temp"] = 5,
  HDD = 9,
  Memory = 3,
  Network = 10,
  Realtime = 0,
  ["Sys Temp"] = 6,
  Timing = 1,
}

-- @enum DisplayIndex
Enums.DisplayIndex = {
  None = 4294967295,
}

-- @enum DisplayNone
Enums.DisplayNone = {
  None = 4294967295,
}

-- @enum DisplayNumber
Enums.DisplayNumber = {
  Encoders = 7,
  Executors1 = 8,
  Executors2 = 9,
  Executors3 = 10,
  Executors4 = 11,
  Executors5 = 12,
  Executors6 = 13,
  Extern4 = 3,
  Extern5 = 4,
  Intern1 = 0,
  Intern2 = 1,
  Intern3 = 2,
  None = 4294967295,
  Small6 = 5,
  Small7 = 6,
  TouchMapper = 14,
}

-- @enum DisplayScales
Enums.DisplayScales = {
  ["0.75x"] = 12582912,
  ["1.25x"] = 20971520,
  ["1.5x"] = 25165824,
  ["1.75x"] = 29360128,
  ["1x"] = 16777216,
  ["2.5x"] = 41943040,
  ["2x"] = 33554432,
}

-- @enum DisplayType
Enums.DisplayType = {
  Big = 0,
  Long = 1,
  Small = 2,
}

-- @enum DisplayTypePreference
Enums.DisplayTypePreference = {
  Any = 0,
  Big = 1,
  BigLongSmall = 7,
  BigOrLong = 4,
  BigOrSmall = 5,
  Long = 2,
  LongOrSmall = 6,
  Small = 3,
}

-- @enum DmxCurveEditTool
Enums.DmxCurveEditTool = {
  AddAbsolute = 2,
  Delete = 3,
  MoveArea = 0,
  MovePoint = 4,
  MoveSpline = 5,
  Select = 1,
}

-- @enum DmxCurveModes
Enums.DmxCurveModes = {
  Custom = 2,
  MinMax = 0,
  Switch = 1,
}

-- @enum DmxPrio
Enums.DmxPrio = {
  HTP = 80,
  High = 48,
  Highest = 64,
  LTP = 32,
  Low = 16,
  Lowest = 0,
  Prog = 112,
  Super = 128,
  Swap = 96,
}

-- @enum DmxSheetCellType
Enums.DmxSheetCellType = {
  DmxTest = 8,
  NotPatched = 0,
  NotRequested = 6,
  Parked = 7,
  PartlySelected = 5,
  Patched1 = 1,
  Patched2 = 2,
  Selected = 3,
  SelectedInverted = 4,
}

-- @enum DmxSheetFixedColumnType
Enums.DmxSheetFixedColumnType = {
  Address = 0,
  Address2 = 1,
}

-- @enum DmxSheetHeaderType
Enums.DmxSheetHeaderType = {
  [""] = 0,
}

-- @enum DmxSheetSettingsAddressMode
Enums.DmxSheetSettingsAddressMode = {
  Absolute = 1,
  ["Univ.addr"] = 0,
}

-- @enum DmxSheetSettingsLevelbar
Enums.DmxSheetSettingsLevelbar = {
  Background = 1,
  Bar = 2,
  Off = 0,
}

-- @enum DmxSheetSettingsSelected
Enums.DmxSheetSettingsSelected = {
  Selected = 4294967295,
}

-- @enum DmxSheetSettingsShowField
Enums.DmxSheetSettingsShowField = {
  Attribute = 0,
  Id = 1,
  Value = 2,
}

-- @enum DmxSheetSettingsViewMode
Enums.DmxSheetSettingsViewMode = {
  Sheet = 0,
}

-- @enum DmxState
Enums.DmxState = {
  In = 2,
  Off = 0,
  Out = 1,
  RDM = 5,
}

-- @enum DmxTesterAddressMode
Enums.DmxTesterAddressMode = {
  Abs = 1,
  Uni = 0,
}

-- @enum DmxTesterMode
Enums.DmxTesterMode = {
  All = 0,
  Patched = 1,
  Unpatched = 2,
}

-- @enum DriveType
Enums.DriveType = {
  Internal = 1,
  Invalid = 0,
  OldVersion = 3,
  RemoteDrive = 4,
  Removeable = 2,
}

-- @enum DynamicPresetPool
Enums.DynamicPresetPool = {
  Dynamic = 4294967295,
}

-- @enum ECPlay
Enums.ECPlay = {
  [""] = 1,
  ["0"] = 0,
  ["1"] = 1,
  No = 0,
  Yes = 1,
  ["false"] = 0,
  off = 0,
  on = 1,
  ["true"] = 1,
}

-- @enum ECRec
Enums.ECRec = {
  [""] = 1,
  ["0"] = 0,
  ["1"] = 1,
  No = 0,
  Yes = 1,
  ["false"] = 0,
  off = 0,
  on = 1,
  ["true"] = 1,
}

-- @enum EC_AutoGrid
Enums.EC_AutoGrid = {
  Auto = 1,
  Manual = 0,
}

-- @enum EC_NoGrid
Enums.EC_NoGrid = {
  [""] = 2147483647,
  None = 2147483647,
}

-- @enum EmptyAsZero
Enums.EmptyAsZero = {
  [""] = 0,
}

-- @enum EmptyAsZeroFID
Enums.EmptyAsZeroFID = {
  [""] = 0,
  None = 0,
}

-- @enum EncoderBarContext
Enums.EncoderBarContext = {
  Default = 0,
  Overlay = 2,
  Window = 1,
}

-- @enum EncoderFactor
Enums.EncoderFactor = {
  Disabled = 0,
  Div10 = 1677721,
  Div2 = 8388608,
  ["Div2.55"] = 6579300,
  Div25 = 671088,
  Div5 = 3355443,
  Div50 = 335544,
  Mul10 = 167772160,
  Mul2 = 33554432,
  ["Mul2.55"] = 42781900,
  Mul25 = 419430400,
  Mul5 = 83886080,
  Mul50 = 838860800,
  One = 16777216,
}

-- @enum EncoderFunction
Enums.EncoderFunction = {
  Cmd = 8,
  CueSettings = 0,
  CueTiming = 1,
  ["Data Edit"] = 9,
  MIB = 6,
  PresetTiming1 = 2,
  PresetTiming2 = 3,
  PresetTiming3 = 4,
}

-- @enum EncoderFunctionLayoutView
Enums.EncoderFunctionLayoutView = {
  Arrangement = 1,
  Position = 0,
}

-- @enum EncoderGroupType
Enums.EncoderGroupType = {
  Speed = 0,
  Timing = 0,
  Value = 0,
}

-- @enum EncoderLink
Enums.EncoderLink = {
  AtFilter = 2,
  Feature = 1,
  Single = 0,
}

-- @enum EncoderLinkPhaser
Enums.EncoderLinkPhaser = {
  AtFilter = 2,
  Feature = 1,
  Single = 0,
}

-- @enum EncoderLinkResolution
Enums.EncoderLinkResolution = {
  FeatureGroup = 1,
  Single = 0,
}

-- @enum EncoderLinkValues
Enums.EncoderLinkValues = {
  Feature = 1,
  Single = 0,
}

-- @enum EncoderResolution3d
Enums.EncoderResolution3d = {
  Coarse = 0,
  Fine = 1,
  Increment = 2,
}

-- @enum EncoderResolutionType
Enums.EncoderResolutionType = {
  Fast = 1,
  Slow = 0,
}

-- @enum EncoderRing
Enums.EncoderRing = {
  Both = 2,
  Inner = 0,
  Outer = 1,
}

-- @enum EncoderType
Enums.EncoderType = {
  ColorPicker = 1,
  Executor = 16,
  Inside1 = 5,
  Inside2 = 7,
  Inside3 = 9,
  Inside4 = 11,
  Inside5 = 13,
  Outside1 = 6,
  Outside2 = 8,
  Outside3 = 10,
  Outside4 = 12,
  Outside5 = 14,
  PanTiltFollow = 2,
  PanTrackpad = 3,
  TiltTrackpad = 4,
  WheelMaster = 0,
}

-- @enum EncoderUIStyle
Enums.EncoderUIStyle = {
  Drag = 2,
  None = 0,
  Rotate = 1,
}

-- @enum EventsPlaybackRecord
Enums.EventsPlaybackRecord = {
  ["All Events"] = 1,
  ["Manual Events"] = 0,
}

-- @enum ExecConfigType
Enums.ExecConfigType = {
  Group = 4,
  Macro = 1,
  Master = 11,
  PlaybackMaster = 13,
  Plugin = 6,
  Preset = 5,
  ScreenConfig = 9,
  Sequence = 0,
  Sound = 8,
  SpeedMaster = 12,
  Timer = 10,
  User = 7,
  View = 2,
  World = 3,
}

-- @enum ExecDisplayMode
Enums.ExecDisplayMode = {
  Both = 2,
  ["Data only"] = 0,
}

-- @enum ExecEditorTab
Enums.ExecEditorTab = {
  Edit = 3,
  Handle = 1,
  LastTab = 4,
  Object = 0,
}

-- @enum ExecEvent
Enums.ExecEvent = {
  Encoder = 11,
  EncoderLeft = 7,
  EncoderRight = 9,
  Fader = 5,
  Key = 1,
  KeyUnpress = 2,
  MAEncoder = 12,
  MAEncoderLeft = 8,
  MAEncoderRight = 10,
  MAFader = 6,
  MAKey = 3,
  MAKeyUnpress = 4,
  None = 0,
}

-- @enum ExitCode
Enums.ExitCode = {
  AutoPluginFailed = 3,
  GeneralError = 5,
  Normal = 0,
  PowerDown = 4,
  Reboot = 2,
  Restart = 1,
}

-- @enum ExternTimeSyncMode
Enums.ExternTimeSyncMode = {
  NTP = 1,
  None = 0,
}

-- @enum ExtraStatusInfo
Enums.ExtraStatusInfo = {
  [""] = 0,
  Create = 2,
  Join = 1,
}

-- @enum FaderEnable
Enums.FaderEnable = {
  AlwaysOn = 1,
  Disabled = 2,
  Toggle = 0,
}

-- @enum FaderFunctions
Enums.FaderFunctions = {
  Highlight = 42,
  Lowlight = 43,
  Master = 35,
  Rate = 40,
  Solo = 44,
  Speed = 41,
  Temp = 39,
  Time = 45,
  XFade = 36,
  XFadeA = 37,
  XFadeB = 38,
}

-- @enum FailedCookedPart
Enums.FailedCookedPart = {
  Filter = 4,
  Group = 1,
  GroupPartlyCooked = 5,
  Matricks = 2,
  None = 0,
  Preset = 3,
}

-- @enum FailureMode
Enums.FailureMode = {
  Hold = 65535,
  ["Timeout 10m"] = 600,
  ["Timeout 10s"] = 10,
  ["Timeout 1h"] = 3600,
  ["Timeout 1m"] = 60,
  ["Timeout 20s"] = 20,
  ["Timeout 30m"] = 1800,
  ["Timeout 30s"] = 30,
}

-- @enum FalloffType
Enums.FalloffType = {
  Correct = 2,
  Linear = 1,
  None = 0,
}

-- @enum FilterAction
Enums.FilterAction = {
  Call = 9,
  None = 255,
  Select = 1,
}

-- @enum FilterRuleStatic
Enums.FilterRuleStatic = {
  No = 1,
  Yes = 0,
}

-- @enum FilterRuleTypes
Enums.FilterRuleTypes = {
  Hide = 1,
  Show = 0,
}

-- @enum FixedColumns
Enums.FixedColumns = {
  Auto = -1,
}

-- @enum FixturGraphicSource
Enums.FixturGraphicSource = {
  Auto = 0,
  DMX = 3,
  Output = 2,
  Value = 1,
}

-- @enum FixtureAppearanceMode
Enums.FixtureAppearanceMode = {
  Enabled = 1,
  Graphic = 2,
  None = 0,
}

-- @enum FixtureGraphicMode
Enums.FixtureGraphicMode = {
  Flip = 1,
  Gobo = 3,
  None = 0,
  Simple = 2,
}

-- @enum FixtureIdEnum
Enums.FixtureIdEnum = {
  None = 0,
}

-- @enum FixtureInvert
Enums.FixtureInvert = {
  [""] = 0,
  ["0"] = 0,
  ["1"] = 1,
  ["<Blank>"] = 0,
  Inverted = 1,
  No = 1,
  Yes = 1,
  ["false"] = 0,
  off = 0,
  on = 1,
  ["true"] = 1,
}

-- @enum FixtureMoveOperation
Enums.FixtureMoveOperation = {
  Absolute = 1,
  Relative = 2,
}

-- @enum FixtureOffsets
Enums.FixtureOffsets = {
  ["180°"] = 180,
  ["270°"] = 270,
  ["30°"] = 30,
  ["360°"] = 360,
  ["45°"] = 45,
  ["60°"] = 60,
  ["90°"] = 90,
  None = 0,
}

-- @enum FixtureSheetFixedColumnType
Enums.FixtureSheetFixedColumnType = {
  [""] = 0,
  InvalidGridPosition = 4,
  MainMultiPatchSelected = 5,
  PartlySelected = 3,
  Selected = 1,
  SelectedEdge = 6,
  SelectedInverted = 2,
}

-- @enum FixtureSheetHeaderType
Enums.FixtureSheetHeaderType = {
  [""] = 0,
  PartlySelected = 3,
  Selected = 1,
  SelectedInverted = 2,
}

-- @enum FixtureSheetSortMode
Enums.FixtureSheetSortMode = {
  CID = 1,
  FID = 0,
}

-- @enum FixtureSourceType
Enums.FixtureSourceType = {
  Classes = 1,
  Layers = 2,
}

-- @enum FixtureTypeSource
Enums.FixtureTypeSource = {
  GDTF = 2,
  ["In current show"] = 5,
  Shares = 4,
  User = 3,
  grandMA2 = 1,
  grandMA3 = 0,
}

-- @enum FixtureTypeSourceImport
Enums.FixtureTypeSourceImport = {
  Shares = 4,
  User = 3,
  grandMA2 = 1,
  grandMA3 = 0,
}

-- @enum FixtureTypeXYZStatus
Enums.FixtureTypeXYZStatus = {
  No = 0,
  Partial = 1,
  Yes = 2,
}

-- @enum FlipOption
Enums.FlipOption = {
  X = 0,
  Y = 1,
}

-- @enum FocusPriority
Enums.FocusPriority = {
  CanHaveFocus = 2,
  InitialFocus = 4,
  Never = 0,
  TabOnly = 1,
  WantsFocus = 3,
}

-- @enum FocusReason
Enums.FocusReason = {
  Lua = 6,
  None = 0,
  RestoreAfterModal = 7,
  UserClick = 3,
  UserClickTitle = 4,
  UserKeyTab = 5,
  ViewChanged = 2,
  ViewChangedLimited = 1,
}

-- @enum FocusSearchPolicy
Enums.FocusSearchPolicy = {
  Default = 0,
  Force = 1,
  Suppress = 2,
}

-- @enum FontSizeType
Enums.FontSizeType = {
  Pixel = 1,
  Point = 0,
}

-- @enum FontSizes
Enums.FontSizes = {
  ["11"] = 11,
  ["14"] = 14,
  ["16"] = 16,
  ["18"] = 18,
  ["20"] = 20,
  ["24"] = 24,
  ["28"] = 28,
  ["32"] = 32,
  ["9"] = 9,
}

-- @enum FrameFormat
Enums.FrameFormat = {
  ["24 fps"] = 24,
  ["25 fps"] = 25,
  ["30 fps"] = 30,
  ["60 fps"] = 60,
  Seconds = 0,
}

-- @enum FrameFormatClockSource
Enums.FrameFormatClockSource = {
  ["24 fps"] = 24,
  ["25 fps"] = 25,
  ["30 fps"] = 30,
  ["60 fps"] = 60,
  ["<Clock Source>"] = 0,
  Seconds = 100,
}

-- @enum FrameFormatDefault
Enums.FrameFormatDefault = {
  ["24 fps"] = 24,
  ["25 fps"] = 25,
  ["30 fps"] = 30,
  ["60 fps"] = 60,
  Default = 0,
  Seconds = 100,
}

-- @enum FunctionMode
Enums.FunctionMode = {
  WM_1D = 2,
  WM_2D = 1,
  WM_Phase = 3,
  WM_Unknown = 0,
  WM_Width = 4,
}

-- @enum FuseRating
Enums.FuseRating = {
  B = 0,
  C = 1,
  D = 2,
  K = 3,
  Z = 4,
}

-- @enum GE_MessageNotificationType
Enums.GE_MessageNotificationType = {
  None = 0,
  Notification = 1,
  ["Pop-up"] = 2,
}

-- @enum GE_StatusCategory
Enums.GE_StatusCategory = {
  Battery = 12,
  Blind = 3,
  Filter = 8,
  FlowControl = 19,
  Highlight = 1,
  KeyboardShortcuts = 20,
  Lowlight = 14,
  Memory = 16,
  None = 0,
  NotEnoughParameters = 6,
  ParameterOverload = 7,
  Parked = 4,
  Phasers = 17,
  Preview = 15,
  RecipeEditing = 13,
  Reserved = 18,
  Solo = 2,
  Tester = 5,
  TimecodeRec = 10,
  World = 9,
  Worldserver = 11,
}

-- @enum GE_StatusSource
Enums.GE_StatusSource = {
  All = 1,
  My = 0,
}

-- @enum GE_StatusVisibility
Enums.GE_StatusVisibility = {
  Always = 2,
  Never = 0,
  ["On Activity"] = 1,
}

-- @enum GelGridType
Enums.GelGridType = {
  ["Big Icons"] = 2,
  List = 0,
  ["Small Icons"] = 1,
}

-- @enum GelSortType
Enums.GelSortType = {
  Key = 2,
  Name = 1,
  None = 0,
}

-- @enum GenVirtualDimmer
Enums.GenVirtualDimmer = {
  No = 0,
  Yes = 1,
}

-- @enum GenerateParmeters
Enums.GenerateParmeters = {
  AmountHue = 1,
  AmountSaturation = 2,
  DimmerIncrement = 0,
  GelList = 4,
  SortColor = 3,
}

-- @enum GeneratorLimits
Enums.GeneratorLimits = {
  ["14d"] = 0,
}

-- @enum GeometryType
Enums.GeometryType = {
  Axis = 1,
  Beam = 2,
  Display = 10,
  FilterBeam = 5,
  FilterColor = 3,
  FilterGobo = 4,
  FilterShaper = 6,
  Inventory = 13,
  Laser = 11,
  Magnet = 16,
  MediaServerCamera = 8,
  MediaServerLayer = 7,
  MediaServerMaster = 9,
  None = 0,
  Structure = 14,
  Support = 15,
  WiringObject = 12,
}

-- @enum GestureId
Enums.GestureId = {
  ["!Invalid!"] = 32769,
  Click = 2,
  Pan = 0,
  PanScrollArea = 3,
  Swipe = 1,
}

-- @enum GestureResult
Enums.GestureResult = {
  CancelGesture = 7,
  EventProcessed = 1,
  FinishGesture = 5,
  FinishGesturePassEvent = 6,
  Ignore = 0,
  MayBeGesture = 2,
  TriggerGesture = 3,
  TriggerGesturePassEvent = 4,
}

-- @enum GestureStatus
Enums.GestureStatus = {
  Canceled = 4,
  Finished = 3,
  Finishing = 2,
  None = 0,
  Updated = 1,
}

-- @enum GlShaderTypes
Enums.GlShaderTypes = {
  Fragment = 35632,
  Geometry = 36313,
  TessCtrl = 36488,
  TessEval = 36487,
  Vertex = 35633,
}

-- @enum GoboMode
Enums.GoboMode = {
  Animated = 2,
  Disabled = 0,
  Enabled = 1,
}

-- @enum GrandKnob
Enums.GrandKnob = {
  GrandKnob = 100,
  None = 4294967295,
}

-- @enum GridColumnFilterCollect
Enums.GridColumnFilterCollect = {
  AllTabColumnFilter = 6,
  MacroTabColumnFilter = 1,
  PresetTabColumnFilter = 3,
  SeqenceTabColumnFilter = 0,
  SoundFileTabColumnFilter = 5,
  TimecodeTabColumnFilter = 2,
  TimerTabColumnFilter = 4,
}

-- @enum GridContentFilterMode
Enums.GridContentFilterMode = {
  And = 0,
  Or = 1,
}

-- @enum GridCursorMovement
Enums.GridCursorMovement = {
  ["Append X"] = 1,
  Newline = 2,
  None = 0,
}

-- @enum GridCursorMovementGroup
Enums.GridCursorMovementGroup = {
  ["<Linked>"] = 3,
  ["Append X"] = 1,
  Newline = 2,
  None = 0,
}

-- @enum GridDirection
Enums.GridDirection = {
  ["X before Y"] = 0,
  ["X before Z"] = 0,
  ["Y before X"] = 1,
  ["Y before Z"] = 0,
  ["Z before X"] = 1,
  ["Z before Y"] = 1,
}

-- @enum GridMatrixRotation
Enums.GridMatrixRotation = {
  ["0°"] = 0,
  ["180°"] = 2,
  ["270°"] = 3,
  ["90°"] = 1,
}

-- @enum GridMergeMode
Enums.GridMergeMode = {
  ["Append X"] = 1,
  Off = 0,
}

-- @enum GridModeAgenda
Enums.GridModeAgenda = {
  Day = 2,
  Month = 0,
  Week = 1,
}

-- @enum GridSortOrder
Enums.GridSortOrder = {
  Asc = 1,
  Desc = 2,
  None = 0,
}

-- @enum GridTool
Enums.GridTool = {
  Align = 4,
  Divide = 9,
  Flip = 3,
  Linearize = 0,
  MakeSymmetrical = 10,
  Multiply = 8,
  Newline = 7,
  RemoveGaps = 5,
  RemoveOffset = 6,
  Rotate = 2,
  Transpose = 1,
  UseMatricksPositions = 11,
}

-- @enum GridType
Enums.GridType = {
  ChannelSet = 3,
  FTPreset = 4,
  Fixture = 0,
  FixtureSource = 2,
  FixtureType = 1,
}

-- @enum GroupMasterMode
Enums.GroupMasterMode = {
  Additive = 4,
  Negative = 2,
  None = 0,
  Positive = 1,
  Scaling = 3,
}

-- @enum GroupMemoryType
Enums.GroupMemoryType = {
  Compressed = 0,
  Uncompressed = 1,
}

-- @enum GroupSelectionType
Enums.GroupSelectionType = {
  Absolute = 1,
  Relative = 0,
}

-- @enum HostOs
Enums.HostOs = {
  Linux = 1,
  Mac = 3,
  Rtos = 4,
  Undefined = 0,
  Windows = 2,
}

-- @enum HostRevision
Enums.HostRevision = {
  Rev1 = 0,
  Rev2 = 1,
  Rev3 = 2,
}

-- @enum HostStatus
Enums.HostStatus = {
  Connected = 3,
  ErrorShutdown = 8,
  GlobalMaster = 6,
  IdleMaster = 5,
  LicenceInvalid = 10,
  LocalMaster = 4,
  NormalShutdown = 7,
  Standalone = 2,
  Startup = 1,
  Undefined = 0,
  UpdateMode = 9,
}

-- @enum HostSubType
Enums.HostSubType = {
  Compact = 24,
  CompactXT = 25,
  ["DMX-key"] = 99,
  ["DMX-key starter"] = 100,
  FullSize = 20,
  FullSizeCRV = 21,
  IONode = 75,
  IONodeDIN = 76,
  Large = 41,
  Light = 22,
  LightCRV = 23,
  ["MA-Net3-duct"] = 77,
  MAkerStation = 98,
  MediaServer = 79,
  Medium = 40,
  Node2Port = 63,
  Node2PortDIN = 67,
  Node2PortWM = 66,
  Node4Port = 64,
  Node4PortDIN = 68,
  Node8Port = 65,
  Node8PortDIN = 69,
  RPU = 26,
  Recovery = 1,
  TrackingServer = 78,
  Undefined = 0,
  ["Vis+Dongle"] = 73,
  Visualizer = 74,
  ["Wing-Extension"] = 94,
  ["Wing-MFE"] = 92,
  ["Wing-MFX"] = 91,
  ["Wing-MM"] = 90,
  ["Wing-onPC"] = 93,
  ["Wing-onPCFader"] = 96,
  ["Wing-onPCXT"] = 95,
  XLarge = 42,
  onPC2Port = 60,
  onPC2PortDIN = 70,
  onPC4Port = 61,
  onPC4PortDIN = 71,
  onPC8Port = 62,
  onPC8PortDIN = 72,
  onPCRackUnit = 97,
}

-- @enum HostType
Enums.HostType = {
  Console = 1,
  Extension = 9,
  InternalWing = 5,
  NetworkNode = 4,
  PU = 3,
  Plugin = 7,
  PluginSmall = 8,
  Switch = 6,
  Undefined = 0,
  UpdateMode = 10,
  onPC = 2,
}

-- @enum Ignore
Enums.Ignore = {
  [""] = 0,
  Ignore = 1,
}

-- @enum IgnoreFT
Enums.IgnoreFT = {
  [""] = 4294967295,
  ["Follow FT"] = 4294967295,
  ["Ignore FT"] = 4294967294,
}

-- @enum ImageBackGroundMode
Enums.ImageBackGroundMode = {
  Bar = 1,
  Center = 4,
  Crop = 2,
  Stretch = 0,
  Tile = 3,
}

-- @enum ImageMirror
Enums.ImageMirror = {
  Both = 3,
  Horizontal = 1,
  None = 0,
  Vertical = 2,
}

-- @enum ImageResolution
Enums.ImageResolution = {
  ["128"] = 128,
  ["256"] = 256,
  ["512"] = 512,
  ["64"] = 64,
  Full = 0,
}

-- @enum ImageRotation
Enums.ImageRotation = {
  ["180°"] = 2,
  ["270°"] = 3,
  ["90°"] = 1,
  None = 0,
}

-- @enum ImageSource
Enums.ImageSource = {
  Gobos = 0,
  Images = 2,
  Symbols = 1,
  Videos = 3,
}

-- @enum ImageStoreSource
Enums.ImageStoreSource = {
  NDI = 1,
  ScreenShot = 0,
}

-- @enum Index
Enums.Index = {
  Illegal = -1,
}

-- @enum IndividualTiming
Enums.IndividualTiming = {
  Default = 0,
  Normalized = 1,
}

-- @enum InfoAppearanceMode
Enums.InfoAppearanceMode = {
  ["Label + Note"] = 2,
  Note = 1,
  Off = 0,
}

-- @enum InfoLinkMode
Enums.InfoLinkMode = {
  LastSelectedObject = 3,
  None = 0,
  SelectedMacro = 2,
  SelectedSequence = 1,
}

-- @enum InfoWindowMode
Enums.InfoWindowMode = {
  AllChildren = 3,
  CurrentChild = 1,
  NextChild = 2,
  Object = 0,
  ObjectAndChildren = 4,
}

-- @enum InputControl3d
Enums.InputControl3d = {
  ["Camera Move"] = 5,
  ["Camera Orbit"] = 2,
  ["Camera Pivot"] = 4,
  ["Camera Set Pivot"] = 6,
  ["Camera Zoom"] = 3,
  Follow = 1,
  Select = 0,
}

-- @enum InputType
Enums.InputType = {
  Keyboard = 2,
  Mouse = 0,
  Scroller = 3,
  Touch = 1,
}

-- @enum InternalQueues
Enums.InternalQueues = {
  App = 2,
  Cmd = 0,
  Manet = 5,
  Pult = 3,
  RT = 4,
  Root = 1,
}

-- @enum InvalidFootprint
Enums.InvalidFootprint = {
  ["?"] = -1,
}

-- @enum ItemGroupPosition
Enums.ItemGroupPosition = {
  Begin = 1,
  Center = 2,
  End = 3,
  None = 0,
  Single = 4,
}

-- @enum KeyAction
Enums.KeyAction = {
  Click = 5,
  DoublePress = 3,
  Hold = 2,
  Press = 1,
  Release = 0,
  ReleaseAfterHold = 4,
}

-- @enum KeyFunctions
Enums.KeyFunctions = {
  Black = 2,
  DS = 27,
  FastSync = 31,
  Flash = 1,
  Go = 3,
  GoBack = 4,
  GoBackFast = 6,
  GoFast = 5,
  Goto = 16,
  HS = 26,
  Highlight = 19,
  Kill = 29,
  Learn = 9,
  LearnSpeed = 10,
  Load = 17,
  Lowlight = 20,
  Off = 8,
  On = 7,
  Pause = 18,
  Rate1 = 11,
  ReSync = 30,
  Record = 28,
  Select = 24,
  Solo = 21,
  Speed1 = 12,
  Step = 23,
  Swap = 25,
  Temp = 13,
  Time = 22,
  Toggle = 14,
  Top = 15,
}

-- @enum KeyboardCodes
Enums.KeyboardCodes = {
  ["0"] = 48,
  ["1"] = 49,
  ["2"] = 50,
  ["3"] = 51,
  ["4"] = 52,
  ["5"] = 53,
  ["6"] = 54,
  ["7"] = 55,
  ["8"] = 56,
  ["9"] = 57,
  A = 65,
  Apostrophe = 39,
  B = 66,
  Backslash = 92,
  Backspace = 259,
  C = 67,
  CapsLock = 280,
  Comma = 44,
  D = 68,
  Delete = 261,
  Delta = 349,
  Down = 264,
  E = 69,
  End = 269,
  Enter = 257,
  Equal = 61,
  Escape = 256,
  F = 70,
  F1 = 290,
  F10 = 299,
  F11 = 300,
  F12 = 301,
  F2 = 291,
  F3 = 292,
  F4 = 293,
  F5 = 294,
  F6 = 295,
  F7 = 296,
  F8 = 297,
  F9 = 298,
  G = 71,
  GraveAccent = 96,
  H = 72,
  Home = 268,
  I = 73,
  Insert = 260,
  J = 74,
  K = 75,
  L = 76,
  Left = 263,
  LeftAlt = 342,
  LeftBracket = 91,
  LeftCtrl = 341,
  LeftShift = 340,
  M = 77,
  Minus = 45,
  N = 78,
  None = -1,
  NumLock = 282,
  O = 79,
  P = 80,
  PageDown = 267,
  PageUp = 266,
  Pause = 284,
  Period = 46,
  PrintScreen = 283,
  Q = 81,
  R = 82,
  Right = 262,
  RightAlt = 346,
  RightBracket = 93,
  RightCtrl = 345,
  RightShift = 344,
  S = 83,
  ScrollLock = 281,
  Semicolon = 59,
  Slash = 47,
  Space = 32,
  T = 84,
  Tab = 258,
  U = 85,
  Up = 265,
  V = 86,
  W = 87,
  World1 = 161,
  World2 = 162,
  X = 88,
  Y = 89,
  Z = 90,
  kpAdd = 334,
  kpDecimal = 330,
  kpDivide = 331,
  kpMultiply = 332,
  kpSubtract = 333,
}

-- @enum KeyboardModifier
Enums.KeyboardModifier = {
  Alt = 342,
  Ctrl = 341,
  None = -1,
  Shift = 340,
}

-- @enum KnockInMIB
Enums.KnockInMIB = {
  Off = 0,
  Post = 1,
}

-- @enum LampType
Enums.LampType = {
  Discharge = 0,
  Halogen = 2,
  LED = 3,
  Tungsten = 1,
}

-- @enum LaserColorType
Enums.LaserColorType = {
  RGB = 0,
  SingleWaveLength = 1,
}

-- @enum LastSelectedTab
Enums.LastSelectedTab = {
  AutoCreatePresets = 4,
  AutoStorePresets = 5,
  CreateGroups = 2,
  CreatePresets = 3,
  Export = 1,
  Import = 0,
}

-- @enum LayoutElementAlignmentH
Enums.LayoutElementAlignmentH = {
  Center = 0,
  Left = 1,
  OutsideLeft = 3,
  OutsideRight = 4,
  Right = 2,
}

-- @enum LayoutElementAlignmentV
Enums.LayoutElementAlignmentV = {
  Above = 3,
  Below = 4,
  Bottom = 2,
  Center = 0,
  Top = 1,
}

-- @enum LayoutElementSelectionRelevance
Enums.LayoutElementSelectionRelevance = {
  Background = 1,
  Off = 0,
}

-- @enum LayoutFitType
Enums.LayoutFitType = {
  Both = 2,
  Canvas = 1,
  Elements = 0,
}

-- @enum LayoutGridStyle
Enums.LayoutGridStyle = {
  Dots = 2,
  Lines = 1,
  Off = 0,
}

-- @enum LayoutLassoSelectionFilter
Enums.LayoutLassoSelectionFilter = {
  All = 0,
  Fixtures = 1,
  Others = 2,
}

-- @enum LayoutOutputSelection
Enums.LayoutOutputSelection = {
  DMX = 1,
  Output = 2,
  Value = 0,
}

-- @enum LayoutSizePolicy
Enums.LayoutSizePolicy = {
  Content = 2,
  Fixed = 0,
  Stretch = 1,
}

-- @enum LayoutStretch
Enums.LayoutStretch = {
  Bar = 1,
  Crop = 2,
  Stretch = 0,
}

-- @enum LayoutTool
Enums.LayoutTool = {
  Add = 2,
  Auto = 7,
  Delete = 3,
  Move = 4,
  Operate = 0,
  Resize = 5,
  ResizeFixedRatio = 6,
  Select = 1,
}

-- @enum LayoutType
Enums.LayoutType = {
  Circle = 2,
  Grid = 1,
  Line = 0,
}

-- @enum LayoutVisibility
Enums.LayoutVisibility = {
  Hidden = 0,
  Visible = 1,
}

-- @enum LicenseRequest
Enums.LicenseRequest = {
  Auto = 0,
  Off = 2,
  On = 1,
}

-- @enum LineHeights
Enums.LineHeights = {
  ["1"] = 1,
  ["10"] = 10,
  ["12"] = 12,
  ["2"] = 2,
  ["3"] = 3,
  ["4"] = 4,
  ["6"] = 6,
  ["8"] = 8,
  Auto = 0,
}

-- @enum LinearizeOption
Enums.LinearizeOption = {
  LeftToRight = 2,
  Numerical = 1,
  SelectionOrder = 0,
  TopToBottom = 3,
}

-- @enum LinesOverlayType
Enums.LinesOverlayType = {
  All = 1,
  ["All Dimmer 0"] = 2,
  None = 0,
  Selected = 3,
  ["Selected Dimmer 0"] = 4,
}

-- @enum LockTypes
Enums.LockTypes = {
  [""] = 0,
  PL = 2,
  SL = 3,
  UL = 1,
}

-- @enum LockedYesNo
Enums.LockedYesNo = {
  ["0"] = 0,
  ["1"] = 1,
  No = 0,
  UL = 1,
  Yes = 1,
  ["false"] = 0,
  off = 0,
  on = 1,
  ["true"] = 1,
}

-- @enum LoopMode
Enums.LoopMode = {
  Loop = 0,
  Off = 2,
  Pause = 1,
}

-- @enum MIDIMode
Enums.MIDIMode = {
  In = 0,
  ["In & Out"] = 3,
  ["In & Out & Thru"] = 2,
  Out = 1,
}

-- @enum MIDITCMode
Enums.MIDITCMode = {
  In = 0,
  ["In & Out & Thru"] = 2,
  Out = 1,
}

-- @enum MacroLineWait
Enums.MacroLineWait = {
  Follow = 0,
  Go = -1,
}

-- @enum MacroPoolAction
Enums.MacroPoolAction = {
  Call = 9,
  None = 255,
  Toggle = 2,
}

-- @enum Master
Enums.Master = {
  BPM = 41,
  DefaultHighlight = 7,
  DefaultLowlight = 8,
  DefaultMaster = 0,
  DefaultRate = 5,
  DefaultSolo = 9,
  DefaultSpeed = 6,
  DefaultTemp = 4,
  DefaultTime = 10,
  DefaultXFade = 1,
  DefaultXFadeA = 2,
  DefaultXFadeB = 3,
  GrandExecTime = 20,
  GrandExecXFade = 21,
  GrandHighlight = 13,
  GrandLowlight = 14,
  GrandMaster = 11,
  GrandProgramTime = 18,
  GrandProgramXFade = 19,
  GrandRate = 16,
  GrandReserved = 17,
  GrandSolo = 15,
  GrandSoundFade = 25,
  GrandSoundIn = 24,
  GrandSoundOut = 23,
  GrandWorld = 12,
  None = 255,
  Playback1 = 42,
  Playback10 = 51,
  Playback11 = 52,
  Playback12 = 53,
  Playback13 = 54,
  Playback14 = 55,
  Playback15 = 56,
  Playback16 = 57,
  Playback17 = 58,
  Playback18 = 59,
  Playback19 = 60,
  Playback2 = 43,
  Playback20 = 61,
  Playback21 = 62,
  Playback22 = 63,
  Playback23 = 64,
  Playback24 = 65,
  Playback25 = 66,
  Playback26 = 67,
  Playback27 = 68,
  Playback28 = 69,
  Playback29 = 70,
  Playback3 = 44,
  Playback30 = 71,
  Playback31 = 72,
  Playback32 = 73,
  Playback33 = 74,
  Playback34 = 75,
  Playback35 = 76,
  Playback36 = 77,
  Playback37 = 78,
  Playback38 = 79,
  Playback39 = 80,
  Playback4 = 45,
  Playback40 = 81,
  Playback41 = 82,
  Playback42 = 83,
  Playback43 = 84,
  Playback44 = 85,
  Playback45 = 86,
  Playback46 = 87,
  Playback47 = 88,
  Playback48 = 89,
  Playback49 = 90,
  Playback5 = 46,
  Playback50 = 91,
  Playback6 = 47,
  Playback7 = 48,
  Playback8 = 49,
  Playback9 = 50,
  Speed1 = 26,
  Speed10 = 35,
  Speed11 = 36,
  Speed12 = 37,
  Speed13 = 38,
  Speed14 = 39,
  Speed15 = 40,
  Speed2 = 27,
  Speed3 = 28,
  Speed4 = 29,
  Speed5 = 30,
  Speed6 = 31,
  Speed7 = 32,
  Speed8 = 33,
  Speed9 = 34,
  Timing1 = 93,
  Timing10 = 102,
  Timing11 = 103,
  Timing12 = 104,
  Timing13 = 105,
  Timing14 = 106,
  Timing15 = 107,
  Timing16 = 108,
  Timing17 = 109,
  Timing18 = 110,
  Timing19 = 111,
  Timing2 = 94,
  Timing20 = 112,
  Timing21 = 113,
  Timing22 = 114,
  Timing23 = 115,
  Timing24 = 116,
  Timing25 = 117,
  Timing26 = 118,
  Timing27 = 119,
  Timing28 = 120,
  Timing29 = 121,
  Timing3 = 95,
  Timing30 = 122,
  Timing31 = 123,
  Timing32 = 124,
  Timing33 = 125,
  Timing34 = 126,
  Timing35 = 127,
  Timing36 = 128,
  Timing37 = 129,
  Timing38 = 130,
  Timing39 = 131,
  Timing4 = 96,
  Timing40 = 132,
  Timing41 = 133,
  Timing42 = 134,
  Timing43 = 135,
  Timing44 = 136,
  Timing45 = 137,
  Timing46 = 138,
  Timing47 = 139,
  Timing48 = 140,
  Timing49 = 141,
  Timing5 = 97,
  Timing50 = 142,
  Timing6 = 98,
  Timing7 = 99,
  Timing8 = 100,
  Timing9 = 101,
}

-- @enum MasterPriority
Enums.MasterPriority = {
  High = 4,
  Low = 2,
  Never = 0,
  Normal = 3,
  VeryLow = 1,
}

-- @enum MasterReaction
Enums.MasterReaction = {
  Grand = 2,
  Group = 1,
  None = 0,
}

-- @enum MatricksBlockNone
Enums.MatricksBlockNone = {
  ["No Block"] = -1,
  None = 0,
}

-- @enum MatricksGroupNone
Enums.MatricksGroupNone = {
  ["No Group"] = -1,
  None = 0,
}

-- @enum MatricksIndexNone
Enums.MatricksIndexNone = {
  ["No XYZ"] = -2,
  None = -1,
}

-- @enum MatricksInvert
Enums.MatricksInvert = {
  [""] = 0,
  On = 1,
}

-- @enum MatricksInvertStyle
Enums.MatricksInvertStyle = {
  All = 3,
  ["P+T"] = 2,
  Pan = 0,
  Tilt = 1,
}

-- @enum MatricksShiftNone
Enums.MatricksShiftNone = {
  ["No Shift"] = 32768,
  None = 0,
}

-- @enum MatricksShuffleNone
Enums.MatricksShuffleNone = {
  ["No Shuffle"] = 32768,
  None = 0,
}

-- @enum MatricksTabs
Enums.MatricksTabs = {
  Shuffle = 3,
  X = 0,
  Y = 1,
  Z = 2,
}

-- @enum MatricksWingsNone
Enums.MatricksWingsNone = {
  ["No Wings"] = -1,
  None = 0,
}

-- @enum MatrixWidthAuto
Enums.MatrixWidthAuto = {
  ["No Width"] = -1,
  None = 0,
}

-- @enum MeasurementInterpolation
Enums.MeasurementInterpolation = {
  Linear = 0,
  Log = 2,
  Step = 1,
}

-- @enum MeasurementStatus
Enums.MeasurementStatus = {
  ["Dark Calibration Failed"] = 4,
  ["Dark Calibration Successful"] = 3,
  ["Device Found"] = 2,
  Idle = 5,
  ["Measuring Fixture"] = 0,
  ["No Device Found"] = 1,
}

-- @enum MessageCategory
Enums.MessageCategory = {
  Chat = 6,
  Cmdline = 2,
  Manet = 4,
  Power = 3,
  System = 1,
  USB = 5,
  Undefined = 0,
}

-- @enum MessageCategoryName
Enums.MessageCategoryName = {
  Chat = 6,
  ["Command Line"] = 2,
  ["MA-Net"] = 4,
  Power = 3,
  System = 1,
  USB = 5,
  Undefined = 0,
}

-- @enum MessagePriority
Enums.MessagePriority = {
  Alerts = 4,
  Errors = 3,
  Spam = 1,
  Undefined = 0,
  Warnings = 2,
}

-- @enum MibEnableMode
Enums.MibEnableMode = {
  Enabled = 0,
  ["Force Early"] = 2,
  ["Force Late"] = 4,
  ["Force UponGo"] = 3,
  Never = 1,
}

-- @enum MibMode
Enums.MibMode = {
  Default = 0,
  Defined = 2,
  Early = 3,
  Late = 5,
  None = 1,
  UponGo = 4,
}

-- @enum MibModeSequence
Enums.MibModeSequence = {
  Early = 3,
  Late = 5,
  None = 1,
  UponGo = 4,
}

-- @enum MibMultiStep
Enums.MibMultiStep = {
  Paused = 1,
  Running = 0,
}

-- @enum MibPreferenceLevel
Enums.MibPreferenceLevel = {
  Bad = 25,
  ["Bad(25)"] = 25,
  Best = 100,
  ["Best(100)"] = 100,
  Good = 75,
  ["Good(75)"] = 75,
  Never = 0,
  ["Never(0)"] = 0,
  Normal = 50,
  ["Normal(50)"] = 50,
  Worst = 1,
  ["Worst(1)"] = 1,
}

-- @enum MibTiming
Enums.MibTiming = {
  Default = 9223372036854775807,
}

-- @enum MiniFadersMode
Enums.MiniFadersMode = {
  Blades = 2,
  Full = 1,
  None = 0,
  Rotation = 3,
}

-- @enum ModalResult
Enums.ModalResult = {
  Cancel = 2,
  Confirm = 3,
  None = 0,
  Ok = 1,
}

-- @enum Month
Enums.Month = {
  April = 3,
  August = 7,
  December = 11,
  February = 1,
  January = 0,
  July = 6,
  June = 5,
  March = 2,
  May = 4,
  November = 10,
  October = 9,
  September = 8,
}

-- @enum MonthShort
Enums.MonthShort = {
  Apr = 3,
  Aug = 7,
  Dec = 11,
  Feb = 1,
  Jan = 0,
  Jul = 6,
  Jun = 5,
  Mar = 2,
  May = 4,
  Nov = 10,
  Oct = 9,
  Sep = 8,
}

-- @enum MouseButtonTypes
Enums.MouseButtonTypes = {
  Left = 0,
  Middle = 2,
  Right = 1,
}

-- @enum MouseCursorSize
Enums.MouseCursorSize = {
  Large = 2,
  Medium = 1,
  Small = 0,
}

-- @enum MouseSpeed
Enums.MouseSpeed = {
  Fast = 3,
  Normal = 2,
  Slow = 1,
}

-- @enum MoveValueToPart
Enums.MoveValueToPart = {
  Default = 4294967295,
}

-- @enum MultiCastBase
Enums.MultiCastBase = {
  Alternative = 66799,
  Default = 66796,
}

-- @enum MultiLedBeamMode
Enums.MultiLedBeamMode = {
  ["Separated Beams"] = 0,
  ["Single Beam Dynamic Gobo"] = 2,
  ["Single Beam Mean Color"] = 1,
}

-- @enum NDIBandwidth
Enums.NDIBandwidth = {
  Highest = 100,
  Lowest = 0,
}

-- @enum NackStat
Enums.NackStat = {
  Reset = 0,
}

-- @enum NetworkFilter
Enums.NetworkFilter = {
  All = 0,
  ["My Location"] = 4,
  ["My Session"] = 1,
  ["Not My Session"] = 2,
  ["Wrong Version"] = 3,
}

-- @enum NoName
Enums.NoName = {
}

-- @enum None
Enums.None = {
  [""] = 4294967295,
  None = 4294967295,
}

-- @enum NoneAndDefault
Enums.NoneAndDefault = {
  Default = 1000001,
  None = 0,
}

-- @enum None_only
Enums.None_only = {
  None = 4294967295,
}

-- @enum NotificationType
Enums.NotificationType = {
  Permanent = 1,
  Timed = 0,
}

-- @enum OSCMode
Enums.OSCMode = {
  TCP = 1,
  UDP = 0,
}

-- @enum OffCueTrigger
Enums.OffCueTrigger = {
  [""] = 5,
  BPM = 4,
  Follow = 2,
  Go = 0,
  ["No Trigger"] = 5,
  Sound = 3,
  Time = 1,
}

-- @enum OnOff
Enums.OnOff = {
  Off = 0,
  On = 1,
}

-- @enum OnOffStatus
Enums.OnOffStatus = {
  Off = 0,
  On = 1,
  Toggle = 2,
  Undefined = 3,
}

-- @enum OopsConfirmation
Enums.OopsConfirmation = {
  Always = 2,
  Main = 1,
  Never = 0,
}

-- @enum Orientation
Enums.Orientation = {
  Horizontal = 1,
  Vertical = 0,
}

-- @enum OutputDelay
Enums.OutputDelay = {
  Max = 30,
  None = 0,
}

-- @enum PSRPatchFilterType
Enums.PSRPatchFilterType = {
  Conflicted = 3,
  Matched = 1,
  None = 0,
  Unmatched = 2,
}

-- @enum PUPriority
Enums.PUPriority = {
  High = 4,
  Low = 2,
  Never = 0,
  Normal = 3,
  VeryLow = 1,
}

-- @enum PatchOffset
Enums.PatchOffset = {
  None = -1,
}

-- @enum PatchType
Enums.PatchType = {
  [""] = 0,
  Coarse = 1,
  Fine = 2,
  Ultra = 3,
}

-- @enum Patched
Enums.Patched = {
  [""] = -1,
}

-- @enum PathContentType
Enums.PathContentType = {
  Mixed = 2,
  System = 0,
  User = 1,
}

-- @enum PathType
Enums.PathType = {
  AddonLibrary = 40,
  AgendaLibrary = 39,
  AppearanceLibrary = 67,
  ArtNet = 72,
  Backupfiles = 18,
  BinaryDir = 0,
  BitmapsLibrary = 48,
  ColorTheme = 24,
  Config = 10,
  CrashLog = 14,
  CustomPluginLibrary = 99,
  Data = 8,
  DemoShowfiles = 19,
  DmxCurvesLibrary = 58,
  ExternalPackages = 2,
  ExternalRoot = 1,
  FilterLibrary = 49,
  FixtureLibrary = 50,
  Fonts = 29,
  GelLibrary = 38,
  GeneratorsLibrary = 47,
  GoboImageCache = 31,
  GoboImageLibrary = 30,
  GrandMA2Library = 51,
  GrandMA3Library = 52,
  ImageLibrary = 36,
  InstallationPackages = 5,
  InvalidCrashLogs = 16,
  KeyboardShortcuts = 54,
  Keyboards = 53,
  Language = 23,
  Library = 59,
  MADir = 3,
  MacroLibrary = 43,
  MaterialLibrary = 33,
  MatricksLibrary = 45,
  MenuLibrary = 41,
  Mesh = 32,
  MvrLibrary = 57,
  NetworkKeys = 68,
  OSC = 70,
  PSRFiles = 20,
  PluginLibrary = 42,
  PresetLibrary = 46,
  QuickeyLibrary = 44,
  RenderQuality = 34,
  Resource = 21,
  SACN = 71,
  ScribbleLibrary = 66,
  Shaders = 25,
  ShadersDG = 27,
  ShadersSmall = 26,
  Shared = 9,
  Showfiles = 17,
  Software = 55,
  SymbolImageLibrary = 35,
  Temp = 12,
  TemplateShowfiles = 60,
  Textures = 28,
  Undo = 13,
  UpdateDir = 6,
  UploadedCrashLogs = 15,
  Usb = 11,
  UserAgendas = 95,
  UserBitmaps = 112,
  UserCameras = 89,
  UserCertificates = 96,
  UserColorThemes = 97,
  UserDataPools = 98,
  UserDeviceConfig = 77,
  UserDmxCurves = 117,
  UserEncoderBars = 94,
  UserExecConfigs = 101,
  UserExecutors = 109,
  UserFilters = 108,
  UserFixtureTypeResources = 79,
  UserFixtures = 78,
  UserGels = 93,
  UserGenerators = 113,
  UserGobos = 80,
  UserGroups = 105,
  UserImageLibrary = 64,
  UserInOut = 69,
  UserKeyboardShortcuts = 92,
  UserLayouts = 100,
  UserMacros = 102,
  UserMaterials = 83,
  UserMatricks = 103,
  UserMedia = 61,
  UserMeshImages = 82,
  UserMeshes = 81,
  UserMvr = 84,
  UserOutputConfig = 76,
  UserPatch = 115,
  UserPresets = 104,
  UserProfiles = 86,
  UserQuickeys = 114,
  UserRemotesDC = 73,
  UserRemotesDMX = 74,
  UserRemotesMIDI = 75,
  UserRenderQuality = 91,
  UserScreenConfigurations = 90,
  UserSequences = 106,
  UserSoundLibrary = 62,
  UserStages = 116,
  UserSymbols = 65,
  UserTimecodes = 110,
  UserTimers = 111,
  UserUsers = 85,
  UserVideoLibrary = 63,
  UserViews = 87,
  UserWorlds = 107,
  VersionDir = 4,
  VideoLibrary = 37,
  ViewButtonLibrary = 88,
  VizLibrary = 56,
  WebDaemon = 7,
  WebResource = 22,
}

-- @enum PhaseValueNone
Enums.PhaseValueNone = {
  ["180°"] = 8388608,
  ["270°"] = 12582912,
  ["360°"] = 16777216,
  ["90°"] = 4194304,
  None = 2147483647,
  ["Swap Phase"] = 2147483646,
}

-- @enum PhaserAbsRelMode
Enums.PhaserAbsRelMode = {
  ["Abs+Rel"] = 3,
  Absolute = 1,
  Relative = 2,
}

-- @enum PhaserBars
Enums.PhaserBars = {
  ["2DBar"] = 0,
  PhaserBar = 1,
  PresetBar = 2,
}

-- @enum PhaserEditTool
Enums.PhaserEditTool = {
  AddAbsolute = 2,
  AddRelative = 3,
  ChangePhase = 8,
  ChangeRotation = 7,
  ChangeSize = 6,
  ChangeSpeed = 11,
  ChangeWidth = 9,
  MoveArea = 0,
  MovePoint = 4,
  MoveSpline = 5,
  Select = 1,
  SelectForm = 10,
}

-- @enum PhaserEncoderFunction
Enums.PhaserEncoderFunction = {
  ["Move & Size"] = 0,
}

-- @enum PhaserFields
Enums.PhaserFields = {
  AbsPreset = 0,
  Delay = 3,
  Fade = 2,
  GridPos = 6,
  Measure = 7,
  Phase = 5,
  RelPreset = 1,
  Speed = 4,
}

-- @enum PhaserLineHeight
Enums.PhaserLineHeight = {
  Auto = 50,
}

-- @enum PhaserMode1D
Enums.PhaserMode1D = {
  Transition = 1,
  Value = 0,
}

-- @enum PhaserSheetMode
Enums.PhaserSheetMode = {
  ["Layer Condensed"] = 1,
  ["Layer Expanded"] = 2,
  Step = 0,
}

-- @enum PhaserTransformations
Enums.PhaserTransformations = {
  MirrorTimeMiddle = 2,
  MirrorTimeStart = 3,
  MirrorValues = 1,
  None = 0,
  SquashToOne = 4,
}

-- @enum PhaserTransformationsShort
Enums.PhaserTransformationsShort = {
  Mirror = 1,
  None = 0,
}

-- @enum PhaserValueFields
Enums.PhaserValueFields = {
  Absolute = 1,
  Accel = 3,
  Decel = 4,
  Integrated = 0,
  Relative = 2,
  Trans = 5,
  Width = 6,
}

-- @enum PhaserViewMode
Enums.PhaserViewMode = {
  ["1D"] = 2,
  ["2D"] = 1,
  Auto = 0,
  Sheet = 3,
}

-- @enum PhysicalUnit
Enums.PhysicalUnit = {
  Acceleration = 17,
  Angle = 7,
  AngularAccc = 19,
  AngularSpeed = 18,
  Area = 14,
  ColorComponent = 21,
  Current = 10,
  Energy = 13,
  Force = 8,
  Frequency = 9,
  Length = 2,
  LuminousIntensity = 6,
  Mass = 3,
  None = 0,
  Percent = 1,
  Power = 12,
  Speed = 16,
  Temperature = 5,
  Time = 4,
  Voltage = 11,
  Volume = 15,
  WaveLength = 20,
}

-- @enum PlaybackMaster
Enums.PlaybackMaster = {
  None = 255,
  Playback1 = 0,
  Playback10 = 9,
  Playback11 = 10,
  Playback12 = 11,
  Playback13 = 12,
  Playback14 = 13,
  Playback15 = 14,
  Playback16 = 15,
  Playback17 = 16,
  Playback18 = 17,
  Playback19 = 18,
  Playback2 = 1,
  Playback20 = 19,
  Playback21 = 20,
  Playback22 = 21,
  Playback23 = 22,
  Playback24 = 23,
  Playback25 = 24,
  Playback26 = 25,
  Playback27 = 26,
  Playback28 = 27,
  Playback29 = 28,
  Playback3 = 2,
  Playback30 = 29,
  Playback31 = 30,
  Playback32 = 31,
  Playback33 = 32,
  Playback34 = 33,
  Playback35 = 34,
  Playback36 = 35,
  Playback37 = 36,
  Playback38 = 37,
  Playback39 = 38,
  Playback4 = 3,
  Playback40 = 39,
  Playback41 = 40,
  Playback42 = 41,
  Playback43 = 42,
  Playback44 = 43,
  Playback45 = 44,
  Playback46 = 45,
  Playback47 = 46,
  Playback48 = 47,
  Playback49 = 48,
  Playback5 = 4,
  Playback50 = 49,
  Playback6 = 5,
  Playback7 = 6,
  Playback8 = 7,
  Playback9 = 8,
}

-- @enum PlaybackPriority
Enums.PlaybackPriority = {
  HTP = 3,
  High = 5,
  Highest = 4,
  LTP = 6,
  Low = 7,
  Lowest = 8,
  Super = 0,
  Swap = 2,
}

-- @enum PlaybackSourceSubTypes
Enums.PlaybackSourceSubTypes = {
  [""] = 0,
  Blocked = 2,
  DownGoing = 4,
  MIB = 5,
  MIBFade = 6,
  Tracked = 1,
  UpGoing = 3,
}

-- @enum PlaybackWindowExecFrom
Enums.PlaybackWindowExecFrom = {
  ["01-05"] = 1,
  ["06-10"] = 2,
  ["11-15"] = 3,
  ["16-20"] = 4,
  ["21-25"] = 5,
  ["26-30"] = 6,
  ["31-35"] = 7,
  ["36-40"] = 8,
  ["41-45"] = 9,
  ["46-50"] = 10,
  ["51-55"] = 11,
  ["56-60"] = 12,
  ["61-65"] = 13,
  ["66-70"] = 14,
  ["71-75"] = 15,
  ["76-80"] = 16,
  ["81-85"] = 15,
  ["86-90"] = 16,
  None = 0,
}

-- @enum PlaybacksOff
Enums.PlaybacksOff = {
  ["Keep Playbacks"] = 0,
  ["Playbacks Off"] = 1,
}

-- @enum PlaybacksToShow
Enums.PlaybacksToShow = {
  All = 6,
  Macros = 1,
  Presets = 3,
  Sequences = 0,
  SoundFiles = 5,
  Timecodes = 2,
  Timers = 4,
}

-- @enum PluginPlacement
Enums.PluginPlacement = {
  ForceMulti = 2,
  Multi = 1,
  Single = 0,
}

-- @enum PluginPoolAction
Enums.PluginPoolAction = {
  Call = 9,
  None = 255,
  Toggle = 2,
}

-- @enum PolicyOnEnter
Enums.PolicyOnEnter = {
  Clear = 1,
  Nothing = 0,
  SelectAll = 2,
}

-- @enum PoolSizeFactor
Enums.PoolSizeFactor = {
  Double = 2,
  Half = 0,
  Normal = 1,
}

-- @enum Pooltype
Enums.Pooltype = {
  Appearance = 1,
  Camera = 9,
  DataPool = 10,
  EncoderBar = 11,
  ExecConfig = 12,
  ExecPage = 13,
  Filter = 14,
  Gel = 15,
  GeneratorBitmap = 25,
  GeneratorRandom = 24,
  Group = 16,
  ImageGobo = 2,
  Layout = 17,
  Macro = 18,
  Material = 19,
  Matricks = 20,
  Mesh = 3,
  None = 0,
  ObjectTag = 21,
  Plugin = 7,
  Preset = 22,
  Quickey = 23,
  RenderQuality = 26,
  Scribble = 27,
  Sequence = 28,
  SoundFile = 8,
  SymbolImage = 4,
  Timecode = 29,
  Timer = 30,
  UserImage = 5,
  VideoFile = 6,
  View = 31,
  World = 32,
}

-- @enum PresetAction
Enums.PresetAction = {
  At = 6,
  Flash = 4,
  ["Go+"] = 3,
  None = 255,
  ["SelFix/At"] = 7,
  ["SelFix/Extract"] = 8,
  Temp = 5,
  Toggle = 2,
}

-- @enum PresetActionToken
Enums.PresetActionToken = {
  At = 48,
  Flash = 1,
  ["Go+"] = 3,
  None = 0,
  ["Pool Default"] = 410,
  ["SelFix/At"] = 123,
  ["SelFix/Extract"] = 55,
  Temp = 13,
  Toggle = 14,
}

-- @enum PresetDisplayMode
Enums.PresetDisplayMode = {
  Auto = 3,
  Symbol = 2,
  Text = 1,
}

-- @enum PresetFilterMode
Enums.PresetFilterMode = {
  Both = 2,
  Input = 0,
  None = -1,
  Output = 1,
}

-- @enum PresetIsPlayback
Enums.PresetIsPlayback = {
  Auto = 0,
  On = 1,
}

-- @enum PresetLinkMode
Enums.PresetLinkMode = {
  Both = 2,
  Integrated = 1,
  None = -1,
  Referenced = 0,
}

-- @enum PresetMode
Enums.PresetMode = {
  Global = 2,
  Selective = 1,
  Universal = 3,
}

-- @enum PresetModeDefault
Enums.PresetModeDefault = {
  Auto = 0,
  ForceGlobal = 5,
  Global = 2,
  Selective = 1,
  Universal = 3,
}

-- @enum PresetReadoutMode
Enums.PresetReadoutMode = {
  ID = 3,
  ["ID+Name"] = 4,
  ["ID+Name+Value"] = 5,
  Name = 0,
  ["Name+Value"] = 2,
  Value = 1,
}

-- @enum PresetValuesMode
Enums.PresetValuesMode = {
  Default = 1,
  Highlight = 2,
  Lowlight = 3,
  Normal = 0,
}

-- @enum Pretty RDMSensorUnit
Enums.PrettyRDMSensorUnit = {
  [""] = 0,
  ["A (AC P-P)"] = 6,
  ["A (AC RMS)"] = 7,
  ["A (DC)"] = 5,
  B = 28,
  Hz = 8,
  IRE = 27,
  J = 19,
  N = 18,
  P = 20,
  UNITS_MS = 128,
  ["V (AC P-P)"] = 3,
  ["V (AC RMS)"] = 4,
  ["V (DC)"] = 2,
  W = 10,
  cd = 24,
  kg = 11,
  ["kg/(m²)"] = 15,
  lm = 25,
  lx = 26,
  m = 12,
  ["m/(s²)"] = 17,
  ["m/s"] = 16,
  ["m²"] = 13,
  ["m³"] = 14,
  s = 21,
  sr = 23,
  ["°"] = 22,
  ["°C"] = 1,
  ["Ω"] = 9,
}

-- @enum PrettyRDMSensorUnitPrefix
Enums.PrettyRDMSensorUnitPrefix = {
  [""] = 0,
  E = 24,
  G = 21,
  M = 20,
  P = 23,
  T = 22,
  Y = 26,
  Z = 25,
  a = 8,
  c = 2,
  d = 1,
  da = 17,
  f = 7,
  h = 18,
  k = 19,
  m = 3,
  micro = 4,
  n = 5,
  p = 6,
  y = 10,
  z = 9,
}

-- @enum PriorityName
Enums.PriorityName = {
  Alerts = 4,
  Errors = 3,
  Spam = 1,
  Undefined = 0,
  Warnings = 2,
}

-- @enum ProgLayer
Enums.ProgLayer = {
  Absolute = 10,
  Accel = 12,
  CueAbs = 17,
  CueRel = 18,
  DMX = 19,
  Decel = 13,
  Delay = 3,
  Fade = 2,
  GridPos = 7,
  Measure = 8,
  Output = 20,
  Phase = 6,
  Relative = 11,
  Speed = 4,
  SpeedMaster = 5,
  Transition = 14,
  Width = 15,
}

-- @enum ProgLayerAuto
Enums.ProgLayerAuto = {
  Absolute = 10,
  Accel = 12,
  Auto = -1,
  CueAbs = 17,
  CueRel = 18,
  DMX = 19,
  Decel = 13,
  Delay = 3,
  Fade = 2,
  GridPos = 7,
  Measure = 8,
  Output = 20,
  Phase = 6,
  Relative = 11,
  Speed = 4,
  SpeedMaster = 5,
  Transition = 14,
  Width = 15,
}

-- @enum ProgUpdateCueMode
Enums.ProgUpdateCueMode = {
  All = 0,
  LastGo = 2,
  Selected = 1,
}

-- @enum ProgValueSource
Enums.ProgValueSource = {
  ActiveIntegrated = 6,
  ActivePreset = 5,
  ActiveValue = 4,
  None = 0,
  Playback = 8,
  PlaybackBlocked = 10,
  PlaybackDownGoing = 12,
  PlaybackMIB = 13,
  PlaybackMIBFade = 14,
  PlaybackOther = 15,
  PlaybackOtherBlocked = 17,
  PlaybackOtherDownGoing = 19,
  PlaybackOtherMIB = 20,
  PlaybackOtherMIBFade = 21,
  PlaybackOtherTracked = 16,
  PlaybackOtherUpGoing = 18,
  PlaybackTracked = 9,
  PlaybackUpGoing = 11,
  ProgIntegrated = 3,
  ProgOther = 7,
  ProgPreset = 2,
  ProgValue = 1,
  SelectedPlayback = 22,
  SelectedPlaybackBlocked = 24,
  SelectedPlaybackDownGoing = 26,
  SelectedPlaybackMIB = 27,
  SelectedPlaybackMIBFade = 28,
  SelectedPlaybackTracked = 23,
  SelectedPlaybackUpGoing = 25,
}

-- @enum ProgrammingLayer
Enums.ProgrammingLayer = {
  Absolute = 10,
  Accel = 12,
  Decel = 13,
  Delay = 3,
  Fade = 2,
  GridPos = 7,
  Measure = 8,
  Phase = 6,
  Relative = 11,
  Speed = 4,
  SpeedMaster = 5,
  Transition = 14,
  Width = 15,
}

-- @enum ProgrammingLayerGroup
Enums.ProgrammingLayerGroup = {
  Phaser = 1,
  Steps = 2,
  Values = 0,
}

-- @enum PropertyRadioButtonListEnabledItems
Enums.PropertyRadioButtonListEnabledItems = {
  AllEnabled = 4294967295,
}

-- @enum PropertyRadioButtonListSetType
Enums.PropertyRadioButtonListSetType = {
  Direct = 1,
  Property = 2,
  Set = 0,
}

-- @enum PsrDataPool
Enums.PsrDataPool = {
  Original = 4294967295,
}

-- @enum PsrOperation
Enums.PsrOperation = {
  Closed = 0,
  Conversion = 3,
  Dependencies = 6,
  HandleMatch = 7,
  Importing = 5,
  OpenImport = 4,
  OpenPatch = 2,
  Preparation = 1,
}

-- @enum PsrTab
Enums.PsrTab = {
  Import = 2,
  Patch = 1,
  Show = 0,
}

-- @enum PultType
Enums.PultType = {
  Any = 0,
  Conventional = 1,
  Web = 2,
}

-- @enum RDMCommandClass
Enums.RDMCommandClass = {
  DISCOVER = 16,
  DISCOVER_RESP = 17,
  GET = 32,
  GET_RESP = 33,
  SET = 48,
  SET_RESP = 49,
}

-- @enum RDMDataType
Enums.RDMDataType = {
  DS_ASCII = 2,
  DS_BIT_FIELD = 1,
  DS_MS = 128,
  DS_NOT_DEFINED = 0,
  DS_SIGNED_BYTE = 4,
  DS_SIGNED_DWORD = 8,
  DS_SIGNED_WORD = 6,
  DS_UNSIGNED_BYTE = 3,
  DS_UNSIGNED_DWORD = 7,
  DS_UNSIGNED_WORD = 5,
}

-- @enum RDMLampOnMode
Enums.RDMLampOnMode = {
  LAMP_ON_MODE_AFTER_CAL = 3,
  LAMP_ON_MODE_DMX = 1,
  LAMP_ON_MODE_OFF = 0,
  LAMP_ON_MODE_ON = 2,
  ["Manufacturer-Specific Modes"] = 128,
}

-- @enum RDMLampState
Enums.RDMLampState = {
  LAMP_ERROR = 127,
  LAMP_NOT_PRESENT = 4,
  LAMP_OFF = 0,
  LAMP_ON = 1,
  LAMP_STANDBY = 3,
  LAMP_STRIKE = 2,
  ["Manufacturer-Specific States"] = 128,
}

-- @enum RDMManufacturerId
Enums.RDMManufacturerId = {
  ["AAdyn Technology"] = 2223,
  ["ABLELITE INTERNATIONAL"] = 578,
  ["AC Entertainment Products Ltd."] = 2434,
  ["AC Lasers"] = 16707,
  ["ACME EFFECTS LTD."] = 14342,
  ["ACS - Ackerman Computer Sciences"] = 2297,
  ["ACTOR-MATE CO., LTD."] = 2326,
  ["ADB - TTV Technologies nv"] = 16708,
  ["ADDiCTiON BoX GbR"] = 1968,
  ["ADE ELETTRONICA srl"] = 16709,
  ["ADL Electronics Ltd."] = 2202,
  ["AIM Northwest"] = 20055,
  ["ALADIN Architekturlicht GmbH"] = 8358,
  ["ALL-DO INTERNATIONALCO., LTD."] = 10649,
  ["ALS Stanislaw Binkiewicz"] = 7104,
  ["ARC Solid-State Lighting Corp."] = 2165,
  ["ARNOLD LICHTTECHNIK"] = 16754,
  ["ARRI -- Arnold & Richter Cine Technik GmbH & Co. Betriebs KG"] = 8377,
  ["AUTOLUX Handels- und ProduktionsgmbH"] = 21553,
  ["AVAB America, Inc."] = 16705,
  AYRTON = 16761,
  ["AZ e-lite Pte Ltd"] = 8365,
  ["Aboutshow Color Light Co., LTD"] = 5860,
  ["Acclaim Lighting"] = 714,
  ["Acuity Brands Lighting Inc."] = 623,
  ["Adam Hall GmbH"] = 2212,
  ["Adelto Limited"] = 16740,
  ["Advanced Lighting Systems"] = 24940,
  ["Advatek Lighting"] = 24916,
  ["Aixz International (S)"] = 2458,
  ["Alcorn McBride Inc."] = 913,
  ["Alektra AB"] = 24908,
  ["Alenco BV"] = 16748,
  ["Alkalite LED Technology Corp"] = 8374,
  ["Altman Stage Lighting"] = 16689,
  ["Ambitsel, Inc."] = 1308,
  ["Ambra Elettronica s.r.l."] = 27794,
  ["American-Pro International"] = 1742,
  ["Amptown Lichttechnik GmbH"] = 16717,
  ["Anaren Inc."] = 31392,
  ["Anidea Engineering, Inc."] = 16713,
  ["Antari Lighting And Effects Ltd."] = 7896,
  ["Anytronics Ltd."] = 16718,
  ["Apogee Lighting"] = 16720,
  ["Apollo Design Technology, Inc"] = 24932,
  AquaTronic = 2358,
  ["Aquarii, Inc."] = 16721,
  ["Aquatique Show Int."] = 2483,
  ["Argetron Elektrik Elektronik Organizasyon Gida San. ve Dis Tic. Ltd. Sti."] = 2497,
  ["Arnold Tang Productions"] = 16724,
  ["Arthur Digital Solutions Kft"] = 32487,
  ["Artistic Licence Engineering Ltd."] = 16716,
  ["Astera LED Technology GmbH"] = 16755,
  ["Audio Scene"] = 16723,
  ["Audio Visual Devices P/L"] = 16726,
  AusChristmasLighting = 8378,
  ["Autotech Co."] = 2479,
  ["Avolites Ltd."] = 19798,
  ["BECKHOFF Automation GmbH"] = 16961,
  ["BEGLEC NV"] = 8482,
  BOTEX = 16975,
  ["Ballantyne Strong Inc."] = 29541,
  Barco = 16979,
  ["Bart van Stiphout Electronics & Software"] = 8496,
  ["Bigbear Co., Ltd."] = 2308,
  ["Bill Coghill Company : Bill Coghill Design"] = 16963,
  ["Birdbrain Labs LLC"] = 1102,
  ["Birket Engineering, Inc."] = 17058,
  ["Blossom Communications Corp."] = 4894,
  ["Bortis Elektronik"] = 258,
  ["Brighten Technology Development Co., Ltd."] = 1487,
  ["Brink Electronics"] = 2429,
  ["Brompton Technology Ltd."] = 2484,
  ["Brother,Brother & Sons Aps"] = 8481,
  ["Bushveld Labs"] = 2220,
  ["Bytecraft Entertainment Pty Ltd"] = 16965,
  ["C.I.Tronics Lighting Designers Ltda"] = 17225,
  ["CAST Software"] = 17223,
  ["CCI Power Supplies, LLC"] = 2454,
  ["CDCA Ltd."] = 17220,
  ["CDS advanced technology bv"] = 25444,
  ["CHAUVET Lighting"] = 8612,
  CHROMLECH = 8628,
  ["CKC Lighting Co., Ltd."] = 1579,
  ["CLAY PAKY S.p.A"] = 17232,
  ["CODEM MUSIC S.r.l."] = 17263,
  ["COSMOLIGHT SRL"] = 1387,
  CPOINT = 1844,
  ["CTG sp. z o.o."] = 1776,
  ["Callegenix LLC"] = 10152,
  ["Capricorn Software"] = 17235,
  CaptSystemes = 8617,
  ["Carallon Ltd."] = 812,
  ["ChamSys Ltd."] = 1290,
  ["ChamberPlus Co., Ltd"] = 26646,
  ["ChromaCove LLC"] = 8629,
  ["Cineo Lighting"] = 6669,
  ["Cinetix Medien u. Interface GmbH"] = 17257,
  ["City Design S.p.A."] = 4862,
  ["City Theatrical, Inc."] = 17236,
  ["Claude Heintz Design"] = 27768,
  ["Claudio Dal Cero Engineering"] = 17475,
  ["Coemar Spa"] = 17229,
  ["Color Kinetics Inc."] = 17227,
  ["Company NA"] = 20033,
  ["Conceptinetics Technologies and Consultancy Ltd."] = 1799,
  ["Connex GmbH"] = 17240,
  ["Coolon Pty Ltd"] = 8627,
  ["Corsair Technology Ltd."] = 1851,
  ["Creative Lighting And Sound Systems Pty Ltd"] = 161,
  ["Crystal Fountains Inc."] = 2504,
  ["Culture Crew bvba"] = 8609,
  ["D-LED Illumination Technologies Ltd."] = 1491,
  ["D-Light Designs, LLC"] = 8726,
  ["D.E.F. Srl"] = 8738,
  ["D.O.M. Datenverarbeitung GmbH"] = 17476,
  ["D.T.S. Illuminazione srl"] = 1808,
  ["DALCNET SRL"] = 17486,
  ["DAS Integrator Pte Ltd"] = 8740,
  ["DC Reactive"] = 31164,
  ["DDS Elettronica"] = 20300,
  DES = 18256,
  ["DF elettronica s.r.l."] = 17510,
  ["DIGITAL ART SYSTEM"] = 17473,
  ["DJPOWER ELECTRONIC STAGE LIGHTING FIXTURE FACTORY (GUANGZHOU)"] = 20781,
  ["DMX4ALL GmbH"] = 11290,
  ["DMXPROFI.EU GmbH i.G."] = 17488,
  ["Dangeross Design"] = 25700,
  ["David O Smith Design"] = 2328,
  ["Devantech Ltd."] = 17494,
  ["Dezelectric Kft."] = 17477,
  ["Diamante Lighting Srl"] = 17513,
  ["Digilin Australia"] = 25697,
  ["Digimedia Multimedia Lighting Solutions"] = 17485,
  ["Diginet Control Systems Pty Ltd"] = 1545,
  ["DigitaLicht AG"] = 30600,
  ["Digital Sputnik Lighting"] = 2447,
  ["Doug Fleenor Design, Inc."] = 17478,
  ["Dove Lighting Systems, Inc."] = 17484,
  ["Dream Solutions Ltd."] = 8761,
  Drinelec = 1794,
  ["Duralamp S.p.A."] = 6585,
  ["Durand Interstellar, Inc."] = 17481,
  ["E:cue Control GmbH"] = 17722,
  ["EAS SYSTEMS"] = 8864,
  ["EC Elettronica Srl"] = 17731,
  ["ELC lighting"] = 25964,
  ["ELETTROLAB S.r.l."] = 17474,
  ["ELM Video Technology, Inc."] = 17741,
  ["ENTTEC Pty Ltd"] = 17742,
  ["ERAL srl"] = 17747,
  EREA = 17746,
  ESTA = 0,
  ESTA1 = 65535,
  ["EUTRAC - Intelligent Lighting GmbH"] = 8874,
  EVC = 8875,
  ["Ecosense Lighting Company Limited"] = 2446,
  ["Edward J. Keefe Jr."] = 1193,
  Ehrgeiz = 2245,
  ["Elaborated Networks GmbH"] = 2399,
  ["Elation Lighting"] = 8870,
  ["Electrone Americas Ltd. Co."] = 5806,
  ["Electronic Theatre Controls, Inc."] = 25972,
  ["Electronics Diversified LLC"] = 17732,
  ["Element Labs Inc."] = 17772,
  ["Enfis Ltd"] = 18518,
  ["Engineering Arts"] = 17729,
  ["Engineering Solutions Inc."] = 8873,
  ["Entertainment Technology"] = 17748,
  ["Environmental Lighting Solutions"] = 25971,
  ["Ephesus Lighting"] = 27630,
  ["Equipson S.A."] = 1766,
  Etherlight = 8889,
  ["Eulum Design, LLC"] = 2294,
  ["Event Lighting Pty, Ltd."] = 2055,
  ["EverBrighten Co., Ltd."] = 1344,
  ["FATEC sarl"] = 1930,
  ["FLUX ECLAIRAGE"] = 1060,
  ["Fineline Solutions Ltd."] = 2400,
  ["Fire & Magic"] = 5454,
  ["Flashlight/Ampco Holding"] = 17996,
  Flexvisual = 18006,
  ["Fly Dragon Lighting Equipment Co.,ltd"] = 14472,
  ["Focon Showtechnic"] = 9015,
  ["Fontana Fountains"] = 2405,
  ["Fountain People"] = 2466,
  ["Freescale Semiconductor U.K. Ltd."] = 26227,
  ["G-LEC Europe GmbH"] = 18252,
  GEE = 1,
  ["GLP German Light Products GmbH"] = 26476,
  ["GPE srl"] = 18245,
  ["GRE Alpha"] = 2316,
  ["GUANZHOU KAVON STAGE EQUIPMENT CO., LTD."] = 6280,
  ["GVA Lighting, Inc."] = 715,
  ["Galaxia Electronics"] = 1842,
  ["Gantom Lighting & Controls"] = 8209,
  ["Gekko Technology Ltd."] = 9138,
  ["General Luminaire (Shanghai) Ltd."] = 18284,
  ["GermTec GmbH & Co. KG"] = 2305,
  ["Getlux Ltd."] = 10628,
  ["Global Design Solutions, Ltd."] = 13364,
  ["Global Special Effects"] = 18040,
  ["Glow Motion Technologies, LLC."] = 2443,
  ["Goddard Design Co."] = 18244,
  ["Golden Sea Disco Light Manufacturer"] = 18259,
  ["Grand Canyon LED Lighting System (Suzhou) Co., Ltd."] = 1167,
  ["Grid Show Systems Inc."] = 5264,
  ["Griven S.r.l."] = 1996,
  ["Growflux LLC"] = 712,
  ["GuangZhou MCSWE Technologies, INC"] = 5536,
  ["Guangzhou Chai Yi Light Co., Ltd."] = 1519,
  ["Guangzhou GTD Lighting Technology Co., Ltd"] = 2385,
  ["Guangzhou VAS Lighting Co., Ltd."] = 1088,
  ["Guangzhou Yajiang (Yagang - Silver Star) Photoelectric Equipment Ltd."] = 14474,
  ["HB-Laserkomponenten GmbH"] = 9249,
  ["HBE Lighting Systems"] = 18508,
  ["HDT impex s.r.o."] = 2362,
  ["HERA LED"] = 26732,
  ["HUMAL Elektroonika OU"] = 5220,
  ["Hale Microsystems LLC"] = 9328,
  ["Heliospectra AB"] = 25626,
  ["Helvar Ltd"] = 9266,
  ["High End Systems Inc."] = 19538,
  ["Highendled Electronics Company Limited"] = 2186,
  ["Hollywood Controls Inc."] = 18511,
  ["Hollywood Rentals LLC"] = 4858,
  ["Horizon Control Inc."] = 18499,
  ["Howard Eaton Lighting Ltd."] = 18501,
  ["Hubbell Entertainment, Inc."] = 26725,
  Hungaroflash = 9258,
  HxDx = 18500,
  ["I-Lum"] = 18764,
  ["I-Pix Digital Light Ltd."] = 9788,
  ["IBEX UK Limited"] = 18754,
  ["IBL/ESD-Datentechnik GmbH"] = 1669,
  ["IGuzzini illuminazione spa"] = 18759,
  ["IT Ihme"] = 9386,
  ["Ice House Productions"] = 18760,
  ["Illum Technology LLC (previously Verde Designs, Inc.)"] = 2392,
  ["ImageCue LLC"] = 776,
  ["Imlight-Showtechnic"] = 603,
  ["Industrias Sola Basic S.A. de C.V."] = 21314,
  ["Ingenieurbuero Stahlkopf"] = 4976,
  ["Ingenieurbuero fuer Nachrichtentechnik in der Studio und Veranstaltungstechnik"] = 17740,
  ["Ingham Designs"] = 18756,
  ["Innovation LED Limited"] = 1408,
  ["Innovation Solutions Ltd."] = 18803,
  ["Insta Elektro GmbH"] = 18757,
  ["Integrated System Technologies Ltd."] = 18771,
  ["Integrated Theatre, Inc."] = 18772,
  ["Intense Lighting, LLC"] = 5280,
  ["Interactive Technologies, Inc."] = 18766,
  ["Interesting Products, Inc."] = 18768,
  ["Invisible Rival Incorporated"] = 18770,
  ["Ittermann electronic GmbH"] = 26996,
  ["JANUS srl"] = 19009,
  ["JAP Optoelectronic Ltd."] = 20809,
  ["JB-lighting GmbH"] = 19010,
  ["JIAXING XINHUALI LIGHTING & SOUNDING CO., LTD."] = 1395,
  ["JPK Systems Limited"] = 27243,
  ["JSC MFG"] = 19027,
  ["James Embedded Systems Engineering (JESE Ltd)"] = 26724,
  ["James Thomas Engineering"] = 19028,
  ["Jands Pty Ltd."] = 19041,
  ["Jinnax Opto Technology Co., Ltd."] = 682,
  ["Johnsson Lighting Technologies AB"] = 19020,
  ["Joshua 1 Systems Inc."] = 18993,
  ["Junction Inc. Ltd"] = 2129,
  ["Juno Lighting Group"] = 2136,
  ["KB Design"] = 2421,
  ["KIM Lighting"] = 2224,
  ["KLH Electronics PLC"] = 19276,
  ["KMX Inc."] = 19277,
  ["Key Delfin"] = 27492,
  ["Kino Flo, Inc."] = 19270,
  KissBox = 19266,
  ["Kolberg Percussion GmbH"] = 4842,
  ["Krisledz Pte. Ltd."] = 1166,
  ["Krislite Pte. Ltd."] = 2331,
  ["L&L Luce&Light"] = 1735,
  ["LAM32 srl"] = 19488,
  ["LAN Systems--Midibox project"] = 19778,
  ["LDDE Vertriebs Gmbh"] = 9762,
  ["LEADER LIGHT s.r.o."] = 9761,
  ["LED Company s.r.o."] = 19685,
  ["LED Flex Limited"] = 30900,
  ["LED Team"] = 19556,
  ["LED, Inc."] = 20578,
  ["LEDART LLC"] = 1668,
  ["LEDEngin Inc."] = 1887,
  ["LEDValley Technologies Sdn Bhd"] = 19542,
  ["LEDsistem Teknolojileri Tic. Ltd. Sti."] = 5670,
  LGR = 364,
  LIGHTOLIER = 19561,
  ["LLC Lighting Technologies production"] = 2462,
  ["LLC Likhoslavl Plant of Lighting Engineering (Svetotehnika)"] = 672,
  ["LLC Moscow Experimental Lighting Plant (TeleMechanic)"] = 673,
  ["LLT Lichttechnik GmbH&CO.KG"] = 9766,
  ["LSC Lighting Systems (Aust) Pty. Ltd."] = 19571,
  ["LUMINEX Lighting Control Equipment bvba"] = 19532,
  ["Lamp & Pencil"] = 1109,
  ["Lampo Lighting Designers"] = 19564,
  ["LanBolight Technology Co., LTD."] = 14440,
  ["Laser Imagineering GmbH"] = 1810,
  ["Laser Technology Ltd."] = 19545,
  ["LaserAnimation Sollinger GmbH"] = 19521,
  ["Laservision Pty Ltd"] = 9776,
  ["Legargeant and Associates"] = 19557,
  ["Lehigh Electric Products"] = 9778,
  ["Leonh Hardware Enterprise Inc."] = 9763,
  ["Les Eclairages Lou Inc."] = 17763,
  ["Les Generateurs de brouillard MDG Fog Generators Ltd."] = 19780,
  ["Leviton Manufacturing Co., Inc."] = 19525,
  ["Lex Products Corp."] = 19544,
  ["Licht-, Steuer- und Schaltanlagenbau GmbH (LSS GmbH)"] = 19539,
  ["Licht-Technik"] = 19540,
  ["Lichttechnik & Sonderbau"] = 14295,
  ["Light.Audio.Design"] = 1696,
  ["LightGeist Ltd."] = 19527,
  ["LightLife, Gesellschaft fuer audiovisuelle Erlebnisse mbH"] = 19547,
  ["LightMinded Industries, Inc."] = 19546,
  ["LightProcessor Ltd"] = 19536,
  ["LightWild LC"] = 19543,
  ["Lightforce Lasertechnik"] = 923,
  ["Lighting Innovation Group AG"] = 9379,
  ["Lighting Science Group (formerly LED Effects, Inc.)"] = 1547,
  ["Lighting Services Inc."] = 11488,
  ["Lisys Fenyrendszer Zrt."] = 9764,
  ["Lite Puter Enterprise Co., Ltd."] = 5882,
  ["LjusDesign AB"] = 9781,
  ["Loxone Electronics GmbH"] = 9783,
  ["Lug Light Factory Sp. z o. o."] = 2237,
  ["Lumascape Lighting Industries"] = 1388,
  ["LumenRadio AB"] = 19541,
  ["Lumenec Pty. Ltd."] = 9786,
  ["Lumenpulse Lighting Inc."] = 13880,
  ["Lumina Visual Productions"] = 28650,
  ["Lumishore Ltd. UK"] = 13853,
  ["Lumisia Co., Ltd."] = 26454,
  ["Lumonic Limited"] = 9782,
  ["Lutron Electronics"] = 748,
  ["Lux Lumen"] = 826,
  ["Luxam, Ltd."] = 2433,
  ["Luxlight Skandinavien AB"] = 4832,
  ["MA Lighting Technology GmbH"] = 19777,
  ["MAL Effekt-Technik GmbH"] = 28001,
  ["MARTINI S.p.A."] = 19809,
  ["MBN GmbH"] = 28002,
  ["MCI Group"] = 2226,
  ["MEB Veranstaltungstechnik GmbH"] = 1190,
  ["MEGATECHNICS Ltd."] = 9890,
  ["MX design"] = 19800,
  ["MY-Semi Inc."] = 1938,
  ["Macostar International Ltd."] = 13192,
  ["MagicFX B.V."] = 18008,
  ["Martin Professional A/S"] = 19792,
  ["Martin Sukale Medientechnik GbR"] = 21845,
  ["Marumo Electric Co., Ltd."] = 2420,
  ["Masiero s.r.l."] = 7887,
  ["Mediatec Group"] = 23980,
  ["Milford Instruments Ltd."] = 9908,
  Mittomakers = 2518,
  ["Moda Light"] = 7821,
  ["Mode Lighting (UK) Ltd."] = 19788,
  ["Mole-Richardson Co."] = 30734,
  ["Moog Animatics"] = 2432,
  ["Motomuto Aps"] = 2508,
  ["Mueller Elektronik"] = 19831,
  ["Music & Lights S.r.l."] = 5584,
  ["NJD Electronics"] = 20042,
  ["NOVALIGHT S.r.l."] = 20044,
  ["NXP Semiconductors B.V."] = 15120,
  ["Nerd's Meter"] = 5674,
  ["Newlab S.r.l."] = 4826,
  Niko = 20073,
  ["Nila Inc."] = 10020,
  ["Nixer Ltd."] = 10036,
  OFilms = 1630,
  ["OJSC Kadoshkinsky electrotechnical"] = 674,
  ["OKEROAB AB"] = 17969,
  ["OOO SAMLIGHT"] = 21334,
  OSRAM = 1321,
  ["OTTEC Technology GmbH"] = 2168,
  OXO = 23616,
  ["Oase GmbH"] = 20289,
  ["Ocean Thin Films Inc."] = 21315,
  ["Open Lighting"] = 31344,
  ["Outsight Pty Ltd."] = 20341,
  ["PH Lightning AB"] = 7089,
  ["PLS Electronics Ltd."] = 6552,
  ["PR-Electronic"] = 10281,
  ["PRO-SOLUTIONS"] = 1375,
  ["PXM s.c."] = 20568,
  ["Padura Elektronik GmbH"] = 8319,
  ["Panasonic Corporation"] = 1871,
  ["Pangolin Laser Systems, Inc."] = 28912,
  ["Pathway Connectivity Inc."] = 20547,
  ["PatternAgents, LLC"] = 2263,
  ["Peperoni Lighting-Solutions"] = 20556,
  Peradise = 20581,
  ["Peter Maes Technology"] = 10278,
  ["Peter Meyer Project Management Adviser GmbH"] = 20557,
  ["Peternet Electronics BVBA"] = 10279,
  ["Pfannenberg GmbH"] = 20582,
  ["Pharos Architectural Controls"] = 28776,
  ["Phaton Lighting Co., Ltd."] = 2298,
  ["Philips Entertainment Lighting Asia"] = 20545,
  ["Philips Lighting BV"] = 20584,
  ["Philips Selecon"] = 20563,
  ["PiXL Factory"] = 2218,
  ["Pioneer Corporation"] = 10273,
  ["PixelRange Inc."] = 28792,
  Planungsbuero = 10294,
  ["Plsao Optoelectronics Technology Co., Ltd."] = 22664,
  ["Pr-Lighting Ltd."] = 28786,
  ["Prism Projection"] = 916,
  ["Production Resource Group"] = 20562,
  ["Prolight Concepts Ltd."] = 2469,
  ["Prolites S.A.L."] = 2488,
  ["Pulsar Light of Cambridge Ltd."] = 20597,
  ["QMAXZ lighting"] = 20813,
  ["QuickSilver Controls, Inc."] = 20819,
  Quicklights = 20844,
  ["RDC, Inc. d.b.a. LynTec"] = 1616,
  ["RE-Engineering"] = 701,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 0"] = 32752,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 1"] = 32753,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 2"] = 32754,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 3"] = 32755,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 4"] = 32756,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 5"] = 32757,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 6"] = 32758,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 7"] = 32759,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 8"] = 32760,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY 9"] = 32761,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY a"] = 32762,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY b"] = 32763,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY c"] = 32764,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY d"] = 32765,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY e"] = 32766,
  ["RESERVED FOR PROTOTYPING/EXPERIMENTAL USE ONLY f"] = 32767,
  ["RHENAC Systems GmbH"] = 1732,
  ["RNC Systems Inc."] = 21070,
  ["ROAL Electronics SpA"] = 10535,
  ["ROE Visual Co. Ltd."] = 2438,
  ["RUIZ TECH"] = 21069,
  ["RVL techniek"] = 19148,
  ["Radical Lighting Ltd."] = 21068,
  ["RaumZeitLabor e.V."] = 2431,
  ["Raven Systems Design, Inc."] = 4919,
  ["RayComposer - R. Adams"] = 1839,
  ["Red Arrow Controls"] = 2272,
  ["Red Lighting s.r.l."] = 6717,
  ["Rena Electronica B.V."] = 18561,
  ["Revolution Display"] = 21060,
  ["Rnet Lighting Technology Limited"] = 2464,
  ["Robe Show Lighting s.r.o."] = 21075,
  ["Robert Juliat"] = 2478,
  ["RootPath Ltd."] = 21072,
  ["RoscoLab Ltd"] = 21074,
  ["Rosstech Signals Inc."] = 843,
  ["SAN JACK ANALOG HOUSE CO., LTD."] = 16465,
  ["SAS Productions"] = 21322,
  ["SEIKO Epson Corporation"] = 5216,
  ["SGM A/S"] = 1836,
  ["SGM Technology For Lighting SPA"] = 21319,
  ["SIRS-E"] = 2181,
  ["SISTEMA Jsc"] = 1772,
  ["SK-Software"] = 21323,
  SOUNDLIGHT = 21324,
  ["SRS Light Design"] = 10665,
  ["STG-Beikirch Industrieelektronik + Sicherheitstechnik GmbH & Co. KG"] = 21364,
  STILED = 2265,
  ["SV-wtu eU"] = 21366,
  ["SVI Public Company Limited"] = 2259,
  ["SWISSON AG"] = 21367,
  ["SanDevices, LLC"] = 2289,
  ["Sand Network Systems"] = 21326,
  Schreder = 21320,
  ["Sean Christopher FX"] = 29539,
  ["Sean Sill"] = 21331,
  ["Sein & Schein GmbH"] = 28003,
  Selador = 21317,
  ["Selectron Bvba"] = 10674,
  ["Sensa-Lite Ltd."] = 2260,
  ["Serva Transport Systems GmbH"] = 5902,
  ["Shanghai Moons Automation Control Co., Ltd"] = 771,
  ["Shenzhen CreateLED Electronics Co., Ltd"] = 2368,
  ["Shenzhen Lesan Lighting Co., Ltd."] = 1451,
  ["Shenzhen Longrich Energy Sources Technology Co., Ltd."] = 2444,
  ["ShowCAD Control Systems Ltd."] = 21352,
  ShowLED = 2285,
  ["Showtec (Highlite International B.V.)"] = 10676,
  ["Simon Tech"] = 21416,
  ["Smartpark Creative Solutions"] = 5038,
  ["Solid State Luminaires"] = 6456,
  ["Soundsculpture Incorporated"] = 21321,
  ["SpaceCannon vH"] = 21347,
  ["Spectrum Manufacturing Inc."] = 21360,
  ["Spotlight s.r.l."] = 10680,
  ["St. Anne Engineering GmbH"] = 257,
  ["Stage Services Ltd."] = 4852,
  ["Stage Technologies Limited"] = 21313,
  ["StageLine Electronic"] = 21356,
  ["Stagetronics Ltda"] = 21332,
  ["Stardraw.com Ltd."] = 21316,
  Starway = 2537,
  ["State Automation Pty Ltd."] = 10682,
  ["Stealth Light srl"] = 2227,
  ["Steinigke Showtechnic GmbH"] = 10666,
  Stellascapes = 11720,
  ["Strand Lighting Ltd."] = 29548,
  ["Strich Labs"] = 911,
  ["Stroytsirk LLC"] = 10728,
  ["Studio S Music City"] = 7110,
  ["Sturdy Corporation"] = 10657,
  ["Sundrax, LLC"] = 10679,
  ["Synthe FX, LLC"] = 21318,
  ["TBE Srl"] = 2374,
  ["TERMINAL-COM"] = 1335,
  ["TESI Elettronica srl"] = 21573,
  ["THELIGHT Luminary for Cine and TV S.L."] = 2045,
  TMB = 6906,
  ["Tait Towers Manufacturing Inc."] = 737,
  ["TalentStorm Enterprises, Inc."] = 21587,
  ["TamaTech Labo Company Ltd,"] = 21588,
  ["Targetti Sankey Spa"] = 1239,
  ["Teamboyce Limited"] = 2426,
  ["TecArt Lighting"] = 21569,
  ["Technographic Displays Ltd."] = 21572,
  ["Tempest Lighting Inc."] = 21580,
  ["The Light Source, Inc."] = 29009,
  ["The White Rabbit Company, Inc."] = 11177,
  ["TheOlymp - Networking & InterNet Services"] = 14903,
  ["Theatrelight New Zealand"] = 1807,
  ["Thorn Lighting Limited"] = 10789,
  ["Toni Maroni Gmb"] = 10790,
  ["Toshiba Lighting & Technology Corporation"] = 26608,
  ["Traxon Technologies Ltd."] = 5852,
  ["Turkowski GmbH"] = 1461,
  ["UP-LUX Eletronica Ltda."] = 21840,
  ["Ultratec Special Effects"] = 19533,
  ["Unilumin Group"] = 2519,
  ["Urban Visuals & Effects Ltd."] = 10923,
  ["VT-Control"] = 4941,
  ["Vari-Lite, Inc."] = 22092,
  ["Vehtec Tecnologia Ltda"] = 7296,
  ["Velleman nv"] = 2499,
  ["Vision Quest Lighting Inc."] = 22097,
  ["Viso Systems Aps"] = 22099,
  ["Visual Productions"] = 11048,
  ["W-DEV"] = 22340,
  ["W.A. Benjamin Electric Co."] = 2264,
  ["WADAK GmbH"] = 6678,
  ["WERPAX bvba"] = 11170,
  WET = 30564,
  ["WLPS Wodielite Production Services"] = 2515,
  ["Wildfire, Inc."] = 22342,
  ["Williams Electronic Design Ltd."] = 11188,
  ["Winona Lighting"] = 720,
  ["Wireless Solution Sweden AB"] = 22355,
  ["Wybron, Inc."] = 22361,
  ["XENON ARCHITECTURAL LIGHTING"] = 22629,
  ["XLN-t bvba"] = 30828,
  XTBA = 11306,
  ["Xtraordinary Musical Accolade Systems"] = 22605,
  ["Yifeng Lighting Co., Ltd."] = 14341,
  ["Yuesheng International Limited"] = 5968,
  ["Zaklad Elektroniczny AGAT s.c."] = 5292,
  ["Zero 88"] = 2056,
  ["Zingerli Show Engineering"] = 23123,
  ["Zumtobel Lighting GmbH"] = 27757,
  ["acdc LED Ltd."] = 19676,
  ["awaptec GmbH"] = 5776,
  ["de koster Special Effects"] = 12853,
  ["deskontrol electronics"] = 2556,
  ["dilitronics GmbH"] = 25708,
  ["eBrain GmbH"] = 25922,
  ["eX Systems"] = 981,
  ["eldoLED BV"] = 25711,
  euroGenie = 25927,
  ["eventa Aktiengesellschaft"] = 25974,
  ["feno GmbH"] = 774,
  i2Systems = 915,
  ["iLight Technologies Inc"] = 26956,
  ["inoage GmbH"] = 18753,
  ["kLabs Research UK"] = 2394,
  ["kuwatec, Inc."] = 19285,
  lumenetix = 1910,
  ["mathertel.de"] = 2439,
  ["medien technik cords"] = 19796,
  ["techKnow Design Ltd."] = 5658,
  ["v2 Lighting Group, Inc."] = 5382,
  ["www.doityourselfchristmas.com hobbyists"] = 22637,
  ["zactrack Lighting Technologies Gmbh"] = 15664,
}

-- @enum RDMNotificationThresholdOperator
Enums.RDMNotificationThresholdOperator = {
  [""] = 0,
  Greate = 3,
  Is = 1,
  IsNot = 2,
  Less = 4,
}

-- @enum RDMPID
Enums.RDMPID = {
  BOOT_SOFTWARE_VERSION_ID = 193,
  BOOT_SOFTWARE_VERSION_LABEL = 194,
  CAPTURE_PRESET = 4144,
  CLEAR_STATUS_ID = 50,
  COMMS_STATUS = 21,
  DEFAULT_SLOT_VALUE = 290,
  DEVICE_HOURS = 1024,
  DEVICE_INFO = 96,
  DEVICE_LABEL = 130,
  DEVICE_MODEL_DESCRIPTION = 128,
  DEVICE_POWER_CYCLES = 1029,
  DISC_MUTE = 2,
  DISC_UNIQUE_BRANCH = 1,
  DISC_UN_MUTE = 3,
  DISPLAY_INVERT = 1280,
  DISPLAY_LEVEL = 1281,
  DMX_PERSONALITY = 224,
  DMX_PERSONALITY_DESCRIPTION = 225,
  DMX_START_ADDRESS = 240,
  FACTORY_DEFAULTS = 144,
  IDENTIFY_DEVICE = 4096,
  LAMP_HOURS = 1025,
  LAMP_ON_MODE = 1028,
  LAMP_STATE = 1027,
  LAMP_STRIKES = 1026,
  LANGUAGE = 176,
  LANGUAGE_CAPABILITIES = 160,
  MANUFACTURER_LABEL = 129,
  None = 0,
  PAN_INVERT = 1536,
  PAN_TILT_SWAP = 1538,
  PARAMETER_DESCRIPTION = 81,
  PERFORM_SELFTEST = 4128,
  POWER_STATE = 4112,
  PRESET_PLAYBACK = 4145,
  PRODUCT_DETAIL_ID_LIST = 112,
  PROXIED_DEVICES = 16,
  PROXIED_DEVICE_COUNT = 17,
  QUEUED_MESSAGE = 32,
  REAL_TIME_CLOCK = 1539,
  RECORD_SENSORS = 514,
  RESET_DEVICE = 4097,
  SELF_TEST_DESCRIPTION = 4129,
  SENSOR_DEFINITION = 512,
  SENSOR_VALUE = 513,
  SLOT_DESCRIPTION = 289,
  SLOT_INFO = 288,
  SOFTWARE_VERSION_LABEL = 192,
  STATUS_ID_DESCRIPTION = 49,
  STATUS_MESSAGES = 48,
  SUB_DEVICE_STATUS_REPORT_THRESHOLD = 51,
  SUPPORTED_PARAMETERS = 80,
  TILT_INVERT = 1537,
}

-- @enum RDMParameterCommand
Enums.RDMParameterCommand = {
  CC_GET = 1,
  CC_GET_SET = 3,
  CC_SET = 2,
  None = 0,
}

-- @enum RDMParameterType
Enums.RDMParameterType = {
  Fixture = 2,
  FixtureType = 1,
  Rdm = 0,
}

-- @enum RDMPidValueDisplayInvert
Enums.RDMPidValueDisplayInvert = {
  Auto = 2,
  Off = 0,
  On = 1,
}

-- @enum RDMPidValueFactoryDefaults
Enums.RDMPidValueFactoryDefaults = {
  False = 0,
  True = 1,
}

-- @enum RDMPidValueOnOff
Enums.RDMPidValueOnOff = {
  Off = 0,
  On = 1,
}

-- @enum RDMPidValueResetDevice
Enums.RDMPidValueResetDevice = {
  [""] = 0,
  Cold = 255,
  Warm = 1,
}

-- @enum RDMPowerStateDefines
Enums.RDMPowerStateDefines = {
  POWER_STATE_FULL_OFF = 0,
  POWER_STATE_NORMAL = 255,
  POWER_STATE_SHUTDOWN = 1,
  POWER_STATE_STANDBY = 2,
}

-- @enum RDMProductCategory
Enums.RDMProductCategory = {
  PRODUCT_CATEGORY_ATMOSPHERIC = 1024,
  PRODUCT_CATEGORY_ATMOSPHERIC_EFFECT = 1025,
  PRODUCT_CATEGORY_ATMOSPHERIC_OTHER = 1279,
  PRODUCT_CATEGORY_ATMOSPHERIC_PYRO = 1026,
  PRODUCT_CATEGORY_AV = 2304,
  PRODUCT_CATEGORY_AV_AUDIO = 2305,
  PRODUCT_CATEGORY_AV_OTHER = 2559,
  PRODUCT_CATEGORY_AV_VIDEO = 2306,
  PRODUCT_CATEGORY_CONTROL = 28672,
  PRODUCT_CATEGORY_CONTROL_BACKUPDEVICE = 28674,
  PRODUCT_CATEGORY_CONTROL_CONTROLLER = 28673,
  PRODUCT_CATEGORY_CONTROL_OTHER = 28927,
  PRODUCT_CATEGORY_DATA = 2048,
  PRODUCT_CATEGORY_DATA_CONVERSION = 2050,
  PRODUCT_CATEGORY_DATA_DISTRIBUTION = 2049,
  PRODUCT_CATEGORY_DATA_OTHER = 2303,
  PRODUCT_CATEGORY_DIMMER = 1280,
  PRODUCT_CATEGORY_DIMMER_AC_COLDCATHODE = 1283,
  PRODUCT_CATEGORY_DIMMER_AC_ELV = 1285,
  PRODUCT_CATEGORY_DIMMER_AC_FLUORESCENT = 1282,
  PRODUCT_CATEGORY_DIMMER_AC_INCANDESCENT = 1281,
  PRODUCT_CATEGORY_DIMMER_AC_NONDIM = 1284,
  PRODUCT_CATEGORY_DIMMER_AC_OTHER = 1286,
  PRODUCT_CATEGORY_DIMMER_CS_LED = 1289,
  PRODUCT_CATEGORY_DIMMER_DC_LEVEL = 1287,
  PRODUCT_CATEGORY_DIMMER_DC_PWM = 1288,
  PRODUCT_CATEGORY_DIMMER_OTHER = 1535,
  PRODUCT_CATEGORY_FIXTURE = 256,
  PRODUCT_CATEGORY_FIXTURE_ACCESSORY = 512,
  PRODUCT_CATEGORY_FIXTURE_ACCESSORY_BEAM = 517,
  PRODUCT_CATEGORY_FIXTURE_ACCESSORY_COLOR = 513,
  PRODUCT_CATEGORY_FIXTURE_ACCESSORY_EFFECT = 516,
  PRODUCT_CATEGORY_FIXTURE_ACCESSORY_MIRROR = 515,
  PRODUCT_CATEGORY_FIXTURE_ACCESSORY_OTHER = 767,
  PRODUCT_CATEGORY_FIXTURE_ACCESSORY_YOKE = 514,
  PRODUCT_CATEGORY_FIXTURE_FIXED = 257,
  PRODUCT_CATEGORY_FIXTURE_MOVING_MIRROR = 259,
  PRODUCT_CATEGORY_FIXTURE_MOVING_YOKE = 258,
  PRODUCT_CATEGORY_FIXTURE_OTHER = 511,
  PRODUCT_CATEGORY_MONITOR = 2560,
  PRODUCT_CATEGORY_MONITOR_ACLINEPOWER = 2561,
  PRODUCT_CATEGORY_MONITOR_DCPOWER = 2562,
  PRODUCT_CATEGORY_MONITOR_ENVIRONMENTAL = 2563,
  PRODUCT_CATEGORY_MONITOR_OTHER = 2815,
  PRODUCT_CATEGORY_NOT_DECLARED = 0,
  PRODUCT_CATEGORY_OTHER = 32767,
  PRODUCT_CATEGORY_POWER = 1536,
  PRODUCT_CATEGORY_POWER_CONTROL = 1537,
  PRODUCT_CATEGORY_POWER_OTHER = 1791,
  PRODUCT_CATEGORY_POWER_SOURCE = 1538,
  PRODUCT_CATEGORY_PROJECTOR = 768,
  PRODUCT_CATEGORY_PROJECTOR_FIXED = 769,
  PRODUCT_CATEGORY_PROJECTOR_MOVING_MIRROR = 771,
  PRODUCT_CATEGORY_PROJECTOR_MOVING_YOKE = 770,
  PRODUCT_CATEGORY_PROJECTOR_OTHER = 1023,
  PRODUCT_CATEGORY_SCENIC = 1792,
  PRODUCT_CATEGORY_SCENIC_DRIVE = 1793,
  PRODUCT_CATEGORY_SCENIC_OTHER = 2047,
  PRODUCT_CATEGORY_TEST = 28928,
  PRODUCT_CATEGORY_TEST_EQUIPMENT = 28929,
  PRODUCT_CATEGORY_TEST_EQUIPMENT_OTHER = 29183,
  PRODUCT_CATEGORY__MANUFACTORER_SPECIFIC = 32768,
}

-- @enum RDMProductDetail
Enums.RDMProductDetail = {
  ["Manufacturer Specific"] = 32768,
  PRODUCT_DETAIL_ANALOG_DEMULTIPLEX = 1794,
  PRODUCT_DETAIL_ANALOG_MULTIPLEX = 1795,
  PRODUCT_DETAIL_ARC = 1,
  PRODUCT_DETAIL_BARNDOOR_SHUTTER = 262,
  PRODUCT_DETAIL_BATTERY = 2561,
  PRODUCT_DETAIL_BITANGLE_MODULATION = 1033,
  PRODUCT_DETAIL_BUBBLE = 773,
  PRODUCT_DETAIL_C02 = 771,
  PRODUCT_DETAIL_CHANGEOVER_AUTO = 2305,
  PRODUCT_DETAIL_CHANGEOVER_MANUAL = 2304,
  PRODUCT_DETAIL_COLDCATHODE = 6,
  PRODUCT_DETAIL_COLORCHANGE = 258,
  PRODUCT_DETAIL_COLORSCROLLER = 256,
  PRODUCT_DETAIL_COLORWHEEL = 257,
  PRODUCT_DETAIL_CONFETTI = 780,
  PRODUCT_DETAIL_CONTACTOR = 1039,
  PRODUCT_DETAIL_CONTROLLABLE_BREAKER = 2562,
  PRODUCT_DETAIL_CURTAIN = 1283,
  PRODUCT_DETAIL_DAMPER_CONTROL = 1286,
  PRODUCT_DETAIL_DATAPATCH = 1539,
  PRODUCT_DETAIL_DC = 1028,
  PRODUCT_DETAIL_DIMMING_SHUTTER = 260,
  PRODUCT_DETAIL_EFFECTS_DISC = 263,
  PRODUCT_DETAIL_ELECTROLUMINESCENT = 7,
  PRODUCT_DETAIL_ETHERNET_NODE = 1537,
  PRODUCT_DETAIL_FADER = 2049,
  PRODUCT_DETAIL_FILM = 514,
  PRODUCT_DETAIL_FLAME_OTHER = 775,
  PRODUCT_DETAIL_FLAME_PROPANE = 774,
  PRODUCT_DETAIL_FLASHTUBE = 9,
  PRODUCT_DETAIL_FLUROESCENT = 5,
  PRODUCT_DETAIL_FOGGER_GLYCOL = 768,
  PRODUCT_DETAIL_FOGGER_MINERALOIL = 769,
  PRODUCT_DETAIL_FOGGER_WATER = 770,
  PRODUCT_DETAIL_FREQUENCY_MODULATION = 1034,
  PRODUCT_DETAIL_GFI_RCD = 2560,
  PRODUCT_DETAIL_GOBO_ROTATOR = 264,
  PRODUCT_DETAIL_HAZARD = 781,
  PRODUCT_DETAIL_HFBALLAST = 1029,
  PRODUCT_DETAIL_HFHV_EL = 1031,
  PRODUCT_DETAIL_HFHV_NEONBALLAST = 1030,
  PRODUCT_DETAIL_HIGHFREQUENCY_12V = 1035,
  PRODUCT_DETAIL_INCANDESCENT = 3,
  PRODUCT_DETAIL_IRIS_DOUSER = 259,
  PRODUCT_DETAIL_KABUKI_DROP = 1282,
  PRODUCT_DETAIL_LASER = 8,
  PRODUCT_DETAIL_LCDGATE = 516,
  PRODUCT_DETAIL_LED = 4,
  PRODUCT_DETAIL_LINESET = 1284,
  PRODUCT_DETAIL_LN2 = 772,
  PRODUCT_DETAIL_MERGE = 1538,
  PRODUCT_DETAIL_METAL_HALIDE = 2,
  PRODUCT_DETAIL_MHR_BALLAST = 1032,
  PRODUCT_DETAIL_MIRRORBALL_ROTATOR = 1280,
  PRODUCT_DETAIL_MIXER = 2050,
  PRODUCT_DETAIL_MOTOR_CONTROL = 1285,
  ["PRODUCT_DETAIL_NOT DECLARED"] = 0,
  PRODUCT_DETAIL_OILWHEEL = 515,
  PRODUCT_DETAIL_OLEFACTORY_STIMULATOR = 776,
  PRODUCT_DETAIL_OTHER = 32767,
  PRODUCT_DETAIL_OTHER_ROTATOR = 1281,
  PRODUCT_DETAIL_PHASE_CONTROL = 1024,
  PRODUCT_DETAIL_PROFILE_SHUTTER = 261,
  PRODUCT_DETAIL_PROTOCOL_CONVERTOR = 1793,
  PRODUCT_DETAIL_PWM = 1027,
  PRODUCT_DETAIL_RELAY_ELECTRONIC = 1037,
  PRODUCT_DETAIL_RELAY_MECHANICAL = 1036,
  PRODUCT_DETAIL_REVERSE_PHASE_CONTROL = 1025,
  PRODUCT_DETAIL_ROUTER = 2048,
  PRODUCT_DETAIL_SINE = 1026,
  PRODUCT_DETAIL_SLIDE = 513,
  PRODUCT_DETAIL_SNOW = 777,
  PRODUCT_DETAIL_SPLITTER = 1536,
  PRODUCT_DETAIL_SWITCH_ELECTRONIC = 1038,
  PRODUCT_DETAIL_SWITCH_PANEL = 1796,
  PRODUCT_DETAIL_TEST = 2306,
  PRODUCT_DETAIL_VIDEO = 512,
  PRODUCT_DETAIL_WATER_JET = 778,
  PRODUCT_DETAIL_WIND = 779,
  PRODUCT_DETAIL_WIRELESS_LINK = 1540,
}

-- @enum RDMResponseNackReason
Enums.RDMResponseNackReason = {
  ["Buffer or Queue space currently has no free space to store data."] = 7,
  ["Incoming message exceeds buffer capacity."] = 8,
  ["Not valid for Command Class attempted. May be used where GET allowed but SET is not supported."] = 5,
  ["Proxy is not the RDM line master and cannot comply with message."] = 3,
  ["SET Command normally allowed but being blocked currently."] = 4,
  ["Sub-Device is out of range or unknown."] = 9,
  ["The proxy buffer is full and can not store any more Queued Message or Status Message responses."] = 10,
  ["The responder cannot comply due to an internal hardware fault."] = 2,
  ["The responder cannot comply with request because the message is not implemented in responder."] = 0,
  ["The responder cannot interpret request as controller data was not formatted correctly."] = 1,
  ["Value for given Parameter out of allowable range or not supported."] = 6,
}

-- @enum RDMSensorType
Enums.RDMSensorType = {
  SENS_ACCELERATION = 12,
  SENS_ANGLE = 17,
  SENS_ANGULAR_VELOCITY = 21,
  SENS_AREA = 8,
  SENS_CHROMINANCE_BLUE = 27,
  SENS_CHROMINANCE_GREEN = 26,
  SENS_CHROMINANCE_RED = 25,
  SENS_CONTACTS = 28,
  SENS_COUNTER_16BIT = 32,
  SENS_CURRENT = 2,
  SENS_DENSITY = 10,
  SENS_ENERGY = 14,
  SENS_FORCE = 13,
  SENS_FREQUENCY = 3,
  SENS_HUMIDITY = 31,
  SENS_ILLUMINANCE = 24,
  SENS_ITEMS = 30,
  SENS_LENGTH = 7,
  SENS_LUMINOUS_FLUX = 23,
  SENS_LUMINOUS_INTENSITY = 22,
  SENS_MASS = 6,
  SENS_MEMORY = 29,
  SENS_MS = 128,
  SENS_OTHER = 127,
  SENS_POSITION_X = 18,
  SENS_POSITION_Y = 19,
  SENS_POSITION_Z = 20,
  SENS_POWER = 5,
  SENS_PRESSURE = 15,
  SENS_RESISTANCE = 4,
  SENS_TEMPERATURE = 0,
  SENS_TIME = 16,
  SENS_VELOCITY = 11,
  SENS_VOLTAGE = 1,
  SENS_VOLUME = 9,
}

-- @enum RDMSensorUnit
Enums.RDMSensorUnit = {
  UNITS_AMPERE_AC_PEAK = 6,
  UNITS_AMPERE_AC_RMS = 7,
  UNITS_AMPERE_DC = 5,
  UNITS_BYTE = 28,
  UNITS_CANDELA = 24,
  UNITS_CENTIGRADE = 1,
  UNITS_DEGREE = 22,
  UNITS_HERTZ = 8,
  UNITS_IRE = 27,
  UNITS_JOULE = 19,
  UNITS_KILOGRAM = 11,
  UNITS_KILOGRAMMES_PER_METER_CUBED = 15,
  UNITS_LUMEN = 25,
  UNITS_LUX = 26,
  UNITS_METERS = 12,
  UNITS_METERS_CUBED = 14,
  UNITS_METERS_PER_SECOND = 16,
  UNITS_METERS_PER_SECOND_SQUARED = 17,
  UNITS_METERS_SQUARED = 13,
  UNITS_MS = 128,
  UNITS_NEWTON = 18,
  UNITS_NONE = 0,
  UNITS_OHM = 9,
  UNITS_PASCAL = 20,
  UNITS_SECOND = 21,
  UNITS_STERADIAN = 23,
  UNITS_VOLTS_AC_PEAK = 3,
  UNITS_VOLTS_AC_RMS = 4,
  UNITS_VOLTS_DC = 2,
  UNITS_WATT = 10,
}

-- @enum RDMSensorUnitPrefix
Enums.RDMSensorUnitPrefix = {
  PREFIX_ATTO = 8,
  PREFIX_CENTI = 2,
  PREFIX_DECA = 17,
  PREFIX_DECI = 1,
  PREFIX_EXA = 24,
  PREFIX_FEMPTO = 7,
  PREFIX_GIGA = 21,
  PREFIX_HECTO = 18,
  PREFIX_KILO = 19,
  PREFIX_MEGA = 20,
  PREFIX_MICRO = 4,
  PREFIX_MILLI = 3,
  PREFIX_NANO = 5,
  PREFIX_NONE = 0,
  PREFIX_PETA = 23,
  PREFIX_PICO = 6,
  PREFIX_TERRA = 22,
  PREFIX_YOCTO = 10,
  PREFIX_YOTTA = 26,
  PREFIX_ZEPTO = 9,
  PREFIX_ZETTA = 25,
}

-- @enum RDMSlotId
Enums.RDMSlotId = {
  SD_BARN_DOOR = 1033,
  SD_BEAM_SIZE_IRIS = 1025,
  SD_COLOR_ADD_AMBER = 529,
  SD_COLOR_ADD_BLUE = 519,
  SD_COLOR_ADD_COOL_WHITE = 532,
  SD_COLOR_ADD_GREEN = 518,
  SD_COLOR_ADD_RED = 517,
  SD_COLOR_ADD_WARM_WHITE = 531,
  SD_COLOR_ADD_WHITE = 530,
  SD_COLOR_CORRECTION = 520,
  SD_COLOR_HUE = 534,
  SD_COLOR_SATURATION = 535,
  SD_COLOR_SCROLL = 521,
  SD_COLOR_SEMAPHORE = 528,
  SD_COLOR_SUB_CYAN = 514,
  SD_COLOR_SUB_MAGENTA = 516,
  SD_COLOR_SUB_UV = 533,
  SD_COLOR_SUB_YELLOW = 515,
  SD_COLOR_WHEEL = 513,
  SD_DOUSER = 1032,
  SD_EDGE = 1026,
  SD_EFFECTS_WHEEL = 772,
  SD_FAN_CONTROL = 1286,
  SD_FIXTURE_CONTROL = 1282,
  SD_FIXTURE_SPEED = 1283,
  SD_FOUNTAIN_CONTROL = 1288,
  SD_FRAMING_SHUTTER = 1030,
  SD_FROST = 1027,
  SD_HEATER_CONTROL = 1287,
  SD_INTENSITY = 1,
  SD_INTENSITY_MASTER = 2,
  SD_LAMP_CONTROL = 1281,
  SD_MACRO = 1284,
  SD_PAN = 257,
  SD_POWER_CONTROL = 1285,
  SD_PRISM_WHEEL = 771,
  SD_ROTO_GOBO_WHEEL = 770,
  SD_SHUTTER_ROTATE = 1031,
  SD_STATIC_GOBO_WHEEL = 769,
  SD_STROBE = 1028,
  SD_TILT = 258,
  SD_UNDEFINED = 65535,
  SD_ZOOM = 1029,
}

-- @enum RDMSlotType
Enums.RDMSlotType = {
  ST_PRIMARY = 0,
  ST_SEC_CONTROL = 4,
  ST_SEC_FINE = 1,
  ST_SEC_INDEX = 5,
  ST_SEC_INDEX_ROTATE = 7,
  ST_SEC_ROTATION = 6,
  ST_SEC_SPEED = 3,
  ST_SEC_TIMING = 2,
  ST_SEC_UNDEFINED = 255,
}

-- @enum RDMStatusMessageType
Enums.RDMStatusMessageType = {
  STATUS_ADVISORY = 2,
  STATUS_ADVISORY_CLEARED = 18,
  STATUS_ERROR = 4,
  STATUS_ERROR_CLEARED = 20,
  STATUS_GET_LAST_MESSAGE = 1,
  STATUS_NONE = 0,
  STATUS_WARNING = 3,
  STATUS_WARNING_CLEARED = 19,
}

-- @enum RealtimeCmdSource
Enums.RealtimeCmdSource = {
  Local = 1,
  Network = 2,
  Original = 0,
}

-- @enum RealtimeCmdType
Enums.RealtimeCmdType = {
  DCRemote = 7,
  Encoder = 2,
  Fader = 1,
  GeneratorControl = 6,
  Key = 0,
  Midi = 8,
  OwO = 3,
  PSN = 9,
  SoundToLight = 5,
  TimeCode = 4,
}

-- @enum RealtimeSection
Enums.RealtimeSection = {
  CalcChannel = 10,
  ChannelCompress = 16,
  DMXCompress = 12,
  DMXDecompress = 1,
  DMXMix = 2,
  DMXTransfer = 13,
  GroupMaster = 6,
  Highlight = 9,
  Jobque = 3,
  LED = 17,
  Lua = 5,
  Playback = 8,
  PostRealtime = 14,
  SendRTStream = 4,
  Start = 0,
  Timecode = 7,
  Wait1 = 11,
  Wait2 = 15,
}

-- @enum RecipeCleanupOperation
Enums.RecipeCleanupOperation = {
  CookedButOverwritten = 2,
  NoOutput = 0,
  NotCooked = 1,
}

-- @enum RecordGo
Enums.RecordGo = {
  ["as Go"] = 0,
  ["as Goto (Status)"] = 1,
}

-- @enum ReductionPolicy
Enums.ReductionPolicy = {
  Equal = 3,
  EqualFirst = 4,
  EqualLast = 5,
  None = 0,
  PreferFirst = 1,
  PreferLast = 2,
}

-- @enum RelationType
Enums.RelationType = {
  Multiply = 0,
  Override = 1,
}

-- @enum ReleaseType
Enums.ReleaseType = {
  Alpha = 0,
  Beta = 1,
  Release = 2,
}

-- @enum RemoteMidiType
Enums.RemoteMidiType = {
  Control = 3,
  Note = 0,
  NoteAttack = 1,
  NoteAttackDecay = 2,
}

-- @enum RemoteResolution
Enums.RemoteResolution = {
  ["16bit"] = 2,
  ["24bit"] = 3,
  ["8bit"] = 1,
}

-- @enum RequestedSize
Enums.RequestedSize = {
  Default = 0,
}

-- @enum ResolutionLimit
Enums.ResolutionLimit = {
  ["1080p"] = 3,
  ["480p"] = 1,
  ["720p"] = 2,
  Unlimited = 0,
}

-- @enum RestartOption
Enums.RestartOption = {
  Continue = 0,
  Reset = 1,
}

-- @enum Roles
Enums.Roles = {
  Default = 0,
  Display = 1,
  DisplayShort = 2,
  Edit = 4,
  ObjectNoOnly = 8,
}

-- @enum RotateOption
Enums.RotateOption = {
  Left = 0,
  Right = 1,
}

-- @enum RotationMode
Enums.RotationMode = {
  Group = 1,
  Single = 0,
}

-- @enum RowFilter
Enums.RowFilter = {
  All = 0,
  Selection = 3,
  Unused = 2,
  Used = 1,
}

-- @enum RowOrder
Enums.RowOrder = {
  ["Down Up"] = 1,
  ["Up Down"] = 0,
}

-- @enum SCVirtualKeyCode
Enums.SCVirtualKeyCode = {
  [""] = 0,
  ALIGN = 51,
  ASSIGN = 63,
  ASTERISK = 133,
  AT = 82,
  BLACK = 102,
  BLIND = 14,
  CHANNEL = 57,
  CLEAR = 87,
  CLONE = 135,
  COPY = 49,
  CUE = 60,
  DEF_GO = 37,
  DEF_GOBACK = 39,
  DEF_PAUSE = 38,
  DELETE = 50,
  DMX = 140,
  DOT = 80,
  DOUBLE_SPEED = 113,
  DOWN = 8,
  EDIT = 62,
  ENCODER_INSIDE1 = 89,
  ENCODER_INSIDE2 = 91,
  ENCODER_INSIDE3 = 93,
  ENCODER_INSIDE4 = 95,
  ENCODER_INSIDE5 = 97,
  ENCODER_OUTSIDE1 = 90,
  ENCODER_OUTSIDE2 = 92,
  ENCODER_OUTSIDE3 = 94,
  ENCODER_OUTSIDE4 = 96,
  ENCODER_OUTSIDE5 = 98,
  ESC = 88,
  EXEC = 35,
  EXECUTOR = 144,
  FADER = 36,
  FIX = 134,
  FIXTURE = 56,
  FLASH = 101,
  FLIP = 145,
  FREEZE = 12,
  FULL = 85,
  GO = 42,
  GOBACK = 41,
  GOBACKFAST = 44,
  GOFAST = 45,
  GOSTEP = 110,
  GOTO = 55,
  GRID = 136,
  GROUP = 58,
  HALF_SPEED = 112,
  HELP = 53,
  HIGHLIGHT = 10,
  IF = 81,
  KILL = 103,
  LAYOUT = 137,
  LEARN = 43,
  LIST = 18,
  LOAD = 108,
  LOWLIGHT = 109,
  MA1 = 1,
  MA2 = 2,
  MACRO = 142,
  MENU = 9,
  MINUS = 79,
  MOVE = 48,
  NEXT = 4,
  NEXT_STEP = 122,
  NEXT_X = 119,
  NEXT_Y = 120,
  NEXT_Z = 121,
  NUM0 = 67,
  NUM1 = 68,
  NUM2 = 69,
  NUM3 = 70,
  NUM4 = 71,
  NUM5 = 72,
  NUM6 = 73,
  NUM7 = 74,
  NUM8 = 75,
  NUM9 = 76,
  OFF = 47,
  ON = 46,
  ONPC_SCREEN2 = 127,
  ONPC_SCREEN3 = 128,
  ONPC_SCREEN4 = 129,
  ONPC_SCREEN5 = 130,
  ONPC_SCREEN6 = 131,
  ONPC_SCREEN7 = 132,
  OOPS = 86,
  PAGE = 143,
  PAGE_DOWN = 17,
  PAGE_UP = 16,
  PAUSE = 40,
  PHASER = 141,
  PLEASE = 84,
  PLUS = 77,
  PRESET = 61,
  PREV = 3,
  PREVIEW = 13,
  PREV_STEP = 118,
  PREV_X = 115,
  PREV_Y = 116,
  PREV_Z = 117,
  RATE1 = 104,
  RECORD = 114,
  RESET_MATRICKS = 126,
  SELECT = 54,
  SELFIX = 7,
  SEQUENCE = 59,
  SET = 5,
  SLASH = 83,
  SOLO = 11,
  STEP = 123,
  STOMP = 52,
  STORE = 66,
  SWAP = 111,
  TEMP = 105,
  THRU = 78,
  TIME = 64,
  TIMECODE = 138,
  TOGGLE = 106,
  TOGGLE_MATRICKS = 125,
  TOGGLE_STEP = 124,
  TOP = 107,
  UNDO = 86,
  UNKNOWN = 0,
  UP = 6,
  UPDATE = 65,
  USER1 = 99,
  USER2 = 100,
  VIEW = 139,
  X1 = 19,
  X10 = 28,
  X11 = 29,
  X12 = 30,
  X13 = 31,
  X14 = 32,
  X15 = 33,
  X16 = 34,
  X2 = 20,
  X3 = 21,
  X4 = 22,
  X5 = 23,
  X6 = 24,
  X7 = 25,
  X8 = 26,
  X9 = 27,
  XKEYS = 15,
}

-- @enum SMPTEMode
Enums.SMPTEMode = {
  In = 0,
  Out = 1,
}

-- @enum SacnDataMode
Enums.SacnDataMode = {
  ["Input Multicast"] = 2,
  ["Input Unicast"] = 3,
  ["Output Multicast"] = 0,
  ["Output Unicast"] = 1,
}

-- @enum ScrollItemPlacementType
Enums.ScrollItemPlacementType = {
  Auto = 0,
  Begin = 1,
  End = 2,
}

-- @enum ScrollParamEntity
Enums.ScrollParamEntity = {
  Area = 1,
  Item = 0,
}

-- @enum ScrollParamValueType
Enums.ScrollParamValueType = {
  Absolute = 1,
  Relative = 0,
}

-- @enum ScrollReason
Enums.ScrollReason = {
  Automatic = 0,
  User = 1,
}

-- @enum ScrollType
Enums.ScrollType = {
  Horizontal = 1,
  Vertical = 0,
}

-- @enum SectionCount
Enums.SectionCount = {
  ["1"] = 1,
  ["2"] = 2,
  ["3"] = 3,
  Auto = 0,
}

-- @enum SelectedEnvironment
Enums.SelectedEnvironment = {
  Normal = 0,
  Preview = 1,
}

-- @enum SelectedFeatureMode
Enums.SelectedFeatureMode = {
  Feature = 0,
  FeatureGroup = 1,
}

-- @enum SelectedSelection
Enums.SelectedSelection = {
  ["1"] = 0,
  ["2"] = 1,
}

-- @enum SelectionAlignment
Enums.SelectionAlignment = {
  Center = 2,
  Left = 1,
  None = 0,
  Right = 3,
}

-- @enum SelectionMode
Enums.SelectionMode = {
  ["2D Grid"] = 0,
  Linearize = 1,
}

-- @enum SelectionModeLayout
Enums.SelectionModeLayout = {
  ["2D Grid"] = 0,
  Linearize = 1,
}

-- @enum SelectionViewFontSize
Enums.SelectionViewFontSize = {
  ["10"] = 2,
  ["12"] = 3,
  ["14"] = 4,
  ["16"] = 5,
  ["18"] = 6,
  ["24"] = 7,
  ["28"] = 8,
  ["32"] = 9,
  Automatic = 0,
  Default = 1,
}

-- @enum SeqMasterGoMode
Enums.SeqMasterGoMode = {
  Go = 1,
  None = 0,
  On = 2,
  Top = 3,
}

-- @enum SeqRestartMode
Enums.SeqRestartMode = {
  ["Current Cue"] = 1,
  ["First Cue"] = 0,
  ["Next Cue"] = 2,
}

-- @enum SequenceAction
Enums.SequenceAction = {
  Flash = 4,
  ["Go+"] = 3,
  Goto = 14,
  Load = 15,
  None = 255,
  Select = 1,
  Temp = 5,
  Toggle = 2,
  Top = 12,
}

-- @enum SequenceActionToken
Enums.SequenceActionToken = {
  Flash = 1,
  ["Go+"] = 3,
  Goto = 16,
  Load = 17,
  None = 0,
  ["Pool Default"] = 410,
  Select = 24,
  Temp = 13,
  Toggle = 14,
  Top = 15,
}

-- @enum SequenceCountdown
Enums.SequenceCountdown = {
  All = 2,
  Duration = 1,
  Off = 0,
}

-- @enum SequenceLinkType
Enums.SequenceLinkType = {
  Fixed = 0,
  LastGo = 2,
  Selected = 1,
}

-- @enum SessionTimeStyle
Enums.SessionTimeStyle = {
  ["Date DD-MM-YYYY"] = 1,
  ["Date MM-DD-YYYY"] = 2,
  Dawn = 4,
  Digital = 0,
  ["Digital AM/PM"] = 3,
  Dusk = 7,
  Sunrise = 5,
  Sunset = 6,
}

-- @enum SessionTimeStyleTZ
Enums.SessionTimeStyleTZ = {
  Digital = 0,
  ["Digital AM/PM"] = 3,
}

-- @enum SetupType
Enums.SetupType = {
  Edit = 2,
  Live = 1,
  Undefined = 0,
}

-- @enum ShadowMapQuality
Enums.ShadowMapQuality = {
  High = 3,
  Low = 1,
  Medium = 2,
  None = 0,
  ["Very High"] = 4,
}

-- @enum ShadowMode
Enums.ShadowMode = {
  Disabled = 0,
  Enabled = 1,
}

-- @enum ShaperBarMode
Enums.ShaperBarMode = {
  Blades = 0,
  Frame = 1,
}

-- @enum ShaperControlMode
Enums.ShaperControlMode = {
  ["A+B"] = 1,
  ["Ins+Rot"] = 0,
}

-- @enum ShaperEncoderLinkMode
Enums.ShaperEncoderLinkMode = {
  All = 1,
  Mirrored = 3,
  None = 0,
  Parallel = 2,
}

-- @enum ShaperViewMode
Enums.ShaperViewMode = {
  Faders = 1,
  Graphical = 0,
}

-- @enum SheetMode
Enums.SheetMode = {
  Channel = 1,
  ["Dimmer+"] = 2,
  Fixture = 0,
  ["Sheet/Filter"] = 3,
}

-- @enum SheetSettingsMergeMode
Enums.SheetSettingsMergeMode = {
  Feature = 1,
  None = 0,
}

-- @enum ShowCreatorObjectType
Enums.ShowCreatorObjectType = {
  Appearances = 0,
  Bitmaps = 16,
  Cameras = 1,
  ["Data Pools"] = 15,
  ["Encoder Bars"] = 2,
  ["Executor Configurations"] = 17,
  Filters = 18,
  Gels = 3,
  Generators = 19,
  Gobos = 9,
  Groups = 20,
  Images = 10,
  Layouts = 21,
  MAtricks = 23,
  Macros = 22,
  Meshes = 11,
  Pages = 24,
  Plugins = 25,
  Presets = 26,
  Quickeys = 27,
  ["Render Qualities"] = 4,
  Scribbles = 5,
  Sequences = 28,
  Sounds = 12,
  Symbols = 13,
  Timecodes = 29,
  Timers = 30,
  UserProfiles = 7,
  Users = 6,
  Videos = 14,
  Views = 8,
  Worlds = 31,
}

-- @enum ShowCreatorType
Enums.ShowCreatorType = {
  AutoCreate = 1,
  AutoStore = 0,
  Export = 5,
  Generate = 3,
  Groups = 2,
  Import = 4,
}

-- @enum ShowFileSegmentsMask
Enums.ShowFileSegmentsMask = {
  All = 15,
  DmxProtocols = 8,
  LocalSettings = 2,
  NoShowData = 1,
  Nothing = 0,
  OutputStations = 4,
}

-- @enum ShowFileStatus
Enums.ShowFileStatus = {
  DataNegotiationActive = 4,
  DataNegotiationMaster = 7,
  DataNegotiationSlave = 8,
  DataNegotiationWaitingForNewMaster = 6,
  NoShow = 1,
  ShowDownloadIgnore = 13,
  ShowDownloaded = 3,
  ShowDownloading = 11,
  ShowLoaded = 2,
  ShowMediaDownloading = 12,
  ShowMediaUploading = 10,
  ShowPSRConversion = 14,
  ShowSaving = 5,
  ShowUploading = 9,
  Undefined = 0,
}

-- @enum ShowPathType
Enums.ShowPathType = {
  Backup = 18,
  Demo = 19,
  Show = 17,
  Template = 60,
}

-- @enum ShowUserEncoder
Enums.ShowUserEncoder = {
  Default = 0,
  Exec = 1,
  Xkeys = 2,
}

-- @enum ShowfileSelectorMode
Enums.ShowfileSelectorMode = {
  Delete = 3,
  Load = 1,
  Newshow = 4,
  Premenu = 0,
  Psr = 6,
  Saveas = 2,
  Startupshow = 5,
}

-- @enum ShuffleMode
Enums.ShuffleMode = {
  Auto = 0,
  Linked = 1,
  Unlinked = 2,
}

-- @enum SignalOff
Enums.SignalOff = {
  Off = 4294967295,
}

-- @enum SignalSlot
Enums.SignalSlot = {
  Off = 4294967295,
  ["Slot 1"] = 0,
  ["Slot 2"] = 1,
  ["Slot 3"] = 2,
  ["Slot 4"] = 3,
  ["Slot 5"] = 4,
  ["Slot 6"] = 5,
  ["Slot 7"] = 6,
  ["Slot 8"] = 7,
}

-- @enum SortColorBy
Enums.SortColorBy = {
  Hue = 0,
  Saturation = 1,
}

-- @enum SoundPoolAction
Enums.SoundPoolAction = {
  ["Go+"] = 3,
  None = 255,
  Off = 11,
  Pause = 10,
  Toggle = 2,
}

-- @enum SoundValues
Enums.SoundValues = {
  All = 0,
  Band1 = 4,
  Band2 = 5,
  Band3 = 6,
  Band4 = 7,
  Band5 = 8,
  Band6 = 9,
  Band7 = 10,
  Bass = 1,
  High = 3,
  InvAll = 11,
  InvBand1 = 15,
  InvBand2 = 16,
  InvBand3 = 17,
  InvBand4 = 18,
  InvBand5 = 19,
  InvBand6 = 20,
  InvBand7 = 21,
  InvBass = 12,
  InvHigh = 14,
  InvMid = 13,
  Mid = 2,
}

-- @enum SpecialAttribute
Enums.SpecialAttribute = {
  Blade = 30,
  CIE = 10,
  CTB = 28,
  CTC = 29,
  CTO = 27,
  Color = 11,
  ColorRGB = 8,
  ColorWheelSpin = 12,
  Dimmer = 3,
  Dummy = 2,
  Focus = 22,
  Frost = 25,
  Gobo = 13,
  GoboPos = 16,
  GoboPosRotate = 17,
  GoboPosShake = 18,
  GoboSelectShake = 15,
  GoboWheelSpin = 14,
  HSB = 9,
  Iris = 24,
  NoFeature = 1,
  None = 0,
  PanTilt = 4,
  Prism = 19,
  PrismPos = 20,
  PrismPosRotate = 21,
  Shutter = 26,
  Video = 31,
  XYZ_Pos = 5,
  XYZ_Rot = 6,
  XYZ_Scale = 7,
  Zoom = 23,
}

-- @enum SpecialCycle
Enums.SpecialCycle = {
  Channel = 2,
  If = 3,
  None = 0,
  Time = 1,
}

-- @enum SpecialExecutor
Enums.SpecialExecutor = {
  ExecBtn1 = 30,
  ExecBtn2 = 31,
  ExecBtn3 = 32,
  ExecEncoder = 29,
  GrandKnob = 4,
  None = -1,
  ProgBtn1 = 40,
  ProgBtn2 = 41,
  ProgBtn3 = 42,
  ProgEncoder = 39,
  RateBtn1 = 9,
  RateBtn2 = 19,
  SpeedBtn1 = 10,
  SpeedBtn2 = 20,
  XFade1 = 0,
  XFade1Btn = 2,
  XFade2 = 1,
  XFade2Btn = 3,
}

-- @enum SpecialIndexBlade
Enums.SpecialIndexBlade = {
  Blade1A = 0,
  Blade1B = 1,
  Blade1Rot = 2,
  Blade2A = 3,
  Blade2B = 4,
  Blade2Rot = 5,
  Blade3A = 6,
  Blade3B = 7,
  Blade3Rot = 8,
  Blade4A = 9,
  Blade4B = 10,
  Blade4Rot = 11,
  ShaperRot = 12,
}

-- @enum SpecialIndexIris
Enums.SpecialIndexIris = {
  Iris = 0,
  IrisPulseClose = 2,
  IrisPulseOpen = 3,
  IrisRandomPulseClose = 6,
  IrisRandomPulseOpen = 5,
  IrisStrobe = 1,
  IrisStrobeRandom = 4,
}

-- @enum SpecialIndexShutter
Enums.SpecialIndexShutter = {
  Shutter = 0,
  ShutterStrobe = 1,
  ShutterStrobeEffect = 9,
  ShutterStrobePulse = 2,
  ShutterStrobePulseClose = 3,
  ShutterStrobePulseOpen = 4,
  ShutterStrobeRandom = 5,
  ShutterStrobeRandomPulse = 6,
  ShutterStrobeRandomPulseClose = 7,
  ShutterStrobeRandomPulseOpen = 8,
}

-- @enum SpecialPurposeFT
Enums.SpecialPurposeFT = {
  BitmapController = 2,
  MArker = 1,
  None = 0,
}

-- @enum SpecialValueTypes
Enums.SpecialValueTypes = {
  Generators = 1,
  None = 255,
  Sound = 0,
  Specials = 2,
}

-- @enum SpecialValues
Enums.SpecialValues = {
  Hold = 1,
  Release = 0,
}

-- @enum SpecialWindowRememberedTab
Enums.SpecialWindowRememberedTab = {
  Color = 0,
  Shapers = 1,
}

-- @enum SpecialWindowTab
Enums.SpecialWindowTab = {
  Color = 0,
  None = 2,
  Shapers = 1,
}

-- @enum SpeedMaster
Enums.SpeedMaster = {
  [""] = 255,
  BPM = 15,
  None = 255,
  Speed1 = 0,
  Speed10 = 9,
  Speed11 = 10,
  Speed12 = 11,
  Speed13 = 12,
  Speed14 = 13,
  Speed15 = 14,
  Speed2 = 1,
  Speed3 = 2,
  Speed4 = 3,
  Speed5 = 4,
  Speed6 = 5,
  Speed7 = 6,
  Speed8 = 7,
  Speed9 = 8,
}

-- @enum SpeedReadoutMode
Enums.SpeedReadoutMode = {
  BPM = 1,
  Hertz = 0,
  Seconds = 2,
}

-- @enum SpeedReadoutModeAuto
Enums.SpeedReadoutModeAuto = {
  Auto = -1,
  BPM = 1,
  Hertz = 0,
  Seconds = 2,
}

-- @enum SpeedScale
Enums.SpeedScale = {
  Div128 = -7,
  Div16 = -4,
  Div2 = -1,
  Div256 = -8,
  Div32 = -5,
  Div4 = -2,
  Div64 = -6,
  Div8 = -3,
  Mul128 = 7,
  Mul16 = 4,
  Mul2 = 1,
  Mul256 = 8,
  Mul32 = 5,
  Mul4 = 2,
  Mul64 = 6,
  Mul8 = 3,
  One = 0,
}

-- @enum SplineType
Enums.SplineType = {
  [""] = 0,
  Free = 1,
  None = 0,
  Proportional = 2,
  Undefined = 3,
}

-- @enum SplitterH_LeftRight
Enums.SplitterH_LeftRight = {
  Left = 1,
  Right = 0,
}

-- @enum SplitterV_TopBottom
Enums.SplitterV_TopBottom = {
  Bottom = 0,
  Top = 1,
}

-- @enum StartupBrowserFilter
Enums.StartupBrowserFilter = {
  ["Demo Shows"] = 1,
  Shows = 0,
  ["Template Shows"] = 2,
}

-- @enum StoreDisplayNumber
Enums.StoreDisplayNumber = {
  ["1"] = 0,
  ["2"] = 1,
  ["3"] = 2,
  ["4"] = 3,
  ["5"] = 4,
  ["6"] = 5,
  ["7"] = 6,
}

-- @enum StoreMode
Enums.StoreMode = {
  Abort = 0,
  Ask = -1,
  CreateSecondCue = 5,
  Merge = 2,
  Overwrite = 1,
  Release = 4,
  Remove = 3,
}

-- @enum StoreSource
Enums.StoreSource = {
  DMX = 2,
  Output = 1,
  Programmer = 0,
}

-- @enum StoremodeRadio
Enums.StoremodeRadio = {
  Ask = -1,
  Merge = 2,
  Overwrite = 1,
  Release = 4,
  Remove = 3,
}

-- @enum StrictNormalMode
Enums.StrictNormalMode = {
  Normal = 0,
  Strict = 1,
}

-- @enum StructureType
Enums.StructureType = {
  CenterLineBased = 0,
  Detail = 1,
}

-- @enum SupportType
Enums.SupportType = {
  GroundSupport = 1,
  Rope = 0,
}

-- @enum SyntaxResult
Enums.SyntaxResult = {
  AbortBefore = 4,
  Erase = 6,
  Execute = 3,
  ExecuteAfter = 2,
  ExecuteBefore = 1,
  Ignore = 5,
  SyntaxError = -1,
  SyntaxOk = 0,
}

-- @enum SyntaxState
Enums.SyntaxState = {
  DoAlign = 30,
  DoAlignTransition = 31,
  DoAssign = 29,
  DoCall = 23,
  DoChangeDestination = 3,
  DoCopy = 19,
  DoCrashMe = 24,
  DoCut = 18,
  DoDebug = 40,
  DoDelete = 22,
  DoEdit = 17,
  DoEditUpdate = 16,
  DoExchange = 43,
  DoExecute = 1,
  DoExport = 12,
  DoFader = 2,
  DoFix = 38,
  DoGrid = 42,
  DoImport = 11,
  DoIncrement = 26,
  DoIncrementReset = 27,
  DoLabel = 33,
  DoList = 41,
  DoLoadShowfile = 9,
  DoLocking = 36,
  DoLogin = 5,
  DoLogout = 6,
  DoMove = 21,
  DoNotCare = 44,
  DoOops = 15,
  DoPark = 35,
  DoPaste = 20,
  DoPatch = 34,
  DoSaveShowfile = 10,
  DoSelect = 37,
  DoSelectFixtures = 25,
  DoSet = 28,
  DoSetDMXReadout = 8,
  DoSetLanguage = 7,
  DoShutdown = 4,
  DoStore = 13,
  DoType = 39,
  DoUpdate = 14,
  DoValueReadout = 32,
  None = 0,
  SyntaxError = -1,
}

-- @enum TCDuration
Enums.TCDuration = {
  ["To End"] = 0,
}

-- @enum TCTextMode
Enums.TCTextMode = {
  All = 0,
  Markers = 3,
  Selected = 2,
  Tracks = 1,
}

-- @enum TCViewMode
Enums.TCViewMode = {
  Both = 2,
  Text = 0,
  Timeline = 1,
}

-- @enum TTL
Enums.TTL = {
  ["Default(8)"] = 8,
}

-- @enum TagType
Enums.TagType = {
  ["Kill Delayed"] = 5,
  ["Kill Instant"] = 4,
  None = 0,
}

-- @enum TestBlockType
Enums.TestBlockType = {
  lua = 3,
  root = 1,
  rt = 2,
  ui = 0,
}

-- @enum TextInputEditor
Enums.TextInputEditor = {
  Appearance = 1,
  NameNote = 3,
  None = 4,
  Scribble = 0,
  Tags = 2,
}

-- @enum TimeCodeSource
Enums.TimeCodeSource = {
  Midi = 0,
  Smpte = 1,
}

-- @enum TimeCursorScrollMode
Enums.TimeCursorScrollMode = {
  Center = 1,
  Page = 0,
}

-- @enum TimeDefault
Enums.TimeDefault = {
  Default = 9223372036854775807,
}

-- @enum TimeDisplayClockFormat
Enums.TimeDisplayClockFormat = {
  ["10.11:23:45"] = 3,
  ["251:23:45"] = 4,
  ["<Default>"] = 0,
}

-- @enum TimeDisplayFormat
Enums.TimeDisplayFormat = {
  ["10.11:23:45"] = 2,
  ["10d11h23m45"] = 0,
  ["251:23:45"] = 3,
  ["251h23m45"] = 1,
}

-- @enum TimeDisplayFormatSelected
Enums.TimeDisplayFormatSelected = {
  ["10.11:23:45"] = 3,
  ["10d11h23m45"] = 1,
  ["251:23:45"] = 4,
  ["251h23m45"] = 2,
  Default = 0,
}

-- @enum TimeKeyTarget
Enums.TimeKeyTarget = {
  Cue = 0,
  Fixture = 1,
}

-- @enum TimeNone
Enums.TimeNone = {
  None = 9223372036854775807,
}

-- @enum TimeNoneEmpty
Enums.TimeNoneEmpty = {
  [""] = 9223372036854775807,
  None = 9223372036854775807,
}

-- @enum TimeNoneSwap
Enums.TimeNoneSwap = {
  Invert = 9223372036854775806,
  None = 9223372036854775807,
}

-- @enum TimeNoneSwapDelay
Enums.TimeNoneSwapDelay = {
  None = 9223372036854775807,
  ["Swap Delay"] = 9223372036854775806,
}

-- @enum TimeNoneSwapFade
Enums.TimeNoneSwapFade = {
  None = 9223372036854775807,
  ["Swap Fade"] = 9223372036854775806,
}

-- @enum TimeNoneSwapSpeed
Enums.TimeNoneSwapSpeed = {
  None = 9223372036854775807,
  ["Swap Speed"] = 9223372036854775806,
}

-- @enum TimecodeEncoderFunction
Enums.TimecodeEncoderFunction = {
  Edit = 0,
}

-- @enum TimecodePoolAction
Enums.TimecodePoolAction = {
  ["Go+"] = 3,
  None = 255,
  Off = 11,
  Pause = 10,
  Select = 1,
  Toggle = 2,
  Top = 12,
}

-- @enum TimecodeSelectLastEventMode
Enums.TimecodeSelectLastEventMode = {
  All = 2,
  Off = 0,
  Track = 1,
}

-- @enum TimecodeSelectionTarget
Enums.TimecodeSelectionTarget = {
  Events = 0,
  TimeRanges = 1,
}

-- @enum TimecodeSingleUserRecord
Enums.TimecodeSingleUserRecord = {
  ["All Users"] = 0,
  ["Single User"] = 1,
}

-- @enum TimecodeSlot
Enums.TimecodeSlot = {
  ["<Selected>"] = 255,
  ["TCSlot 1"] = 0,
  ["TCSlot 2"] = 1,
  ["TCSlot 3"] = 2,
  ["TCSlot 4"] = 3,
  ["TCSlot 5"] = 4,
  ["TCSlot 6"] = 5,
  ["TCSlot 7"] = 6,
  ["TCSlot 8"] = 7,
}

-- @enum TimecodeSlotOff
Enums.TimecodeSlotOff = {
  Off = 255,
}

-- @enum TimecodeSlotPoolAction
Enums.TimecodeSlotPoolAction = {
  ["Go+"] = 3,
  None = 255,
  Off = 11,
  Pause = 10,
  Select = 1,
  ["Toggle Off"] = 13,
  ["Toggle Pause"] = 2,
}

-- @enum TimecodeSlotShort
Enums.TimecodeSlotShort = {
  ["TCSlot 1"] = 0,
  ["TCSlot 2"] = 1,
  ["TCSlot 3"] = 2,
  ["TCSlot 4"] = 3,
  ["TCSlot 5"] = 4,
  ["TCSlot 6"] = 5,
  ["TCSlot 7"] = 6,
  ["TCSlot 8"] = 7,
}

-- @enum TimecodeTool
Enums.TimecodeTool = {
  Add = 2,
  Delete = 3,
  Move = 4,
  Operate = 0,
  Resize = 5,
  Select = 1,
}

-- @enum TimerAction
Enums.TimerAction = {
  None = 255,
  Select = 1,
  Toggle = 2,
}

-- @enum TimerMode
Enums.TimerMode = {
  Countdown = 0,
  Stopwatch = 1,
}

-- @enum TimerTriggerToken
Enums.TimerTriggerToken = {
  Flash = 2,
  ["Go+"] = 0,
  Temp = 3,
  Toggle = 1,
}

-- @enum TimingMaster
Enums.TimingMaster = {
  Timing1 = -2,
  Timing10 = -11,
  Timing11 = -12,
  Timing12 = -13,
  Timing13 = -14,
  Timing14 = -15,
  Timing15 = -16,
  Timing16 = -17,
  Timing17 = -18,
  Timing18 = -19,
  Timing19 = -20,
  Timing2 = -3,
  Timing20 = -21,
  Timing21 = -22,
  Timing22 = -23,
  Timing23 = -24,
  Timing24 = -25,
  Timing25 = -26,
  Timing26 = -27,
  Timing27 = -28,
  Timing28 = -29,
  Timing29 = -30,
  Timing3 = -4,
  Timing30 = -31,
  Timing31 = -32,
  Timing32 = -33,
  Timing33 = -34,
  Timing34 = -35,
  Timing35 = -36,
  Timing36 = -37,
  Timing37 = -38,
  Timing38 = -39,
  Timing39 = -40,
  Timing4 = -5,
  Timing40 = -41,
  Timing41 = -42,
  Timing42 = -43,
  Timing43 = -44,
  Timing44 = -45,
  Timing45 = -46,
  Timing46 = -47,
  Timing47 = -48,
  Timing48 = -49,
  Timing49 = -50,
  Timing5 = -6,
  Timing50 = -51,
  Timing6 = -7,
  Timing7 = -8,
  Timing8 = -9,
  Timing9 = -10,
}

-- @enum TimingMasterWithDefault
Enums.TimingMasterWithDefault = {
  CueTiming = -1,
  Timing1 = -2,
  Timing10 = -11,
  Timing11 = -12,
  Timing12 = -13,
  Timing13 = -14,
  Timing14 = -15,
  Timing15 = -16,
  Timing16 = -17,
  Timing17 = -18,
  Timing18 = -19,
  Timing19 = -20,
  Timing2 = -3,
  Timing20 = -21,
  Timing21 = -22,
  Timing22 = -23,
  Timing23 = -24,
  Timing24 = -25,
  Timing25 = -26,
  Timing26 = -27,
  Timing27 = -28,
  Timing28 = -29,
  Timing29 = -30,
  Timing3 = -4,
  Timing30 = -31,
  Timing31 = -32,
  Timing32 = -33,
  Timing33 = -34,
  Timing34 = -35,
  Timing35 = -36,
  Timing36 = -37,
  Timing37 = -38,
  Timing38 = -39,
  Timing39 = -40,
  Timing4 = -5,
  Timing40 = -41,
  Timing41 = -42,
  Timing42 = -43,
  Timing43 = -44,
  Timing44 = -45,
  Timing45 = -46,
  Timing46 = -47,
  Timing47 = -48,
  Timing48 = -49,
  Timing49 = -50,
  Timing5 = -6,
  Timing50 = -51,
  Timing6 = -7,
  Timing7 = -8,
  Timing8 = -9,
  Timing9 = -10,
}

-- @enum TimingMasterWithXAssert
Enums.TimingMasterWithXAssert = {
  CueTiming = -52,
  Timing1 = -2,
  Timing10 = -11,
  Timing11 = -12,
  Timing12 = -13,
  Timing13 = -14,
  Timing14 = -15,
  Timing15 = -16,
  Timing16 = -17,
  Timing17 = -18,
  Timing18 = -19,
  Timing19 = -20,
  Timing2 = -3,
  Timing20 = -21,
  Timing21 = -22,
  Timing22 = -23,
  Timing23 = -24,
  Timing24 = -25,
  Timing25 = -26,
  Timing26 = -27,
  Timing27 = -28,
  Timing28 = -29,
  Timing29 = -30,
  Timing3 = -4,
  Timing30 = -31,
  Timing31 = -32,
  Timing32 = -33,
  Timing33 = -34,
  Timing34 = -35,
  Timing35 = -36,
  Timing36 = -37,
  Timing37 = -38,
  Timing38 = -39,
  Timing39 = -40,
  Timing4 = -5,
  Timing40 = -41,
  Timing41 = -42,
  Timing42 = -43,
  Timing43 = -44,
  Timing44 = -45,
  Timing45 = -46,
  Timing46 = -47,
  Timing47 = -48,
  Timing48 = -49,
  Timing49 = -50,
  Timing5 = -6,
  Timing50 = -51,
  Timing6 = -7,
  Timing7 = -8,
  Timing8 = -9,
  Timing9 = -10,
}

-- @enum ToolbarScrollType
Enums.ToolbarScrollType = {
  Horizontal = 1,
  Vertical = 0,
}

-- @enum TotalReferenceUpdateStatus
Enums.TotalReferenceUpdateStatus = {
  CollectCues = 2,
  CollectPresets = 1,
  GeneratorCleanup = 6,
  Idle = 0,
  RecursionTest = 8,
  SortHandles = 3,
  TagCleanup = 9,
  TrackingConversion = 5,
  UpdatePresets = 4,
  UpdateProgrammer = 7,
  UserCleanup = 10,
  UserConversion = 11,
}

-- @enum TotalUpdateType
Enums.TotalUpdateType = {
  Content = 5,
  None = 0,
  OnlyNames = 3,
  References = 4,
  TagCleanup = 2,
  UserCleanup = 1,
}

-- @enum TrackEditApplyFor
Enums.TrackEditApplyFor = {
  ["All Cues/Parts"] = 2,
  ["All Parts in sel. Cue(s)"] = 1,
  ["Selected Part(s)"] = 0,
}

-- @enum TrackEditGrouping
Enums.TrackEditGrouping = {
  ["Activation Group"] = 2,
  ["All Fixtures"] = 3,
  Feature = 1,
  Selection = 0,
}

-- @enum TrackLayerAuto
Enums.TrackLayerAuto = {
  Absolute = 10,
  Accel = 12,
  Auto = -1,
  Decel = 13,
  Delay = 3,
  Fade = 2,
  GridPos = 7,
  Measure = 8,
  Phase = 6,
  Relative = 11,
  Speed = 4,
  SpeedMaster = 5,
  Transition = 14,
  Width = 15,
}

-- @enum TrackingShield
Enums.TrackingShield = {
  [">0"] = 2,
  DAZ = 2,
  DRZ = 1,
  DimmerAboveZero = 2,
  DimmerRisingFromZero = 1,
  Off = 0,
  ["^0"] = 1,
}

-- @enum TrackingShieldPopup
Enums.TrackingShieldPopup = {
  [">0"] = 2,
  Off = 0,
  ["^0"] = 1,
}

-- @enum TrackpadMode
Enums.TrackpadMode = {
  Mouse = 0,
  ["Pan/Tilt"] = 1,
}

-- @enum TrackpadPTInvertMode
Enums.TrackpadPTInvertMode = {
  Both = 3,
  Off = 0,
  ["Pan Invert"] = 1,
  ["Tilt Invert"] = 2,
}

-- @enum TrackpadPTMode
Enums.TrackpadPTMode = {
  Both = 2,
  ["Pan Only"] = 0,
  ["Tilt Only"] = 1,
}

-- @enum TransitionMode
Enums.TransitionMode = {
  Fast = 3,
  Linear = 0,
  Sinus = 1,
  Slow = 2,
}

-- @enum TransitionType
Enums.TransitionType = {
  Fast = 3,
  ["Fast+"] = 4,
  Linear = 0,
  SCurve = 5,
  Slow = 1,
  ["Slow+"] = 2,
  Swing = 7,
  ["Swing+"] = 8,
  ["Swing-"] = 6,
}

-- @enum TrueFalse
Enums.TrueFalse = {
  False = 0,
  True = 1,
}

-- @enum UndefinedAnchors
Enums.UndefinedAnchors = {
  Undefined = -1,
}

-- @enum UndefinedMax
Enums.UndefinedMax = {
  ["-"] = 32767,
}

-- @enum UndefinedMin
Enums.UndefinedMin = {
  ["-"] = -32768,
}

-- @enum Update
Enums.Update = {
  ["Add New Content"] = 1,
  ["Original Content Only"] = 0,
}

-- @enum UsbProductID
Enums.UsbProductID = {
  ["MA NPU 3 DMX Module"] = 46529,
  ["grandMA3 CommandWing"] = 46536,
  ["grandMA3 Compact"] = 46534,
  ["grandMA3 Compact XT"] = 46535,
  ["grandMA3 Control Module"] = 46530,
  ["grandMA3 DIN-Rail node"] = 46538,
  ["grandMA3 DMX Module"] = 46528,
  ["grandMA3 Fader Module Crossfader (MFX)"] = 46532,
  ["grandMA3 Fader Module Encoder (MFE)"] = 46533,
  ["grandMA3 Fader Wing"] = 46541,
  ["grandMA3 IO Node"] = 46539,
  ["grandMA3 IO Node DIN Rail"] = 46540,
  ["grandMA3 MA-Key (Blank)"] = 46352,
  ["grandMA3 MA-Key (Viz-Key)"] = 46353,
  ["grandMA3 Master Module (MM)"] = 46531,
  ["grandMA3 VR wing"] = 16962,
  ["grandMA3 onPC DMX-key"] = 46543,
  ["grandMA3 onPC DMX-key starter"] = 46544,
  ["grandMA3 xPort node"] = 46537,
}

-- @enum UseLeftOrRight
Enums.UseLeftOrRight = {
  ["Use My"] = 0,
  ["Use Other"] = 1,
}

-- @enum UserRights
Enums.UserRights = {
  Admin = 0,
  None = 6,
  Playback = 4,
  Presets = 3,
  Program = 2,
  Setup = 1,
  View = 5,
}

-- @enum ValueLayer
Enums.ValueLayer = {
  Absolute = 10,
  Delay = 3,
  Fade = 2,
  Relative = 11,
}

-- @enum ValueNone
Enums.ValueNone = {
  None = 2147483647,
}

-- @enum ValueNoneEmpty
Enums.ValueNoneEmpty = {
  [""] = 2147483647,
  Hold = 1107296257,
  None = 2147483647,
  Release = 1107296256,
}

-- @enum ValueReadoutMode
Enums.ValueReadoutMode = {
  Decimal16 = 4,
  Decimal24 = 5,
  Decimal8 = 3,
  Hex16 = 7,
  Hex24 = 8,
  Hex8 = 6,
  Percent = 0,
  PercentFine = 1,
  Physical = 2,
}

-- @enum ValueReadoutModeAuto
Enums.ValueReadoutModeAuto = {
  Auto = -1,
  Decimal16 = 4,
  Decimal24 = 5,
  Decimal8 = 3,
  Hex16 = 7,
  Hex24 = 8,
  Hex8 = 6,
  Natural = 9,
  Percent = 0,
  PercentFine = 1,
  Physical = 2,
}

-- @enum ValueReadoutModeDefault
Enums.ValueReadoutModeDefault = {
  Decimal16 = 4,
  Decimal24 = 5,
  Decimal8 = 3,
  Default = -1,
  Hex16 = 7,
  Hex24 = 8,
  Hex8 = 6,
  Percent = 0,
  PercentFine = 1,
  Physical = 2,
}

-- @enum ValueReadoutModeNatural
Enums.ValueReadoutModeNatural = {
  Decimal16 = 4,
  Decimal24 = 5,
  Decimal8 = 3,
  Hex16 = 7,
  Hex24 = 8,
  Hex8 = 6,
  Natural = 9,
  Percent = 0,
  PercentFine = 1,
  Physical = 2,
}

-- @enum ValueRole
Enums.ValueRole = {
  Default = 0,
  Display = 1,
  DisplayShort = 2,
}

-- @enum VerifyResult
Enums.VerifyResult = {
  Expired = 2,
  NotVerified = 0,
  Valid = 1,
}

-- @enum VideoFileSource
Enums.VideoFileSource = {
  File = 0,
  NDI = 1,
}

-- @enum VideoPoolAction
Enums.VideoPoolAction = {
  ["Go+"] = 3,
  None = 255,
  Off = 11,
  Pause = 10,
  Toggle = 2,
}

-- @enum VirtualKeyCode
Enums.VirtualKeyCode = {
  [""] = 0,
  ALIGN = 51,
  ASSIGN = 63,
  ASTERISK = 133,
  AT = 82,
  BLACK = 102,
  BLIND = 14,
  CHANNEL = 57,
  CLEAR = 87,
  CLONE = 135,
  COPY = 49,
  CUE = 60,
  DEF_GO = 37,
  DEF_GOBACK = 39,
  DEF_PAUSE = 38,
  DELETE = 50,
  DMX = 140,
  DOT = 80,
  DOUBLE_SPEED = 113,
  DOWN = 8,
  EDIT = 62,
  ENCODER_INSIDE1 = 89,
  ENCODER_INSIDE2 = 91,
  ENCODER_INSIDE3 = 93,
  ENCODER_INSIDE4 = 95,
  ENCODER_INSIDE5 = 97,
  ENCODER_OUTSIDE1 = 90,
  ENCODER_OUTSIDE2 = 92,
  ENCODER_OUTSIDE3 = 94,
  ENCODER_OUTSIDE4 = 96,
  ENCODER_OUTSIDE5 = 98,
  ESC = 88,
  EXEC = 35,
  EXECUTOR = 144,
  FADER = 36,
  FIX = 134,
  FIXTURE = 56,
  FLASH = 101,
  FLIP = 145,
  FREEZE = 12,
  FULL = 85,
  GO = 42,
  GOBACK = 41,
  GOBACKFAST = 44,
  GOFAST = 45,
  GOSTEP = 110,
  GOTO = 55,
  GRID = 136,
  GROUP = 58,
  HALF_SPEED = 112,
  HELP = 53,
  HIGHLIGHT = 10,
  IF = 81,
  KILL = 103,
  LAYOUT = 137,
  LEARN = 43,
  LIST = 18,
  LOAD = 108,
  LOWLIGHT = 109,
  MA1 = 1,
  MA2 = 2,
  MACRO = 142,
  MENU = 9,
  MINUS = 79,
  MOVE = 48,
  NEXT = 4,
  NEXT_STEP = 122,
  NEXT_X = 119,
  NEXT_Y = 120,
  NEXT_Z = 121,
  NUM0 = 67,
  NUM1 = 68,
  NUM2 = 69,
  NUM3 = 70,
  NUM4 = 71,
  NUM5 = 72,
  NUM6 = 73,
  NUM7 = 74,
  NUM8 = 75,
  NUM9 = 76,
  OFF = 47,
  ON = 46,
  ONPC_SCREEN2 = 127,
  ONPC_SCREEN3 = 128,
  ONPC_SCREEN4 = 129,
  ONPC_SCREEN5 = 130,
  ONPC_SCREEN6 = 131,
  ONPC_SCREEN7 = 132,
  OOPS = 86,
  PAGE = 143,
  PAGE_DOWN = 17,
  PAGE_UP = 16,
  PAUSE = 40,
  PHASER = 141,
  PLEASE = 84,
  PLUS = 77,
  PRESET = 61,
  PREV = 3,
  PREVIEW = 13,
  PREV_STEP = 118,
  PREV_X = 115,
  PREV_Y = 116,
  PREV_Z = 117,
  RATE1 = 104,
  RECORD = 114,
  RESET_MATRICKS = 126,
  SELECT = 54,
  SELFIX = 7,
  SEQUENCE = 59,
  SET = 5,
  SLASH = 83,
  SOLO = 11,
  STEP = 123,
  STOMP = 52,
  STORE = 66,
  SWAP = 111,
  TEMP = 105,
  THRU = 78,
  TIME = 64,
  TIMECODE = 138,
  TOGGLE = 106,
  TOGGLE_MATRICKS = 125,
  TOGGLE_STEP = 124,
  TOP = 107,
  UNDO = 86,
  UNKNOWN = 0,
  UP = 6,
  UPDATE = 65,
  USER1 = 99,
  USER2 = 100,
  VIEW = 139,
  X1 = 19,
  X10 = 28,
  X11 = 29,
  X12 = 30,
  X13 = 31,
  X14 = 32,
  X15 = 33,
  X16 = 34,
  X2 = 20,
  X3 = 21,
  X4 = 22,
  X5 = 23,
  X6 = 24,
  X7 = 25,
  X8 = 26,
  X9 = 27,
  XKEYS = 15,
}

-- @enum VirtualKeyExecutionType
Enums.VirtualKeyExecutionType = {
  Background = 3,
  ClearImmediate = 2,
  Immediate = 1,
  Normal = 0,
  Release = 4,
}

-- @enum WeekDay
Enums.WeekDay = {
  Friday = 4,
  Monday = 0,
  Saturday = 5,
  Sunday = 6,
  Thursday = 3,
  Tuesday = 1,
  Wednesday = 2,
}

-- @enum WeekDayShort
Enums.WeekDayShort = {
  Fri = 4,
  Mon = 0,
  Sat = 5,
  Sun = 6,
  Thu = 3,
  Tue = 1,
  Wed = 2,
}

-- @enum WeekOfMonth
Enums.WeekOfMonth = {
  ["Fifth Week"] = 4,
  ["First Week"] = 0,
  ["Fourth Week"] = 3,
  ["Second Week"] = 1,
  ["Sixth Week"] = 5,
  ["Third Week"] = 2,
}

-- @enum WheelMode
Enums.WheelMode = {
  Additive = 0,
  Incremental = 1,
  ["Prop.+"] = 2,
  ["Prop.-"] = 3,
}

-- @enum WhiteListPacketIDs
Enums.WhiteListPacketIDs = {
  bootloader_x64 = 1166,
  demoshows = 1158,
  disttestmaster = 1166,
  force_all = 1982,
  force_arm = 1974,
  force_x64 = 1166,
  gdtf_mvr_addon = 1158,
  grandMA2_compat = 1158,
  grandMA2_ffmpeg = 1166,
  grandMA2_manuals = 1158,
  grandMA2_npu_compat = 1166,
  grandMA2_resource = 1166,
  grandMA2_xport_compat = 1974,
  grandMA3_console = 1158,
  grandMA3_fixtures = 1158,
  grandMA3_manuals = 1158,
  grandMA3_net_duct_linux = 1174,
  grandMA3_net_duct_mac = 1174,
  grandMA3_net_duct_windows = 1174,
  grandMA3_pu = 1166,
  grandMA3_res_usb = 1174,
  grandMA3_resource = 1982,
  grandMA3_unittest = 1166,
  grandMA3_viz_key_mac = 1174,
  grandMA3_viz_key_windows = 1174,
  grandMA3_wing = 1974,
  grandMA3_xport = 1974,
  luatest = 1166,
  ndi_addon = 1166,
  onpc_mac = 1158,
  onpc_windows = 1158,
  system_arm = 1974,
  system_x64 = 1166,
  third_party = 1166,
  updater_arm = 1974,
  updater_mac = 1158,
  updater_windows = 1158,
  updater_x64 = 1166,
  utils = 1166,
  web_daemon = 1158,
  worldserver = 1158,
}

-- @enum WhiteListPacketNames
Enums.WhiteListPacketNames = {
  bootloader_x64 = 1166,
  console = 1158,
  demoshows = 1158,
  fixtures = 1158,
  force_all = 1982,
  force_arm = 1974,
  force_x64 = 1166,
  gdtf_mvr_addon = 1158,
  gma2_compat = 1158,
  gma2_ffmpeg = 1166,
  gma2_manuals = 1158,
  gma2_resource = 1166,
  luatest = 1166,
  manuals = 1158,
  ndi_addon = 1166,
  npu_compat = 1166,
  onpc_mac = 1158,
  onpc_windows = 1158,
  pu = 1166,
  resource = 1982,
  resource_usb = 1174,
  system_arm = 1974,
  system_x64 = 1166,
  third_party = 1166,
  unittest = 1166,
  updater_arm = 1974,
  updater_x64 = 1166,
  utils = 1166,
  viz_key = 1174,
  web_daemon = 1158,
  wing = 1974,
  worldserver = 1158,
  xport = 1974,
  xport_compat = 1974,
}

-- @enum WhiteListPacketNamesBefore_1_7
Enums.WhiteListPacketNamesBefore_1_7 = {
  bootloader_x64 = 1166,
  console = 1166,
  demoshows = 1166,
  fixtures = 1166,
  gdtf_mvr_addon = 1166,
  gma2_compat = 1166,
  gma2_ffmpeg = 1166,
  gma2_manuals = 1166,
  gma2_resource = 1166,
  luatest = 1166,
  manuals = 1166,
  ndi_addon = 1166,
  npu_compat = 1166,
  onpc_mac = 1166,
  onpc_windows = 1166,
  pu = 1166,
  resource = 1982,
  resource_usb = 1182,
  system_arm = 1982,
  system_x64 = 1166,
  third_party = 1166,
  unittest = 1166,
  updater_arm = 1982,
  updater_x64 = 1166,
  utils = 1166,
  viz_key = 1182,
  web_daemon = 1166,
  wing = 1982,
  worldserver = 1166,
  xport = 1982,
  xport_compat = 1982,
}

-- @enum WindowCategories
Enums.WindowCategories = {
  All = 6,
  Bars = 10,
  ["Data Pool"] = 3,
  Dynamic = 4,
  ["Feature Group"] = 5,
  ["Info and System"] = 12,
  Media = 1,
  Playback = 11,
  ["Programmer Tools"] = 8,
  Sheets = 7,
  ["Show Data"] = 0,
  ["User Profile"] = 2,
  ["Viewers and Editors"] = 9,
}

-- @enum WindowInfoTab
Enums.WindowInfoTab = {
  ["Depends on"] = 1,
  Note = 2,
  ["Referenced by"] = 0,
}

-- @enum WindowTypes
Enums.WindowTypes = {
  Others = 3,
  Pools = 1,
  Presets = 2,
  Sheets = 0,
}

-- @enum WingID
Enums.WingID = {
  Wing1 = 1,
  Wing2 = 2,
  Wing3 = 3,
  Wing4 = 4,
  Wing5 = 5,
  Wing6 = 6,
}

-- @enum WingType
Enums.WingType = {
  ["grandMA3 Compact"] = 4,
  ["grandMA3 Fader Module Crossfader (MFX)"] = 1,
  ["grandMA3 Fader Module Encoder (MFE)"] = 2,
  ["grandMA3 Master Module (MM)"] = 0,
  ["grandMA3 TEST"] = 3,
}

-- @enum WorldAction
Enums.WorldAction = {
  None = 255,
  SelFix = 16,
  Select = 1,
}

-- @enum XFadeMode
Enums.XFadeMode = {
  AB = 0,
  Split = 1,
}

-- @enum XYZMapping
Enums.XYZMapping = {
  X = 0,
  Y = 1,
  Z = 2,
}

-- @enum Yes
Enums.Yes = {
  [""] = 0,
  ["<Blank>"] = 0,
  Yes = 1,
}

-- @enum YesNo
Enums.YesNo = {
  No = 0,
  Yes = 1,
}

-- @enum ZoomFactor
Enums.ZoomFactor = {
  ["10%"] = -5,
  ["100%"] = 4,
  ["110%"] = 5,
  ["120%"] = 6,
  ["130%"] = 7,
  ["140%"] = 8,
  ["150%"] = 9,
  ["160%"] = 10,
  ["170%"] = 11,
  ["180%"] = 12,
  ["190%"] = 13,
  ["20%"] = -4,
  ["200%"] = 14,
  ["210%"] = 15,
  ["220%"] = 16,
  ["230%"] = 17,
  ["240%"] = 18,
  ["250%"] = 19,
  ["260%"] = 20,
  ["270%"] = 21,
  ["280%"] = 22,
  ["290%"] = 23,
  ["30%"] = -3,
  ["300%"] = 24,
  ["40%"] = -2,
  ["50%"] = -1,
  ["60%"] = 0,
  ["70%"] = 1,
  ["80%"] = 2,
  ["90%"] = 3,
}

