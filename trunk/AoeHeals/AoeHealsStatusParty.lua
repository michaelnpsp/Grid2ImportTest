-- Status: PrayerOfHealing 

local AOEM= Grid2:GetModule("Grid2AoeHeals")

local radius2
local minPlayers
local healthDeficit
local healthThreshold
local prevSolutions= {}

local function CalcNeighbors(self, players, k, m)
	for i=k,m do
		local p = players[i]
		p.curHeal = min( healthDeficit, p.deficit )
		p.totHeal = p.curHeal
		p.count   = 1
	end
	for i=k,m do
		local pi = players[i]
		local xi,yi = pi.x, pi.y
		for j=i+1,m do
			local pj = players[j]
			if radius2 >= (xi-pj.x)^2 + (yi-pj.y)^2 then
				pi.count, pi.totHeal = pi.count + 1, pi.totHeal + pj.curHeal
				pj.count, pj.totHeal = pj.count + 1, pj.totHeal + pi.curHeal
			end
		end
	end
end

local function GetBestUnit(self, players, k, m)
	local b = players[k]
	local ps= prevSolutions[b.group]
	for i=k+1,m do
		local p= players[i]
		if p.totHeal>b.totHeal or (p.totHeal==b.totHeal and (p==ps or p.count>b.count)) then
			b= p
		end	
	end
	if b.totHeal>=healthThreshold and b.count>=minPlayers then
		prevSolutions[b.group]= b
		return b
	end	
	prevSolutions[b.group] = nil
end

local function ProcessGroup(self, roster, i, k)
	CalcNeighbors( self, roster, i, k )
	local p = GetBestUnit( self, roster, i, k)
	if p then self:AddUnit( p ) end	
end

local function ProcessRoster(self, roster)
	local g,i,m= 1,1,#roster
	for k=1,m do
		local h= roster[k].group
		if h~=g then
			ProcessGroup( self,roster, i, k-1 )
			g, i = h, k
		end
	end
	if i<=m then
		ProcessGroup( self, roster, i, m )
	end
end

local function Update(self)
	self:SwapUnits()
	ProcessRoster( self, self:GetFilteredRoster() )
	self:UpdateUnits()
end

local function UpdateDB(self,dbx)
	dbx            = dbx or self.dbx
	radius2        = (dbx.radius or 30) ^ 2
	minPlayers     = dbx.minPlayers
	healthDeficit  = dbx.healthDeficit
	healthThreshold= healthDeficit * minPlayers
end

AOEM.setupFunc["aoe-PrayerOfHealing"] = function(self,dbx)
	self.order       = -1
	self.spellId     = 596
	self.texture     = select( 3, GetSpellInfo(self.spellId) )
	self.Update      = Update
	self.UpdateDB    = UpdateDB
	UpdateDB(self,dbx)
end
