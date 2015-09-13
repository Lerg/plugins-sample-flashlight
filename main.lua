display.setStatusBar(display.HiddenStatusBar)

local widget = require('widget')
local flashlight = require('plugin.flashlight')

--[[
flashlight.on()

Turn on the flashlight.

Returns boolean, true on success.


flashlight.off(duration)

Turn off the flashlight.

Returns boolean, true on success.

]]

display.setDefault('background', 1)

local x, y = display.contentCenterX, display.contentCenterY
local w, h = display.contentWidth * 0.8, 50

local function noFlash()
    native.showAlert('Flashlight', 'Flash is not available.', {'OK'})
end

widget.newButton{
    x = x, y = y - 50,
    width = w, height = h,
    label = 'Flashlight ON',
    onRelease = function()
        local success = flashlight.on()
        if not success then
            noFlash()
        end
    end}

widget.newButton{
    x = x, y = y + 50,
    width = w, height = h,
    label = 'Flashlight OFF',
    onRelease = function()
        local success = flashlight.off()
        if not success then
            noFlash()
        end
    end}