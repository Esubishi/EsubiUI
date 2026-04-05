--BaseGui Setup
local CoreGUI = game.CoreGui
local BaseGUI = Instance.new("ScreenGui",CoreGUI)
BaseGUI.Name = "ESUBI_GUI"

local Library = {}

Library.Console = {}
Library.Errors = {} 
Library.Warnings = {}


Library.PushError = function(err)
    local message = "ERROR: "..err
    table.insert(Library.Errors,message)
end

Library.PushWarning = function(warning)
    local message = "Warning: "..warning
    table.insert(Library.Warnings,message)
end

Library.CreateTextLabel = function(config)
    local TextLabel = Instance.new("TextLabel")
    if not config then
        Library.PushError("Expected config, but recevied nil")
        config =  {}
    end


 --[[   TextLabel.Parent = config.Parent or CoreGUI
    TextLabel.Size = config.Size or UDim2.new(1,0,0.2,0)
    TextLabel.Text = config.Text or ""
]]--
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
