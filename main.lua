display.setStatusBar(display.HiddenStatusBar)

local widget = require('widget')
local flashlight = require('plugin.flashlight')

--[[
flashlight.on()

Turn on the flashlight.


flashlight.off()

Turn off the flashlight.

]]

display.setDefault('background', 1)

local x, y = display.contentCenterX, display.contentCenterY
local w, h = display.contentWidth * 0.8, 50

widget.newButton{
    x = x, y = y - 50,
    width = w, height = h,
    label = 'Flashlight ON',
    onRelease = function()
        flashlight.on()
    end}

widget.newButton{
    x = x, y = y + 50,
    width = w, height = h,
    label = 'Flashlight OFF',
    onRelease = function()
        flashlight.off()
    end}