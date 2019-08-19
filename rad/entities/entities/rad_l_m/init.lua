AddCSLuaFile( "shared.lua" )
include('shared.lua')
local range = 2048
local psyamount = 50
function ENT:SpawnFunction( ply, tr )
	if ( !tr.Hit ) then return end
	local SpawnPos = tr.HitPos + tr.HitNormal * 16
	local ent = ents.Create( self.ClassName )
	ent:SetPos( SpawnPos )
	ent:Spawn()
	ent:Activate()
	return ent
end

function ENT:OnRemove()
end

function ENT:Initialize()

	self.Entity:SetModel( "models/props_junk/watermelon01.mdl" ) --Set its model.
	//self.Entity:PhysicsInit( SOLID_NONE )      -- Make us work with physics,
	self.Entity:SetMoveType( MOVETYPE_NONE )   -- after all, gmod is a physics
	self.Entity:SetSolid( SOLID_NONE ) 	-- Toolbox
	self.Entity:SetKeyValue("rendercolor", "150 255 150")
	self.Entity:SetKeyValue("renderamt", "0")
	self.Entity:SetMaterial("models/props_combine/portalball001_sheet")
	self.Entity:SetPersistent(true)
        local phys = self.Entity:GetPhysicsObject()
	if (phys:IsValid()) then
		phys:Wake()
	end
end
local delayTime = CurTime()
function ENT:Think()
	if !delayTime or delayTime < CurTime() then
		for k, v in pairs( ents.FindInSphere( self.Entity:GetPos(), 2560 )  ) do
			if v:IsPlayer() and v:IsValid() then
				if !v:getChar() then return end
				if (v:getChar():getInv():hasItem("neutral_l1aa")) then return end
				if (v:getChar():getInv():hasItem("neutral_l1bb")) then return end
				if (v:getChar():getInv():hasItem("neutral_l1jj")) then return end
				if (v:getChar():getInv():hasItem("neutral_l2")) then return end
				if (v:getChar():getInv():hasItem("neutral_exonew")) then return end
				if (v:getChar():getInv():hasItem("neutral_l3")) then return end
				if (v:getChar():getInv():hasItem("neutral_l4")) then return end
				if (v:getChar():getInv():hasItem("neutral_l5")) then return end
				if (v:getChar():getInv():hasItem("band_l1bb")) then return end
				if (v:getChar():getInv():hasItem("band_l4")) then return end
				if (v:getChar():getInv():hasItem("band_l12")) then return end
				if (v:getChar():getInv():hasItem("band_mediuma")) then return end
				if (v:getChar():getInv():hasItem("cs_exo")) then return end
				if (v:getChar():getInv():hasItem("cs_l2a")) then return end
				if (v:getChar():getInv():hasItem("cs_l3")) then return end
				if (v:getChar():getInv():hasItem("cs_l3a")) then return end
				if (v:getChar():getInv():hasItem("cs_l4")) then return end
				if (v:getChar():getInv():hasItem("duty_exo")) then return end
				if (v:getChar():getInv():hasItem("duty_l4")) then return end
				if (v:getChar():getInv():hasItem("duty_l4a")) then return end
				if (v:getChar():getInv():hasItem("duty_medium1")) then return end
				if (v:getChar():getInv():hasItem("duty_medium2")) then return end
				if (v:getChar():getInv():hasItem("duty_nauch")) then return end
				if (v:getChar():getInv():hasItem("duty_shturm")) then return end
				if (v:getChar():getInv():hasItem("duty_shturm2")) then return end
				if (v:getChar():getInv():hasItem("ecolog")) then return end
				if (v:getChar():getInv():hasItem("ecolog2")) then return end
				if (v:getChar():getInv():hasItem("ecolog3")) then return end
				if (v:getChar():getInv():hasItem("freedom_exo")) then return end
				if (v:getChar():getInv():hasItem("freedom_l1g")) then return end
				if (v:getChar():getInv():hasItem("freedom_l4")) then return end
				if (v:getChar():getInv():hasItem("freedom_l5")) then return end
				if (v:getChar():getInv():hasItem("freedom_l6")) then return end
				if (v:getChar():getInv():hasItem("freedom_medium1")) then return end
				if (v:getChar():getInv():hasItem("freedom_medium2")) then return end
				if (v:getChar():getInv():hasItem("freedom_medium3")) then return end
				if (v:getChar():getInv():hasItem("merc_exo")) then return end
				if (v:getChar():getInv():hasItem("merc_l2")) then return end
				if (v:getChar():getInv():hasItem("merc_l2a")) then return end
				if (v:getChar():getInv():hasItem("merc_l2b")) then return end
				if (v:getChar():getInv():hasItem("merc_l4")) then return end
				if (v:getChar():getInv():hasItem("merc_shturm")) then return end
				if (v:getChar():getInv():hasItem("mili_exo")) then return end
				if (v:getChar():getInv():hasItem("mili_l2")) then return end
				if (v:getChar():getInv():hasItem("mili_medium1b")) then return end
				if (v:getChar():getInv():hasItem("mono_exo")) then return end
				if (v:getChar():getInv():hasItem("mono_exoharon")) then return end
				if (v:getChar():getInv():hasItem("mono_exonew")) then return end
				if (v:getChar():getInv():hasItem("mono_exonew2")) then return end
				if (v:getChar():getInv():hasItem("mono_exonew4")) then return end
				if (v:getChar():getInv():hasItem("mono_exonew5")) then return end
				if (v:getChar():getInv():hasItem("mono_exonew6")) then return end
				if (v:getChar():getInv():hasItem("mono_exoold")) then return end
				if (v:getChar():getInv():hasItem("mono_l1")) then return end
				if (v:getChar():getInv():hasItem("mono_l1a")) then return end
				if (v:getChar():getInv():hasItem("mono_l2")) then return end
				if (v:getChar():getInv():hasItem("mono_l4")) then return end
				if (v:getChar():getInv():hasItem("mono_l4a")) then return end
				if (v:getChar():getInv():hasItem("mono_nauch")) then return end
				if (v:getChar():getInv():hasItem("band_exo")) then return end
				if (v:getChar():getInv():hasItem("band_l4")) then return end
				if v:GetPos( ):Distance( self:GetPos( ) ) <= range then
						if (v:Health() > 0) then
							v:addRAD(5)
							v:EmitSound("stalker/geiger_"..math.random(1,8)..".ogg")
							v:ScreenFade( SCREENFADE.IN, Color(50,50,50,70), 1, 1 )
						end	
				elseif v:GetPos( ):Distance( self:GetPos( ) ) <= range + 256 then
						v:EmitSound("stalker/geiger_"..math.random(1,8)..".ogg")
				end

				----
				----
			end
		end
		delayTime = CurTime() + 2.5
	end
end

function ENT:Use( activator, caller, type, value )
end

function ENT:KeyValue( key, value )
end

function ENT:OnTakeDamage( dmginfo )
end

function ENT:StartTouch( entity )
end

function ENT:EndTouch( entity )
end

function ENT:Touch( entity )
end
