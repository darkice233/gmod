include('shared.lua')

function ENT:Draw()
    self:DrawModel()
end

local mmats = {}
mmats.general = Material("nsrp/bg_monolit.png")

local function GeneralPainting(s, w, h)
	surface.SetDrawColor(color_white)
	surface.SetMaterial(mmats.general)
	surface.DrawTexturedRect(0, 0, w, h)
end

local colours = {}
colours.pda_color = Color(192, 192, 192)
colours.pda_date = color_white
colours.pda_name = Color(255, 48, 48)
colours.psy = Color(117, 186, 255)
colours.quest = Color(171, 127, 46)
colours.pda_text = color_white

local function MonoDialugue()
    if (IsValid(generalMonoBG)) then
        generalMonoBG:Remove()
    else
        generalMonoBG = vgui.Create( "DFrame" )
        generalMonoBG:SetSize( ScrW() * 0.25,ScrH() * 0.19 )
        generalMonoBG:SetTitle( "" )
        generalMonoBG:Center(true)
        generalMonoBG:ShowCloseButton(false)
        generalMonoBG:MakePopup(true)
        generalMonoBG.Paint = GeneralPainting
     
        DeadOnManyMoney = generalMonoBG:Add("DButton")
        DeadOnManyMoney:SetPos(generalMonoBG:GetWide() * 0.31,ScrH() * 0.036)
        DeadOnManyMoney:SetSize(ScrW() * 0.167,ScrH() * 0.02)
        DeadOnManyMoney:SetTextColor(color_white)
        DeadOnManyMoney:SetText("Хочу стать богатым")
         DeadOnManyMoney.Paint = function(d,i,c,k)
         surface.SetDrawColor(255,255,255,0)
         surface.DrawRect(0,0, DeadOnManyMoney:GetWide(), DeadOnManyMoney:GetTall())
        end
        DeadOnManyMoney.DoClick = function()		
         RunConsoleCommand( "say", "x❺" )
         local icon = "nsrp/poisk.png"
         icon = Material(hook.Run("GetPlayerIcon", speaker) or icon)                                                                                                      
         local format = "%H:%M" 
         local date = os.date(format, nut.date.get()) 
         chat.AddText(icon, colours.pda_color, " - ", colours.pda_date, "Вы нашли нечно странное... То, что вас погубило, но богаче от этого вы не стали... ", "                                                                                                                                        ")
         generalMonoBG:Remove()
        end
     
        glory = generalMonoBG:Add("DButton")
        glory:SetPos(generalMonoBG:GetWide() * 0.31,DeadOnManyMoney:GetTall() * 3)
        glory:SetSize(ScrW() * 0.167,ScrH() * 0.02)
        glory:SetTextColor(color_white)
        glory:SetText("Хочу славы")
        glory.Paint = function(d,i,c,k)
         surface.SetDrawColor(255,255,255,0)
         surface.DrawRect(0,0, DeadOnManyMoney:GetWide(), DeadOnManyMoney:GetTall())
        end
        glory.DoClick = function()				
         RunConsoleCommand( "say", "x❺" )
         local icon = "nsrp/poisk.png"
         icon = Material(hook.Run("GetPlayerIcon", speaker) or icon)                                                                                                      
         local format = "%H:%M" 
         local date = os.date(format, nut.date.get()) 
         chat.AddText(icon, colours.pda_color, " - ", colours.pda_date, "Вы нашли нечно странное... То, что вас погубило, но популернее вы не стали... ", "                                                                                                                                        ")
         generalMonoBG:Remove()         
        end
     
        immortality = generalMonoBG:Add("DButton")
        immortality:SetPos(generalMonoBG:GetWide() * 0.31,glory:GetTall() * 4.3)
        immortality:SetSize(ScrW() * 0.167,ScrH() * 0.02)
        immortality:SetTextColor(color_white)
        immortality:SetText("Хочу стать бессмертным")
        immortality.Paint = function(d,i,c,k)
         surface.SetDrawColor(255,255,255,0)
         surface.DrawRect(0,0, glory:GetWide(), glory:GetTall())
        end
        immortality.DoClick = function()				
         RunConsoleCommand( "say", "x❺" )
         local icon = "nsrp/poisk.png"
         icon = Material(hook.Run("GetPlayerIcon", speaker) or icon)                                                                                                       
         local format = "%H:%M"  
         local date = os.date(format, nut.date.get())  
         chat.AddText(icon, colours.pda_color, " - ", colours.pda_date, "Вы нашли нечно странное... То, что вас погубило, но бессмертным Вы не стали... ", "                                                                                                                                        ")
         generalMonoBG:Remove()
         
        end
     
        zone = generalMonoBG:Add("DButton")
        zone:SetPos(generalMonoBG:GetWide() * 0.31,glory:GetTall() * 5.6)
        zone:SetSize(ScrW() * 0.167,ScrH() * 0.02)
        zone:SetTextColor(color_white)
        zone:SetText("Пусть Зона исчезнет")
        zone.Paint = function(d,i,c,k)
         surface.SetDrawColor(255,255,255,0)
         surface.DrawRect(0,0, glory:GetWide(), glory:GetTall())
        end
        zone.DoClick = function()				
         RunConsoleCommand( "say", "x❺" )
         local icon = "nsrp/poisk.png"
         icon = Material(hook.Run("GetPlayerIcon", speaker) or icon)                                                                                                      
         local format = "%H:%M" 
         local date = os.date(format, nut.date.get()) 
         chat.AddText(icon, colours.pda_color, " - ", colours.pda_date, "Вы нашли нечно странное... То, что вас погубило, но Зона не исчезла... ", "                                                                                                                                        ")
         generalMonoBG:Remove()
         
        end
    end
end
usermessage.Hook( "MonoDialugue", MonoDialugue )