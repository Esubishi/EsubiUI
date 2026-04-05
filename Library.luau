--BaseGui Setup
local CoreGUI = game.CoreGui
local BaseGUI = Instance.new("ScreenGui",CoreGUI)
BaseGUI.Name = "ESUBI_GUI"

local Library = {}

Library.Console = {}
Library.Errors = {}


Library.PushError = function(err, array)
    local message = "ERROR: "..err
    table.insert(array,message)
end

Library.CreateTextLabel = function(config)
    local TextLabel = Instance.new("TextLabel")
    if not config.Parent then
        TextLabel.Parent = CoreGUI
    end

    TextLabel.Parent = config.Parent

    if not config.Size then
        TextLabel.Size = UDim2.new(1,0,0.2,0)
    end
    TextLabel.Size = config.Size

    if not config.Text then
        TextLabel.Text = ""
    end
    TextLabel.Text = config.Text



    return TextLabel
end

Library.Console.CreateConsole = function(config)   
    local ConsoleScrollingFrame = Instance.new("ScrollingFrame")
    if not config.Parent then
        ConsoleScrollingFrame.Parent = CoreGUI
    end


    ConsoleScrollingFrame.Parent = config.Parent

end


Library.CreateFrame = function(config)
    local Frame = Instance.new("Frame")
    
    if not config.Parent then
        Frame.Parent = CoreGUI
    end
    Frame.Parent = config.Parent

end


return Library
