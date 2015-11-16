--
-- Created by IntelliJ IDEA.
-- User: Mikael
-- Date: 11/16/2015
-- Time: 1:41 PM
-- To change this template use File | Settings | File Templates.
--

local Object = require("toolkit.Object")
local DrawBuildArea = extends(Object)

function DrawBuildArea:new()
    local o = DrawBuildArea:super()
    return DrawBuildArea:init(o)
end

------------------------------------
-- Draw all empty command slots for procedure/loop.
-- @param maxCommands. How many commands slots that are available to the player.
-- @author Mikael Ögren
-------------------------------------
function DrawBuildArea:EmptySlots(maxCommands)
    for i=1, maxCommands do
            self:SingleEmptySlot(i)
    end
end

-------------------------------------
-- Draws a single empty command slot
-- @param boxNmb. The number of the box being drawn.
-- @author Mikael Ögren
-------------------------------------
function DrawBuildArea:SingleEmptySlot(boxNmb)
    if boxNmb <= 8 then
        screen:clear({r = 235, g = 235, b = 235 }, { x = screen:get_width()*(0.535 + (boxNmb-1)*0.055), y = screen:get_height()*0.74, w = screen:get_width()*0.045, h = screen:get_height()*0.075 }) --r = 78, g = 113, b = 215
    else
        screen:clear({r = 235, g = 235, b = 235 }, { x = screen:get_width()*(0.535 + (boxNmb-9)*0.055), y = screen:get_height()*0.84, w = screen:get_width()*0.045, h = screen:get_height()*0.075 })
    end
end

-------------------------------------
-- Draws the icons for the bottom right menu.
-- @param queue. The queue of commands. An array of strings.
-- @author Mikael Ögren
-------------------------------------
function DrawBuildArea:Icons(queue, images)
    for i = 1, #queue do
        if i <= 8 then
            screen:clear({r = 255, g = 255, b = 251 }, { x = screen:get_width()*(0.538 + (i-1)*0.055), y = screen:get_height()*0.7435, w = screen:get_width()*0.039, h = screen:get_height()*0.068 })
            screen:copyfrom(images[queue[i]], nil, { x = screen:get_width()*(0.538 + (i-1)*0.055), y = screen:get_height()*0.744, w=screen:get_width()*0.038, h = screen:get_height()*0.066 }, true)
        else
            screen:clear({r = 255, g = 255, b = 251 }, { x = screen:get_width()*(0.538 + (i-9)*0.055), y = screen:get_height()*0.8435, w = screen:get_width()*0.039, h = screen:get_height()*0.068 })
            screen:copyfrom(images[queue[i]], nil, { x = screen:get_width()*(0.538 + (i-9)*0.055), y = screen:get_height()*0.844, w=screen:get_width()*0.038, h = screen:get_height()*0.066 }, true)
        end
    end
end

-------------------------------------
-- Draws headline dependent of if loop or any of the procedures are shown.
-- @author Mikael Ögren
-------------------------------------
function DrawBuildArea:HeadLine(images, buildType)
    if buildType == "loop" then
        screen:clear({r = 255, g = 255, b = 251 }, { x = screen:get_width()*(0.87), y = screen:get_height()*0.66, w = screen:get_width()*0.080, h = screen:get_height()*0.060 })
        screen:clear({r = 255, g = 255, b = 251 }, { x = screen:get_width()*(0.55), y = screen:get_height()*0.66, w = screen:get_width()*0.080, h = screen:get_height()*0.060 })
        screen:copyfrom(images["loop"], nil, { x = screen:get_width()*(0.57), y = screen:get_height()*0.655, w=screen:get_width()*0.04, h = screen:get_height()*0.070 }, true)
    elseif buildType == "P1" then
        screen:clear({r = 255, g = 255, b = 251 }, { x = screen:get_width()*(0.55), y = screen:get_height()*0.66, w = screen:get_width()*0.080, h = screen:get_height()*0.060 })
        screen:copyfrom(images["P1"], nil, { x = screen:get_width()*(0.57), y = screen:get_height()*0.655, w=screen:get_width()*0.04, h = screen:get_height()*0.070 }, true)
    elseif buildType == "P2" then
        screen:clear({r = 255, g = 255, b = 251 }, { x = screen:get_width()*(0.55), y = screen:get_height()*0.66, w = screen:get_width()*0.080, h = screen:get_height()*0.060 })
        screen:copyfrom(images["P2"], nil, { x = screen:get_width()*(0.57), y = screen:get_height()*0.655, w=screen:get_width()*0.04, h = screen:get_height()*0.070 }, true)
    end
end



return DrawBuildArea