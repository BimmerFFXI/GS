include('organizer-lib')

function get_sets()

	-- INIT
	WAR = {}
	WAR.main = { main="Naegling" } 
	-- main="Naegling" 
	WAR.sub = { sub="" }
	-- sub="Blurred Shield +1" 
	-- WAR.range = { range="" }
	WAR.ammo = { ammo="Iron Gobbet" }
	-- ammo="Iron Gobbet" "Per. Lucky Egg"

	-- WAR INIT
	-- Nyame 	"Nyame Helm" 		"Nyame Mail" 		"Nyame Gauntlets" 	"Nyame Flanchard" 	"Nyame Sollerets"
	-- Sakpata 	"Sakpata's Helm"	"Sakpata's Plate"	"Sakpata's Gauntlets"	"Sakpata's Cuisses"	"Sakpata's Leggings"
	-- Flamma	"Flam. Zucchetto +2"	"Flam. Manopolas +2"	
	-- Sulevia	"Sulevia's Mask +2"	"Sulevia's Plate +2"	"Sulev. Gauntlets +2"	"Sulev. Cuisses +2"	"Sulev. Leggings +2"

	sets.precast = {}

	sets.midcast = {}

	sets.midcast.Enmity = {
		right_ring="Eihwaz Ring",
		back="Cerb. Mantle +1",
	}

	sets.TP = {}
	TP_mode = 'DT'

	sets.TP.Attack = {
    		head="Sakpata's Helm",
   		body="Sakpata's Plate",
    		hands="Sakpata's Gauntlets",
    		legs="Sakpata's Cuisses",
    		feet="Sakpata's Leggings",
		neck="Combatant's Torque",
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Digni. Earring",
    		left_ring="Flamma Ring",
    		right_ring="Rajas Ring",
    		back="Mauler's Mantle",	

	}

	sets.DT = {
    		head="Sakpata's Helm",
   		body="Sakpata's Plate",
    		hands="Sakpata's Gauntlets",
    		legs="Sakpata's Cuisses",
    		feet="Sakpata's Leggings",
    		-- neck="Elite Royal Choker",
		neck="Combatant's Torque",
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Digni. Earring",
    		left_ring="Defending Ring",
    		right_ring="Rajas Ring",
    		back="Mauler's Mantle",	
	}

	sets.TP.DT = sets.DT

	sets.JA = {}

	sets.JA['Berserk'] = {}

	sets.WS = {}

	sets.WS['Savage Blade'] = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet="Sulev. Leggings +2",
		neck="Rep. Plat. Medal",
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Thrud Earring",
    		right_ear="Moonshade Earring",
    		left_ring="Rufescent Ring",
    		right_ring="Cornelia's Ring",
    		back="Mauler's Mantle",	
	}

	sets.RA = {}

	sets.Idle = set_combine(
		WAR.main, WAR.sub, WAR.range, WAR.ammo,
	{
    		head="Sakpata's Helm",
   		body="Sakpata's Plate",
    		hands="Sakpata's Gauntlets",
    		legs="Sakpata's Cuisses",
    		feet="Sakpata's Leggings",
		neck="Combatant's Torque",
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Digni. Earring",
    		left_ring="Defending Ring",
    		right_ring="Shneddick Ring",
    		back="Mauler's Mantle",	
	})

end

function precast(spell)
	if spell.action_type == 'Magic' then
		equip(sets.precast.FC)
	end
end


function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif sets.WS[spell.english] then
		equip(sets.WS[spell.english])
	else
		-- equip(sets.midcast.Enmity)
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