include('organizer-lib')

function get_sets()

	-- INIT
	GEO = {}
	GEO.main={ main="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}}
	-- main={ main="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}}
	-- main=""
	GEO.sub = { sub="Ammurapi Shield" }
	-- sub="Ammurapi Shield" "Culminus"  								
	GEO.range={ range="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}}
	-- range={ range="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}}
	-- range=""
	GEO.ammo = {}
	-- ammo="Per. Lucky Egg"

	-- GEO INIT
	-- Agwu		"Agwu's Cap"		"Agwu's Robe"		"Agwu's Gages"		"Agwu's Slops"		"Agwu's Pigaches"
	-- Nyame 	"Nyame Helm" 		"Nyame Mail" 		"Nyame Gauntlets" 	"Nyame Flanchard" 	"Nyame Sollerets"
	-- Jhakri	"Jhakri Coronal +2"	"Jhakri Robe +2"	"Jhakri Cuffs +2"	"Jhakri Slops +2"	"Jhakri Pigaches +2"

	sets.precast = {				-- FC 55% 8.23.25, 32% + Solstice+5, Dunna+3
    		head="Welkin Crown",			-- FC 7%
    		body="Agwu's Robe",			-- FC 8%
    		hands="Agwu's Gages",			-- FC 6%
    		legs="Agwu's Slops",			-- FC 7%
    		feet="Agwu's Pigaches",			-- FC 4%
    		neck="Baetyl Pendant",			-- FC 4%
    		waist="Embla Sash",			-- FC 5%
    		left_ear="Malignance Earring",		-- FC 4%
    		right_ear="Loquac. Earring",		-- FC 2%
    		left_ring="Defending Ring",		
   		right_ring="Kishar Ring",		-- FC 4%	
    		back="Shadow Mantle",		
	}

	sets.precast.Impact = set_combine( sets.precast,{
		head="",
		body="Crepuscular Cloak"
	})

	sets.midcast = {
		main="Bunzi's Rod",
		ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}},
    		head="Jhakri Coronal +2",
    		body="Jhakri Robe +2",
    		hands="Jhakri Cuffs +2",
    		legs="Jhakri Slops +2",
    		feet="Jhakri Pigaches +2",
    		neck="Sibyl Scarf",
    		waist="Refoccilation Stone",
		-- waist="Hachirin-no-Obi",
    		left_ear="Malignance Earring",
    		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
   		left_ring="Jhakri Ring",
    		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
	}

	sets.midcast.Impact = set_combine( sets.midcast,{
		head="",
		body="Crepuscular Cloak"
	})

	sets.TP = {}
	TP_mode = 'DT'

	sets.TP.Attack = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null Loop",
   		waist="Null Belt",
    		left_ear="Brutal Earring",
    		right_ear="Digni. Earring",
    		left_ring="Rajas Ring",
    		right_ring="Jhakri Ring",
    		back="Null Shawl",

	}

	sets.DT = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Null Loop",
   		waist="Null Belt",
    		left_ear="Brutal Earring",
    		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    		left_ring="Defending Ring",
    		right_ring="Succor Ring",
    		back="Null Shawl",
	}

	sets.TP.DT = sets.DT

	sets.midcast.Geomancy = set_combine( GEO.main, GEO.sub, GEO.range, GEO.ammo, sets.DT,{
		hands="Geo. Mitaines +1",
		legs="Bagua Pants",
    		neck="Incanter's Torque",
    		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    		-- back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
    		back={ name="Lifestream Cape", augments={'Geomancy Skill +8','Indi. eff. dur. +19',}},
	})

	sets.JA = {}

	sets.JA['Entrust'] = {}

	sets.WS = {}

	sets.WS['Black Halo'] = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Rep. Plat. Medal",
   		waist="Breeze Belt",
    		left_ear="Brutal Earring",
    		right_ear="Moonshade Earring",
    		left_ring="Rufescent Ring",
    		right_ring="Cornelia's Ring",
    		back="Null Shawl",
	}

	sets.RA = {}

	sets.Idle = set_combine(
		GEO.main, GEO.sub, GEO.range, GEO.ammo,
	{
    		head="Nyame Helm",
    		body="Shamash Robe",
    		hands="Nyame Gauntlets",
    		legs="Nyame Flanchard",
    		feet="Nyame Sollerets",
    		neck="Sibyl Scarf",
    		waist="Plat. Mog. Belt",
    		left_ear="Etiolation Earring",
    		right_ear={ name="Azimuth Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+13','Damage taken-4%',}},
    		left_ring="Defending Ring",
    		right_ring="Shneddick Ring",
    		back={ name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','Pet: "Regen"+10','Pet: Damage taken -5%',}},
	})

end

function precast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif sets.WS[spell.english] then
		equip(sets.WS[spell.english])
	else
		if spell.type == 'BlackMagic' then
			if spell.english == 'Impact' then
				equip(sets.precast.Impact)
			else
				equip(sets.precast)
		end	end
	end
end


function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif sets.WS[spell.english] then
		equip(sets.WS[spell.english])
	else
		if spell.type == 'Geomancy' then
			equip(sets.midcast.Geomancy)
		elseif spell.type == 'BlackMagic' then
			equip(sets.midcast)
		end
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
        equip(sets.DT)
    elseif command == 'TP' then
        if TP_mode=="Attack" then
            TP_mode="DT"
        elseif TP_mode=="DT" then
            TP_mode="Attack"
        end
        windower.add_to_chat('TP mode is now: '..TP_mode)
        equip(sets.TP[TP_mode])
    end
end