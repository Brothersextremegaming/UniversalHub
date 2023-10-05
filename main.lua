local Atlas = loadstring(game:HttpGet("https://siegehub.net/Atlas.lua"))()

local UI = Atlas.new({
    Name = "Universal Hub!"; -- script name (required)
    ConfigFolder = "MyScript"; -- folder name to save configs to, set this to nil if you want to disable configs saving
    Credit = "Made By Universal Hub"; -- text to appear if player presses the "i" button on their UI (optional)
    Color = Color3.fromRGB(255,0,0); -- theme color for UI (required)
    Bind = "LeftControl"; -- keybind for toggling the UI, must be a valid KeyCode name
    -- Atlas Loader:
    UseLoader = true; -- whether to use Atlas Loader or not, if set to false than CheckKey and Discord are ignored
    FullName = "Universal Hub"; -- works if UseLoader is set to true, can be same as Name argument, shown on loader frame
    CheckKey = function(inputtedKey) -- works if UseLoader is set to true, where inputtedKey is the key inputted by the player
        return inputtedKey=="629257079441"
    end;
    Discord = "https://discord.gg/8Cr9ax7D"; -- works if UseLoader is set to true, will be copied to clipboard if player presses "Copy Invite" button
})

local MyPage = UI:CreatePage("Brookhaven")
local MySection = MyPage:CreateSection("Choose!")


MySection:CreateButton({
    Name = "Admin Scripts"; -- required: name of element
    Callback = function()  -- required: function to be called when button is pressed
        print('Working!!')
    end
})