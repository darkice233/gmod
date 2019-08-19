 
ENT.Type = "anim"
ENT.Base = "base_gmodentity"
 
ENT.PrintName		= "Monolit"
ENT.Author			= "Dobytchick"
ENT.Contact			= ""
ENT.Purpose			= "Monolit dlya servera"
ENT.Instructions	= "Its shit :D"

if SERVER then
    hook.Add( "PlayerSay", "manymoney", function( ply, text, public )
        if ( string.lower( text ) == "x❺" ) then
            ply:Kill()
            return ""
        end
    end )
end 

--setFaction
