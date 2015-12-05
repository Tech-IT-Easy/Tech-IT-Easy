-- Created by chuck, now it doesn't affect anything.
-- Don't consider this file, just keep it.

local UIWindowView = require("toolkit.UIKit.UIWindowView")
local List = require("toolkit.Utils.List")
local UIPanelView = require("toolkit.UIKit.UIPanelView")
local UIButtonView = require("toolkit.UIKit.UIButtonView")
local UIImage = require("toolkit.UIKit.UIImage")
local UILabel = require("toolkit.UIKit.UILabel")
local UILabelView = require("toolkit.UIKit.UILabelView")
local Event = require("toolkit.Event")
require("Config/theme")

-- This is a instance window, which is created for using when required

local UIAlertWindowView = extends(UIWindowView)

function UIAlertWindowView:new(args)
  local window = UIAlertWindowView:super{title=args.title,frame={x=0,y=0,w=400,h=200},backgroundColor=COLOR.RED}
  
  -- create member UIView
  local titleLabel = UILabel:new{text=args.title,color=COLOR.RED,size=20,font=UILabel.FONT_GROBOLD}
  window.titleLabelView = UILabelView:new{frame={x=0,y=0,w=200,h=80},label=titleLabel}
  
  local OKLabel = UILabel:new{text=args.OK or "OK",color=COLOR.DARK_GRAY,size=20,font=UILabel.FONT_GROBOLD}
  window.OKButton = UIButtonView:new{identity="OK",enableFocus = true,frame={x=120,y=1,w=80,h=30},borderWidth = 2,label=OKLabel,labelPosition={x=10,y=5}}
  local CancelLabel = UILabel:new{text=args.Cancel or "Cancel",color=COLOR.DARK_GRAY,size=20,font=UILabel.FONT_GROBOLD}
  window.CancelButton = UIButtonView:new{identity="Cancel",enableFocus = true,frame={x=20,y=1,w=80,h=30},borderWidth = 2,label = CancelLabel,labelPosition={x=10,y=5}}
  
  -- create layout view to organization them
  local titlePanel = UIPanelView:new{frame={x=0, y = 0, w=400, h = 150},backgroundColor=COLOR.BUTTON_BACKGROUND}
  titlePanel:addChildView(window.titleLabelView)
  window:addChildView(titlePanel)
  
  local buttonPanel = UIPanelView:new{frame={x=0, y = 150, w=400, h = 50}}
  buttonPanel:addChildView(window.OKButton)
  buttonPanel:addChildView(window.CancelButton)
  window:addChildView(buttonPanel)
  
  -- set properties
  window:setFocusWeight{view=window.OKButton,hWeight=2,vWeight=20}
  window:setFocusWeight{view=window.CancelButton,hWeight=1,vWeight=20}
  window:setFocusView(window.OKButton)
  
  --window:setShortcutKey(window.button1,Event.KEY_ONE)
  --window:setShortcutKey(window.button2,Event.KEY_TWO)
  
  return UIAlertWindowView:init(window)
end
return UIAlertWindowView
