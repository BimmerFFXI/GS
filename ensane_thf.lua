include('organizer-lib')

function get_sets()

	-- INIT
	THF = {}
	THF.main = { main="Tauret" }
	-- main="Mandau" "Twashtar" "Tauret" "Kaja Sword" "Kaja Knuckles"
	THF.sub = { sub="Thief's Knife" }
	THF.ammo = { ammo="Yamarang" }
	-- ammo="Yamarang" "Barathrum" "Per. Lucky Egg"
	-- THF.range = { range="Aliyat Chakram" }

	-- Nyame 		"Nyame Helm" 		"Nyame Mail" 		"Nyame Gauntlets" 	"Nyame Flanchard"	"Nyame Sollerets"
	-- Mummu 		"Mummu Bonnet +2" 	
	-- Meghanada 		"Meg. Chausses +2"
	-- Treasure Hunter 	"Plun. Armlets" 	"Skulk. Poulaines"

	sets.precast = {}

	sets.midcast = {}

	sets.TP = {}
	-- TP_mode = 'Attack' 'TH' 'DT' 'ACC'
	TP_mode = 'Attack'

	sets.TP.Attack = {
    		head="Pill. Bonnet +4",
    		body="Pillager's Vest +3",
    		hands="Malignance Gloves",
    		legs="Meg. Chausses +2",
    		feet="Malignance Boots",
    		neck="Combatant's Torque",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Sherida Earring",
    		right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Store TP"+4',}},
    		left_ring="Ilabrat Ring",
    		right_ring="Epona's Ring",
    		back="Null Shawl",
	}

	sets.TP.ACC = set_combine(sets.TP.Attack,{
		neck="Null Loop",
		waist="Null Belt",
	})
	
	sets.TH = {
		hands="Plun. Armlets +1",
		feet="Skulk. Poulaines"
	}

	sets.DT = {
    		head="Malignance Chapeau",
    		body="Malignance Tabard",
    		hands="Malignance Gloves",
    		legs="Malignance Tights",
    		feet="Malignance Boots",
    		neck="Null Loop",
    		waist="Plat. Mog. Belt",
    		left_ear="Sherida Earring",
    		right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Store TP"+4',}},
    		left_ring="Defending Ring",
    		right_ring="Epona's Ring",
    		back="Null Shawl",
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
    		head="Pill. Bonnet +4",
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
    		neck="Combatant's Torque",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Odr Earring",
    		left_ring="Cornelia's Ring",
    		right_ring="Epona's Ring",
    		back="Atheling Mantle"	
	}

	sets.WS.STR = {
    		head="Pill. Bonnet +4",
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
    		neck="Rep. Plat. Medal",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Odr Earring",
    		left_ring="Cornelia's Ring",
    		right_ring="Epona's Ring",
    		back="Cerb. Mantle +1",
	}

	sets.WS.Elemental = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
		neck="Sibyl Scarf",
		left_ear="Brutal Earring",
		right_ear="Novio Earring",
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		left_ring="Cornelia's Ring",
    		right_ring="Epona's Ring",
    		back="Canny Cape",
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	-- 40% Dex / 40% Chr / Accuracy Modifier / Scission / Detonation
	sets.WS['Dancing Edge'] = set_combine(sets.WS.DEX,{
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})

	-- 50% Dex / Crit Moifier / Gravitation / Transfixion
	sets.WS['Evisceration'] = set_combine(sets.WS.DEX,{
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})

	-- 40% Dex / 40% Agi / Damage Modifier / Fragmentation
	sets.WS['Shark Bite'] = set_combine(sets.WS.DEX,{ 
		neck="Fotia Gorget",
		right_ear="Moonshade Earring",
		waist="Fotia Belt",
	})

	-- 60% Dex / Attack Modifier / Fusion / Compression
	sets.WS['Mandalic Stab'] = set_combine(sets.WS.DEX,{
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})

	-- 80% Dex / Damage Modifier / Darkness / Distortion
	sets.WS['Rudra\'s Storm'] = set_combine(sets.WS.DEX,{
		neck="Fotia Gorget",
		right_ear="Moonshade Earring",
		waist="Fotia Belt",
	})

	-- 80% Str / Aftermath / Darkness / Gravitation
	sets.WS['Mercy Stroke'] = sets.WS.STR

	-- 50% Str / 50% Mnd / Damage Modifier / Fragmentation / Scission
	sets.WS['Savage Blade'] = sets.WS.STR

	-- 15% Str / 15% Vit / Accuracy Modifier / Gravitation / Liquefaction
	sets.WS['Asuran Fists'] = sets.WS.STR

	sets.WS['Aeolian Edge'] = sets.WS.Elemental
	sets.WS['Shadowstitch'] = sets.WS.DEXs
	sets.WS['Cyclone'] = sets.WS.Elemental

	sets.RA = {}

	sets.Idle = set_combine(
		THF.main, THF.sub, THF.range, THF.ammo,
	{
    		-- head="Pill. Bonnet +4",
    		-- body="Pillager's Vest +3",
    		head="Malignance Chapeau",
    		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
    		feet="Malignance Boots",
		neck="Null Loop",
    		waist="Null Belt",
    		left_ear="Sherida Earring",
    		right_ear={ name="Skulk. Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+12','Mag. Acc.+12','"Store TP"+4',}},
    		left_ring="Defending Ring",
    		right_ring="Shneddick Ring",
    		back="Null Shawl",
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
		-- equip(sets.Idle)
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