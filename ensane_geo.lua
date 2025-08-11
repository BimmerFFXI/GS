include('organizer-lib')

function get_sets()

	-- INIT
	GEO = {}
	GEO.main={ main="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}}
	-- main={ main="Solstice", augments={'Mag. Acc.+20','Pet: Damage taken -4%','"Fast Cast"+5',}}
	-- main=""
	GEO.sub = { sub="Culminus" }
	-- sub="Culminus" 
	GEO.range={ range="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}}
	-- range={ range="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}}
	-- range=""
	GEO.ammo = {}
	-- ammo="Per. Lucky Egg"

	-- GEO INIT
	-- Nyame 	"Nyame Helm" 		"Nyame Mail" 		"Nyame Gauntlets" 	"Nyame Flanchard" 	"Nyame Sollerets"
	-- Jhakri	"Jhakri Coronal +2"	"Jhakri Robe +2"	"Jhakri Cuffs +2"	"Jhakri Slops +2"	"Jhakri Pigaches +2"

	sets.precast = {				-- FC 40% 8.10.25, 32% + Solstice+5, Dunna+3
    		head="Welkin Crown",			-- FC 7%
    		body="Jhakri Robe +2",			-- FC 1 piece = 0%
    		hands="Jhakri Cuffs +2",		-- FC 2 piece = 3%
    		legs="Jhakri Slops +2",			-- FC 3 piece = 6%
    		feet="Jhakri Pigaches +2",		-- FC 4 piece = 12%
    		neck="Baetyl Pendant",			-- FC 4%
    		waist="Refoccilation Stone",		
    		left_ear="Malignance Earring",		-- FC 4%
    		right_ear="Loquac. Earring",		-- FC 2%
    		left_ring="Defending Ring",		
   		right_ring="Jhakri Ring",		-- FC 5 piece = 15%
    		back="Shadow Mantle",		
	}

	sets.midcast = {
    		head="Jhakri Coronal +2",
    		body="Jhakri Robe +2",
    		hands="Jhakri Cuffs +2",
    		legs="Jhakri Slops +2",
    		feet="Jhakri Pigaches +2",
    		neck="Sibyl Scarf",
    		waist="Refoccilation Stone",
    		left_ear="Malignance Earring",
    		right_ear={ name="Azimuth Earring", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+10',}},
    		left_ring="Metamor. Ring +1",
   		right_ring="Jhakri Ring",
    		back="Pahtli Cape",
	}

	sets.TP = {}
	TP_mode = 'DT'

	sets.TP.Attack = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Combatant's Torque",
   		waist="Goading Belt",
    		left_ear="Brutal Earring",
    		right_ear="Digni. Earring",
    		left_ring="Rajas Ring",
    		right_ring="Jhakri Ring",
    		back="Pahtli Cape",

	}

	sets.DT = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
    		neck="Combatant's Torque",
   		waist="Goading Belt",
    		left_ear="Brutal Earring",
    		right_ear="Digni. Earring",
    		left_ring="Defending Ring",
    		right_ring="Succor Ring",
    		back="Pahtli Cape",
	}

	sets.TP.DT = sets.DT

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
    		back="Pahtli Cape",
	}

	sets.RA = {}

	sets.Idle = set_combine(
		GEO.main, GEO.sub, GEO.range, GEO.ammo,
	{
    		head="Befouled Crown",
    		body="Jhakri Robe +2",
    		hands="Jhakri Cuffs +2",
    		legs="Jhakri Slops +2",
    		feet="Jhakri Pigaches +2",
    		neck="Incanter's Torque",
    		waist="Refoccilation Stone",
    		left_ear="Malignance Earring",
    		right_ear={ name="Azimuth Earring", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+10',}},
    		left_ring="Defending Ring",
   		right_ring="Shneddick Ring",
    		back="Pahtli Cape",
	})

end

function precast(spell)
	if spell.action_type == 'Magic' then
		equip(sets.precast)
	end
end


function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif sets.WS[spell.english] then
		equip(sets.WS[spell.english])
	else
		if spell.type == 'BlackMagic' then
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