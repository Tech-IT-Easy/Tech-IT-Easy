if ADConfig.isSimulator then
  script_path = ""
else
  script_path = sys.root_path()
end
  -- varibles for placing
  prof_sel_itemy = screen:get_height() * 0.32
  prof_sel_itemheight = screen:get_height() * 0.35
  prof_sel_itemwidth = screen:get_width() * 0.19
  prof_sel_activeheight = prof_sel_itemheight * 0.96
  prof_sel_activey = prof_sel_itemy + ((prof_sel_itemheight - prof_sel_activeheight) / 2)
  prof_sel_activewidth = prof_sel_itemwidth * 0.96
  prof_sel_hspacing = screen:get_width() * 0.048
  prof_sel_addprofiley = screen:get_height() * 0.84
  prof_sel_addprofileheight = screen:get_height() * 0.16
  prof_sel_activeaddprofileheight = prof_sel_addprofileheight * 0.96
  prof_sel_activeaddprofiley = prof_sel_addprofiley + (prof_sel_addprofileheight - prof_sel_activeaddprofileheight)

  main_menu_appnamebaseline = screen:get_height() * 0.08
  main_menu_pagenamebaseline = screen:get_height() * 0.15
  main_menu_usernamebaseline = screen:get_height() * 0.125


  games_appnamebaseline = screen:get_height() * 0.08
  games_pagenamebaseline = screen:get_height() * 0.15
  games_usernamebaseline = screen:get_height() * 0.125
  
  create_prof_appnamebaseline = screen:get_height() * 0.08
  create_prof_pagenamebaseline = screen:get_height() * 0.15
  create_prof_itemy = screen:get_height() * 0.6
  create_prof_itemheight = screen:get_height() * 0.07
  create_prof_itemwidth = screen:get_width() * 0.045
  create_prof_activeheight = create_prof_itemheight * 0.48
  create_prof_activey = create_prof_itemy + ((create_prof_itemheight - create_prof_activeheight) / 2)
  create_prof_activewidth = create_prof_itemwidth * 0.48
  create_prof_hspacing = screen:get_width() * 0.048

  --General fonts
  --main_menu_pagename = sys.new_freetype({g=255, r=255, b=255,a=255}, screen:get_height()*0.07, {x= screen:get_width()*0.375, y=main_menu_pagenamebaseline}, script_path..'data/Chalkduster.ttf')

