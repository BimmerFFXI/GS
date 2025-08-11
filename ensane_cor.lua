include('organizer-lib')

function get_sets()

	-- INIT
	-- Setup your Default Config below
	COR = {}
	COR.main = { main="Naegling" }
	-- main="Naegling" 
	COR.sub = { sub="Tauret" }
	COR.range = { range="Armageddon" }
	COR.ammo = { ammo="Voluspa Bullet" }

	-- Useful Sets for Copy & Paste to include upgraded "Laksamana's" "Lanun" "Chasseur's"
	-- Nyame 		"Nyame Helm" 		"Nyame Mail" 		"Nyame Gauntlets" 	"Nyame Flanchard"	"Nyame Sollerets"
	-- Mummu 		"Mummu Bonnet +2" 	"Mummu Jacket +2" 	"Mummu Gamash. +2"
	-- Meghanada 		"Meg. Gloves +2" 	"Meg. Chausses +2"
	-- Corsair's		"Corsair's Tricorne"
	-- Commodore		"Commodore Frac"
	-- Navarch's		"Navarch's Gants +2"
	-- Lanun 		"Lanun Tricorne"	

	sets.precast = {}

	sets.midcast = {}

	-- 3 Macro's for changing from "Attack" to "DT" and to equip "Idle" set
	-- /console gs c Atk
	-- /console gs c DT
	-- /console gs equip sets.Idle

	sets.TP = {}
	-- TP_mode = 'Attack' 'DT'
	TP_mode = 'Attack'

	sets.TP.Attack = {
    		head="Mummu Bonnet +2",
    		body="Mummu Jacket +2",
    		hands="Meg. Gloves +2",
    		legs="Meg. Chausses +2",
    		feet="Mummu Gamash. +2",
    		neck="Combatant's Torque",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Suppanomimi",
    		left_ring="Rajas Ring",
    		right_ring="Epona's Ring",
    		back="Cerb. Mantle +1",
	}

	sets.DT = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
    		neck="Combatant's Torque",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Suppanomimi",
    		left_ring="Defending Ring",
    		right_ring="Epona's Ring",
    		back="Cerb. Mantle +1",
	}

	sets.TP.DT = sets.DT

	sets.RA = {}

	sets.WS = {}

	sets.WS.STR = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
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
		right_ear="Hecate's Earring",
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		left_ring="Cornelia's Ring",
    		right_ring="Epona's Ring",
    		back="Cerb. Mantle +1",
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.WS['Savage Blade'] = sets.WS.STR
	sets.WS['Aeolian Edge'] = sets.WS.Elemental

	sets.JA = {}

	sets.JA['Phantom Roll'] = {
		main="Commodore's Knife",		-- Phantom Roll Duration +30 (MH Only) XI AUG 
		head="Lanun Tricorne",			-- Phantom Roll AUG
		back="Camulus's Mantle",		-- Phantom Roll Duration +30
    		left_ring="Luzaf's Ring",		-- Phantom Roll Range 7.9->15.9
    		right_ring="Barataria Ring",		-- Phantom Roll +5
	}

	sets.JA['Quick Draw'] = set_combine(sets.WS.Elemental,{
		head="Corsair's Tricorne",
	})

	sets.JA['Random Deal'] = { body="Commodore Frac" }
	sets.JA['Snake Eye'] = {}
	sets.JA['Fold'] = {}
	sets.JA['Wild Card'] = {}
	sets.JA['Tactician\'s Roll'] = {}

	sets.Idle = set_combine(
		COR.main, COR.sub, COR.range, COR.ammo,
	{
    		head="Mummu Bonnet +2",
    		body="Mummu Jacket +2",
    		hands="Meg. Gloves +2",
    		legs="Meg. Chausses +2",
    		feet="Mummu Gamash. +2",
    		neck="Combatant's Torque",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Suppanomimi",
    		left_ring="Defending Ring",
    		right_ring="Shneddick Ring",
    		back="Cerb. Mantle +1",
	})

end

function precast(spell)
	if spell.type == 'CorsairShot' then
		equip(sets.JA['Quick Draw'])
	elseif spell.type == 'CorsairRoll' then
		equip(sets.JA['Phantom Roll'])
	end
end


function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif sets.WS[spell.english] then
		equip(sets.WS[spell.english])
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