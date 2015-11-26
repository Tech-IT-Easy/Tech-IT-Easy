--
-- Created by IntelliJ IDEA.
-- User: Marcus
-- Date: 2015-11-26
-- Time: 15:42
-- To change this template use File | Settings | File Templates.
--

function SelectLevel:new()
  local o = SelectLevel:super()
  return SelectLevel:init(o)
end

-------------------------------------
-- Update menu when navigated in
-- @author Erik; Marcus
-------------------------------------
function SelectLevel:update()
  if self.image1 then
    self:inactive(self.lastpos)
    self:active(self.pos)
  end
end

-------------------------------------
-- Handles the input from the user
-- @param event The key pressed by the user
-- @return menu:String to navigate to or empty string
-- @author Erik; Marcus; Adam
-------------------------------------
function SelectLevel:handleinput(event)
  collectgarbage()
  self.lastpos = self.pos
  if event.key == Event.KEY_RIGHT and self.pos < #self.myimages then
    self.pos = self.pos + 1
  elseif event.key == Event.KEY_LEFT and self.pos > 1 then
    self.pos = self.pos - 1
  elseif (event.key == Event.KEY_OK) then

    table.insert(profiles, Profile:new(CreateProfile.profilename,self.pos))
    self.image4 = self.myimages[self.pos]
    table.insert(images, self.image4)

    collectgarbage()
    return { "profilesel", " " }
  elseif (event.key == Event.KEY_BACK) then
    CreateProfile.profilename = ""
    return { " " }
  end
  return {" "}
end

-------------------------------------
-- Loads the menu
-- @param input:String The username
-- @author Erik; Marcus
-------------------------------------
function SelectLevel:loadview(input)
  self.pos = 1
  self.lastpos = 1
  self.username = input
  self.image1 = gfx.loadpng('data/avatar_down.png')
  self.image2 = gfx.loadpng('data/avatar_right.png')
  self.image3 = gfx.loadpng('data/avatar_up.png')
  self.myimages = { self.image1, self.image2, self.image3 }
  self:renderui()
end

-------------------------------------
-- Prints a button as active
-- @param x1 Position of button
-- @author Erik
-------------------------------------
function SelectLevel:active(x1)
  screen:clear({ g = 255, r = 255, b = 255 }, { x = screen:get_width() * 0.08 + (screen:get_width() * 0.22) * (x1 - 1), y = (screen:get_height() * 0.28), w = screen:get_height() * 0.25, h = screen:get_height() * 0.25 })
  screen:copyfrom(self.myimages[x1], nil, { x = (prof_sel_hspacing * x1) + prof_sel_itemwidth * (x1 - 1)*0.82 + screen:get_width() * 0.04, y = prof_sel_itemy - screen:get_height() * 0.035, w = self.image1:get_width() * 0.6, h = self.image1:get_height() * 0.6 }, true)

end

-------------------------------------
-- Prints an inactive button.
-- @param x1. Which position to print button at.
-- @author Erik
-------------------------------------
function SelectLevel:inactive(x1)
  screen:clear({ g = 228, r = 187, b = 235 }, { x = screen:get_width() * 0.08 + (screen:get_width() * 0.22) * (x1 - 1), y = (screen:get_height() * 0.28), w = screen:get_height() * 0.25, h = screen:get_height() * 0.25 })
  screen:copyfrom(self.myimages[x1], nil, { x = (prof_sel_hspacing * x1) + prof_sel_itemwidth * (x1 - 1)*0.82 + screen:get_width() * 0.04, y = prof_sel_itemy - screen:get_height() * 0.035, w = self.image1:get_width() * 0.6, h = self.image1:get_height() * 0.6 }, true)

end

-------------------------------------
-- Loads initial screen of menu
-- @author Erik; Marcus
-------------------------------------
function SelectLevel:renderui()
  create_prof_appname:draw_over_surface(screen, "TEACH IT EASY")
  create_prof_pagename:draw_over_surface(screen, "CHOOSE YOUR AVATAR")

  self:active(1)
  for i = 2, #self.myimages, 1 do
    self:inactive(i)
  end
end


return SelectLevel

