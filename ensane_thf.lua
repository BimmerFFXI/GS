include('organizer-lib')

function get_sets()

	-- INIT
	THF = {}
	THF.main = { main="Tauret" }
	-- main="Mandau" "Twashtar" "Tauret" "Kaja Sword" "Kaja Knuckles"
	THF.sub = { sub="Thief's Knife" }
	THF.ammo = { ammo="Per. Lucky Egg" }
	-- THF.range = { range="Aliyat Chakram" }

	-- Nyame 		"Nyame Helm" 		"Nyame Mail" 		"Nyame Gauntlets" 	"Nyame Flanchard"	"Nyame Sollerets"
	-- Mummu 		"Mummu Bonnet +2" 	"Mummu Jacket +2" 	"Mummu Gamash. +2"
	-- Meghanada 		"Meg. Gloves +2" 	"Meg. Chausses +2"
	-- Treasure Hunter 	"Plun. Armlets" 	"Skulk. Poulaines"

	sets.precast = {}

	sets.midcast = {}

	sets.TP = {}
	-- TP_mode = 'Attack' 'TH' 'DT'
	TP_mode = 'Attack'

	sets.TP.Attack = {
    		head="Nyame Helm",
    		body="Nyame Mail",
    		hands="Meg. Gloves +2",
    		legs="Meg. Chausses +2",
    		feet="Nyame Sollerets",
    		neck="Combatant's Torque",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Suppanomimi",
    		left_ring="Rajas Ring",
    		right_ring="Epona's Ring",
    		back="Canny Cape",
	}
	
	sets.TH = {
		hands="Plun. Armlets",
		feet="Skulk. Poulaines"
	}

	sets.DT = {
   		head="Nyame Helm",
    		body="Nyame Mail",
    		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
    		feet="Nyame Sollerets",
    		neck="Combatant's Torque",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Suppanomimi",
    		left_ring="Defending Ring",
    		right_ring="Epona's Ring",
    		back="Canny Cape",
	}

	sets.TP.DT = sets.DT

	sets.JA = {}

	sets.JA['Step'] = { right_ear="Choreia Earring" }
	sets.JA['Waltz'] = { 
		head="Mummu Bonnet +2",
		body="Passion Jacket",
	}

	sets.WS = {}

	sets.WS.DEX = {
    		head="Mummu Bonnet +2",
    		body="Mummu Jacket +2",
    		hands="Meg. Gloves +2",
    		legs="Meg. Chausses +2",
    		feet="Mummu Gamash. +2",
    		neck="Combatant's Torque",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Odr Earring",
    		left_ring="Mummu Ring",
    		right_ring="Epona's Ring",
    		back="Atheling Mantle"	
	}

	sets.WS.STR = {
    		head="Mummu Bonnet +2",
    		body="Mummu Jacket +2",
    		hands="Meg. Gloves +2",
    		legs="Meg. Chausses +2",
    		feet="Mummu Gamash. +2",
    		neck="Rep. Plat. Medal",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Odr Earring",
    		left_ring="Rajas Ring",
    		right_ring="Epona's Ring",
    		back="Cerb. Mantle +1",
	}

	-- 40% Dex / 40% Chr / Accuracy Modifier / Scission / Detonation
	sets.WS['Dancing Edge'] = set_combine(sets.WS.DEX,{
		neck="Soil Gorget",
	})

	-- 50% Dex / Crit Moifier / Gravitation / Transfixion
	sets.WS['Evisceration'] = set_combine(sets.WS.DEX,{
		neck="Soil Gorget",
	})

	-- 40% Dex / 40% Agi / Damage Modifier / Fragmentation
	sets.WS['Shark Bite'] = set_combine(sets.WS.DEX,{ 
		neck="Breeze Gorget",
		right_ear="Moonshade Earring",
	})

	-- 60% Dex / Attack Modifier / Fusion / Compression
	sets.WS['Mandalic Stab'] = set_combine(sets.WS.DEX,{
		neck="Flame Gorget",
	})

	-- 80% Dex / Damage Modifier / Darkness / Distortion
	sets.WS['Rudra\'s Storm'] = set_combine(sets.WS.DEX,{
		neck="Aqua Gorget",
		right_ear="Moonshade Earring",
	})

	-- 80% Str / Aftermath / Darkness / Gravitation
	sets.WS['Mercy Stroke'] = sets.WS.STR

	-- 50% Str / 50% Mnd / Damage Modifier / Fragmentation / Scission
	sets.WS['Savage Blade'] = sets.WS.STR

	-- 15% Str / 15% Vit / Accuracy Modifier / Gravitation / Liquefaction
	sets.WS['Asuran Fists'] = sets.WS.STR

	sets.RA = {}

	sets.Idle = set_combine(
		THF.main, THF.sub, THF.range, THF.ammo,
	{
    		head="Nyame Helm",
    		body="Passion Jacket",
    		hands="Meg. Gloves +2",
    		legs="Meg. Chausses +2",
    		feet="Nyame Sollerets",
		neck="Combatant's Torque",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Suppanomimi",
    		left_ring="Defending Ring",
    		right_ring="Shneddick Ring",
    		back="Canny Cape",
	})

end

function precast(spell)
	if spell.type == 'Ninjutsu' then
		equip(sets.precast.Utsusemi)
	end

	if spell.action_type == 'Ranged Attack' then
		equip(sets.precast.TH)
	end
end


function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif sets.WS[spell.english] then
		equip(sets.WS[spell.english])
	elseif spell.type == 'Ninjutsu' then
		equip(sets.midcast.Utsusemi)
	end
end

function aftercast(spell)
	if player.status == 'Engaged' then
		equip(sets.TP[TP_mode])
	else
		equip(sets.Idle)
	end
end

function status_change(new,old)
	if T{'Idle','Resting'}:contains(new) then
		equip(sets.Idle)
	elseif new == 'Engaged' then
		equip(sets.TP[TP_mode])
	end
end

function self_command(command)
    if command == 'DT' then
	TP_mode="DT"
    elseif command == 'Atk' then
        TP_mode="Attack"
    end

    windower.add_to_chat('TP mode is now: '..TP_mode)
    equip(sets.TP[TP_mode])
end