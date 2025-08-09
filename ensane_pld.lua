include('organizer-lib')

function get_sets()

	-- INIT
	PLD = {}
	PLD.main = { main="Burtgang" } 
	-- main="Burtgang" "Kaja Sword"
	PLD.sub = { sub="Aegis" }
	-- sub="Aegis" "Ochain"
	-- PLD.range = { range="" }
	PLD.ammo = { ammo="Iron Gobbet" }
	-- ammo="Iron Gobbet" "Per. Lucky Egg"

	-- PLD INIT
	-- Nyame 	"Nyame Helm" 		"Nyame Mail" 		"Nyame Gauntlets" 	"Nyame Flanchard" 	"Nyame Sollerets"
	-- Sakpata 	"Sakpata's Helm"	"Sakpata's Plate"	"Sakpata's Gauntlets"	"Sakpata's Cuisses"	"Sakpata's Leggings"
	-- Flamma	"Flam. Zucchetto +2"	"Flam. Manopolas +2"	
	-- Sulevia	"Sulevia's Mask +2"	"Sulevia's Plate +2"	"Sulev. Gauntlets +2"	"Sulev. Cuisses +2"	"Sulev. Leggings +2"

	sets.precast = {}

	sets.precast.FC = {
		head="Sakpata's Helm",
		neck="Baetyl Pendant",
		right_ear="Loquac. Earring",
		body="Nuevo Coselete",
		legs="Enif Cosciales",
	}

	sets.midcast = {}

	sets.midcast.Enmity = {
		head="Vlr. Coronet +1",
		body="Creed Cuirass +2",
		left_ring="Hercules' Ring",
		right_ring="Eihwaz Ring",
		back="Cerb. Mantle +1",
		feet="Vlr. Leggings +2",
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
    		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10'
}},
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
    		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10'}},
	}

	sets.TP.DT = sets.DT

	sets.JA = {}

	sets.JA['Ramart'] = { head="Vlr. Coronet +1" }
	sets.JA['Sentinel'] = { feet="Vlr. Leggings +2" }
	sets.JA['Cover'] = { body="Vlr. Surcoat +2" }
	sets.JA['Holy Circle'] = { feet="Glt. Leggings +1" }
	sets.JA['Divine Emblem'] = { feet="Creed Sabatons +2" }

	sets.WS = {}

    		-- neck="Breeze Gorget",

	sets.WS['Savage Blade'] = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet="Sulev. Leggings +2",
		neck="Rep. Plat. Medal",
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		left_ear="Brutal Earring",
    		right_ear="Moonshade Earring",
    		left_ring="Rufescent Ring",
    		right_ring="Cornelia's Ring",
    		back="Cerb. Mantle +1",	
	}

	sets.RA = {}

	sets.Idle = set_combine(
		PLD.main, PLD.sub, PLD.range, PLD.ammo,
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
    		back={ name="Rudianos's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','"Dbl.Atk."+10'}},
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
		equip(sets.midcast.Enmity)
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