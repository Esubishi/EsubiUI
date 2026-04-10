local Box_Library = {}

Box_Library.CreateBOXFolder = function()
  local BoxESPParent = Instance.new("Folder", game.ReplicatedStorage)
  BoxESPParent.Name = "ESUBI_BOX"
  return BoxESPParent
end

Box_Library.CreateBillboardGui = function(parent)
    local BillBoardGUI = Instance.new("BillboardGui", parent)
    BillBoardGUI.Name = "BOX_ESP"
    BillBoardGUI.Size = UDim2.new(4, 0, 6, 0)
    BillBoardGUI.AlwaysOnTop = true
    BillBoardGUI.LightInfluence = 0
    BillBoardGUI.DistanceLowerLimit = 9999
    return BillBoardGUI
end

Box_Library.CreateFrameUIStroke= function(parent,color)
  local UIStroke = Instance.new("UIStroke", parent)
  UIStroke.Transparency = 0
  UIStroke.LineJoinMode = Enum.LineJoinMode.Miter
  if not color then
    UIStroke.Color = Color3.fromRGB(0, 0, 0)
  else 
    UIStroke.Color = color
  end
  UIStroke.StrokeSizingMode = Enum.StrokeSizingMode.FixedSize
  return UIStroke
end

Box_Library.CreateFrame = function(parent)
  local Frame = Instance.new("Frame",parent)
  Frame.BackgroundTransparency = 1
  Frame.Size = UDim2.new(1, 0, 1, 0)
  local UIstroke = Box_Library.CreateFrameUIStroke(Frame, nil)
  return Frame
end

Box_Library.CreateNameLabel = function(parent)
  local NameLabel = Instance.new("TextLabel", parent)
  NameLabel.BackgroundTransparency = 1
  NameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
  NameLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
  NameLabel.TextStrokeTransparency = 0
  NameLabel.BorderSizePixel = 0
  NameLabel.TextScaled = true
  NameLabel.Size = UDim2.new(1, 0, 0.2, 0)
  NameLabel.Name = "NameLabel"
  NameLabel.Position = UDim2.new(0,0,1,5)
  return NameLabel
end
return Box_Library