-- profile selection fonts
  prof_sel_appname = sys.new_freetype({g=255, r=255, b=255,a=255}, screen:get_height()*0.04, {x= screen:get_width()*0.43, y=main_menu_appnamebaseline}, script_path..'data/BlackoutMidnight.ttf')
  prof_sel_pagename = sys.new_freetype({ g = 255, r = 255, b = 255, a=255 }, screen:get_height() * 0.07, { x = screen:get_width() * 0.24, y = main_menu_pagenamebaseline }, script_path .. 'data/Chalkduster.ttf')
  prof_sel_addprofileplus = sys.new_freetype({ g = 131, r = 0, b = 143,a=255 }, screen:get_height() * 0.075, { x = screen:get_width() * 0.35, y = screen:get_height() * 0.883 }, script_path .. 'data/BlackoutMidnight.ttf')
  prof_sel_addprofilename = sys.new_freetype({ g = 131, r = 0, b = 143,a=255 }, screen:get_height() * 0.05, { x = screen:get_width() * 0.38, y = screen:get_height() * 0.88 }, script_path .. 'data/condensed.ttf')
  prof_sel_username1 = sys.new_freetype({ g = 255, r = 255, b = 255,a=255 }, screen:get_height() * 0.05, { x = (prof_sel_hspacing), y = prof_sel_itemy + prof_sel_itemheight * 1.05 }, script_path .. 'data/Chalkduster.ttf')
  prof_sel_username2 = sys.new_freetype({ g = 255, r = 255, b = 255,a=255 }, screen:get_height() * 0.05, { x = (prof_sel_hspacing * 2) + prof_sel_itemwidth, y = prof_sel_itemy + prof_sel_itemheight * 1.05 }, script_path .. 'data/Chalkduster.ttf')
  prof_sel_username3 = sys.new_freetype({ g = 255, r = 255, b = 255,a=255 }, screen:get_height() * 0.05, { x = (prof_sel_hspacing * 3) + prof_sel_itemwidth * (2), y = prof_sel_itemy + prof_sel_itemheight * 1.05 }, script_path .. 'data/Chalkduster.ttf')
  prof_sel_username4 = sys.new_freetype({ g = 255, r = 255, b = 255,a=255 }, screen:get_height() * 0.05, { x = (prof_sel_hspacing * 4) + prof_sel_itemwidth * (3), y = prof_sel_itemy + prof_sel_itemheight * 1.05 }, script_path .. 'data/Chalkduster.ttf')
  prof_sel_username5 = sys.new_freetype({ g = 255, r = 255, b = 255,a=255 }, screen:get_height() * 0.05, { x = (prof_sel_hspacing * 5) + prof_sel_itemwidth * (4), y = prof_sel_itemy + prof_sel_itemheight * 1.05 }, script_path .. 'data/Chalkduster.ttf')
  
  prof_sel_usernamefonts = {prof_sel_username1, prof_sel_username2, prof_sel_username3, prof_sel_username4, prof_sel_username5 }

  --main menu fonts
  main_menu_appname = sys.new_freetype({g=255, r=255, b=255,a=255}, screen:get_height()*0.04, {x= screen:get_width()*0.43, y=main_menu_appnamebaseline}, script_path..'data/BlackoutMidnight.ttf')
  main_menu_pagename = sys.new_freetype({g=255, r=255, b=255,a=255}, screen:get_height()*0.07, {x= screen:get_width()*0.375, y=main_menu_pagenamebaseline}, script_path..'data/Chalkduster.ttf')
  main_menu_username = sys.new_freetype({g=255, r=255, b=255,a=255}, screen:get_height()*0.035, {x= screen:get_width()*0.15, y=main_menu_usernamebaseline}, script_path..'data/GROBOLD.ttf')
  main_menu_games = sys.new_freetype({g=131, r=0, b=143,a=255}, screen:get_height()*0.1, {x= screen:get_width()*0.15, y=(screen:get_height()*0.75)}, script_path..'data/condensed.ttf')
  main_menu_backbutton = sys.new_freetype({g=0, r=0, b=0,a=255}, screen:get_height()*0.03, { x=screen:get_width()*0.803 + (screen:get_width()*0.803*0.009), y=screen:get_height()*0.08046}, script_path..'data/condensed.ttf')
  main_menu_backtext = sys.new_freetype({g=255, r=255, b=255,a=255}, screen:get_height()*0.03, { x=screen:get_width()*0.765, y=screen:get_height()*0.125}, script_path..'data/GROBOLD.ttf')
  main_menu_sidebuttontext1 = sys.new_freetype({ g = 131, r = 0, b = 143,a=255}, screen:get_height() * 0.07, { x = screen:get_width()*0.65, y = (screen:get_height()*0.36)}, script_path .. 'data/condensed.ttf')
  main_menu_sidebuttontext2 = sys.new_freetype({ g = 131, r = 0, b = 143,a=255}, screen:get_height() * 0.07, { x = screen:get_width()*0.65, y = (screen:get_height()*0.36) + ((screen:get_height()*0.2125)*1) }, script_path .. 'data/condensed.ttf')
  main_menu_sidebuttontext3 = sys.new_freetype({ g = 131, r = 0, b = 143,a=255}, screen:get_height() * 0.07, { x = screen:get_width()*0.65, y = (screen:get_height()*0.36) + ((screen:get_height()*0.2125)*2) }, script_path .. 'data/condensed.ttf')

  
  --Game menu fonts

  games_appname = sys.new_freetype({g=255, r=255, b=255, a=255}, screen:get_height()*0.04, {x= screen:get_width()*0.43, y=games_appnamebaseline}, script_path..'data/BlackoutMidnight.ttf')
  games_pagename = sys.new_freetype({g=255, r=255, b=255, a=255}, screen:get_height()*0.07, {x= screen:get_width()*0.33, y=games_pagenamebaseline}, script_path..'data/Chalkduster.ttf')
  games_username = sys.new_freetype({g=255, r=255, b=255, a=255}, screen:get_height()*0.035, {x= screen:get_width()*0.15, y=games_usernamebaseline}, script_path..'data/GROBOLD.ttf')
  games_backbutton = sys.new_freetype({g=0, r=0, b=0, a=255}, screen:get_height()*0.03, { x=screen:get_width()*0.8103, y=screen:get_height()*0.08046}, script_path..'data/condensed.ttf')
  games_backtext = sys.new_freetype({g=255, r=255, b=255, a=255}, screen:get_height()*0.03, { x=screen:get_width()*0.791, y=screen:get_height()*0.125}, script_path..'data/GROBOLD.ttf')

  games_gamename1 = sys.new_freetype({ r = 78, g = 78, b = 78 ,a=255}, screen:get_height() * 0.05, { x = screen:get_width() * 0.095, y = (screen:get_height() * 0.28) + (screen:get_height() * 0.28) * 1.1, w = screen:get_width() * 0.18, h = screen:get_height() * 0.45 }, script_path .. 'data/condensed.ttf')
  games_trophies1 = sys.new_freetype({ r = 139, g = 139, b = 139, a=255}, screen:get_height() * 0.04, { x = screen:get_width() * 0.095, y = (screen:get_height() * 0.28) + (screen:get_height() * 0.28) * 1.3, w = screen:get_width() * 0.18, h = screen:get_height() * 0.45 }, script_path .. 'data/condensed.ttf')

  games_gamename2 = sys.new_freetype({ r = 78, g = 78, b = 78, a=255}, screen:get_height() * 0.05, { x = screen:get_width() * 0.095 + (screen:get_width() * 0.22), y = (screen:get_height() * 0.28) + (screen:get_height() * 0.28) * 1.1, w = screen:get_width() * 0.18, h = screen:get_height() * 0.45 }, script_path .. 'data/condensed.ttf')
  games_trophies2 = sys.new_freetype({ r = 139, g = 139, b = 139, a=255}, screen:get_height() * 0.04, { x = screen:get_width() * 0.095 + (screen:get_width() * 0.22), y = (screen:get_height() * 0.28) + (screen:get_height() * 0.28) * 1.3, w = screen:get_width() * 0.18, h = screen:get_height() * 0.45 }, script_path .. 'data/condensed.ttf')

  games_gamename3 = sys.new_freetype({ r = 78, g = 78, b = 78, a=255}, screen:get_height() * 0.05, { x = screen:get_width() * 0.095 + (screen:get_width() * 0.22) * 2, y = (screen:get_height() * 0.28) + (screen:get_height() * 0.28) * 1.1, w = screen:get_width() * 0.18, h = screen:get_height() * 0.45 }, script_path .. 'data/condensed.ttf')
  games_trophies3 = sys.new_freetype({ r = 139, g = 139, b = 139, a=255}, screen:get_height() * 0.04, { x = screen:get_width() * 0.095 + (screen:get_width() * 0.22) * 2, y = (screen:get_height() * 0.28) + (screen:get_height() * 0.28) * 1.3, w = screen:get_width() * 0.18, h = screen:get_height() * 0.45 }, script_path .. 'data/condensed.ttf')

  games_gamename4 = sys.new_freetype({ r = 78, g = 78, b = 78, a=255}, screen:get_height() * 0.05, { x = screen:get_width() * 0.095 + (screen:get_width() * 0.22) * 3, y = (screen:get_height() * 0.28) + (screen:get_height() * 0.28) * 1.1, w = screen:get_width() * 0.18, h = screen:get_height() * 0.45 }, script_path .. 'data/condensed.ttf')
  games_trophies4 = sys.new_freetype({ r = 139, g = 139, b = 139, a=255}, screen:get_height() * 0.04, { x = screen:get_width() * 0.095 + (screen:get_width() * 0.22) * 3, y = (screen:get_height() * 0.28) + (screen:get_height() * 0.28) * 1.3, w = screen:get_width() * 0.18, h = screen:get_height() * 0.45 }, script_path .. 'data/condensed.ttf')

  games_gamesfonts = {games_gamename1, games_gamename2, games_gamename3,games_gamename4}
  games_trophiesfonts = {games_trophies1, games_trophies2, games_trophies3, games_trophies4}

  
  --Create profile fonts
  create_prof_appname = sys.new_freetype({g=255, r=255, b=255, a=255}, screen:get_height()*0.04, {x= screen:get_width()*0.43, y=create_prof_appnamebaseline}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_pagename = sys.new_freetype({g=255, r=255, b=255, a=255}, screen:get_height()*0.07, {x= screen:get_width()*0.275, y=create_prof_pagenamebaseline}, script_path..'data/Chalkduster.ttf')
  
  create_prof_keyletter1 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing) + screen:get_width() * 0.025, y=create_prof_itemy + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter2 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 2) + create_prof_itemwidth + screen:get_width() * 0.025, y=create_prof_itemy + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter3 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 3) + create_prof_itemwidth * 2 + screen:get_width() * 0.025, y=create_prof_itemy + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter4 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 4) + create_prof_itemwidth * 3 + screen:get_width() * 0.025, y=create_prof_itemy + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter5 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 5) + create_prof_itemwidth * 4 + screen:get_width() * 0.025, y=create_prof_itemy + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter6 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 6) + create_prof_itemwidth * 5 + screen:get_width() * 0.025, y=create_prof_itemy + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter7 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 7) + create_prof_itemwidth * 6 + screen:get_width() * 0.025, y=create_prof_itemy + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter8 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 8) + create_prof_itemwidth * 7 + screen:get_width() * 0.025, y=create_prof_itemy + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter9 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 9) + create_prof_itemwidth * 8 + screen:get_width() * 0.025, y=create_prof_itemy + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter10 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 10) + create_prof_itemwidth * 9 + screen:get_width() * 0.025, y=create_prof_itemy + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter11 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 1) + create_prof_itemwidth * 0 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter12 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 2) + create_prof_itemwidth * 1 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter13 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 3) + create_prof_itemwidth * 2 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter14 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 4) + create_prof_itemwidth * 3 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter15 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 5) + create_prof_itemwidth * 4 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter16 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 6) + create_prof_itemwidth * 5 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter17 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 7) + create_prof_itemwidth * 6 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter18 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 8) + create_prof_itemwidth * 7 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter19 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 9) + create_prof_itemwidth * 8 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter20 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 10) + create_prof_itemwidth * 9 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')  
  create_prof_keyletter21 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 1) + create_prof_itemwidth * 0 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) * 2 + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter22 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 2) + create_prof_itemwidth * 1 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) * 2 + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter23 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 3) + create_prof_itemwidth * 2 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) * 2 + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')
  create_prof_keyletter24 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 4) + create_prof_itemwidth * 3 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) * 2 + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')  
  create_prof_keyletter25 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 5) + create_prof_itemwidth * 4 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) * 2 + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')  
  create_prof_keyletter26 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 6) + create_prof_itemwidth * 5 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) * 2 + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')  
  create_prof_keyletter27 = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.04, {x = (create_prof_hspacing * 7) + create_prof_itemwidth * 6 + screen:get_width() * 0.025, y=create_prof_itemy + create_prof_itemheight * (1 + 0.5) * 2 + screen:get_height() * 0.01}, script_path..'data/BlackoutMidnight.ttf')  
  
  
  create_prof_keyletters = {create_prof_keyletter1, create_prof_keyletter2, create_prof_keyletter3, create_prof_keyletter4, create_prof_keyletter5, create_prof_keyletter6, create_prof_keyletter7, create_prof_keyletter8, create_prof_keyletter9, create_prof_keyletter10, create_prof_keyletter11, create_prof_keyletter12, create_prof_keyletter13, create_prof_keyletter14, create_prof_keyletter15, create_prof_keyletter16, create_prof_keyletter17, create_prof_keyletter18, create_prof_keyletter19, create_prof_keyletter20, create_prof_keyletter21, create_prof_keyletter22, create_prof_keyletter23, create_prof_keyletter24, create_prof_keyletter25, create_prof_keyletter26, create_prof_keyletter27}
  
  create_prof_typed = sys.new_freetype({g=131, r=0, b=143, a=255}, screen:get_height()*0.1 , {x = screen:get_width() * 0.11, y=screen:get_height() * 0.3 * 1.2}, script_path..'data/BlackoutMidnight.ttf')
  