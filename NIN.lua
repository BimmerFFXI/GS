include('organizer-lib')

function get_sets()

	sets.precast = {}

	sets.precast.Utsusemi = {
		head="Hiza. Somen +2",
		neck="Magoraga Beads",
		left_ear="Loquac. Earring",
		right_ear="Suppanomimi",
		body="Hattori Ningi +3",
		hands="Hizamaru Kote +2",
		left_ring="Defending Ring",
		right_ring="Sucor Ring",
		back="Shadow Mantle",
		waist="Phasmida Belt",
		legs="Hiza. Hizayoroi +2",
		feet="Hattori Kyahan +2",
	}

	sets.midcast = {}

	sets.midcast.Utsusemi = {
		head="Nyame Helm",
		neck="Elite Royal Collar",
		left_ear="Brutal Earring",
		right_ear="Ethereal Earring",
		body="Hattori Ningi +3",
		hands="Kog. Tekko +2",
		left_ring="Defending Ring",
		right_ring="Eihwaz Ring",
    		back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		waist="Phasmida Belt",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}

	sets.midcast.NinjutsuMAtk = {
		head="Nyame Helm",
		neck="Sibyl Scarf",
		left_ear="Hecate's Earring",
		right_ear="Stealth Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Defending Ring",
		right_ring="Mummu Ring",
    		back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		waist="Phasmida Belt",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}

	sets.midcast.Ninjutsu = {
		head="Mummu Bonnet +2",
		neck="Henic Torque",
		left_ear="Hecate's Earring",
		right_ear="Stealth Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Defending Ring",
		right_ring="Mummu Ring",
    		back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
		waist="Phasmida Belt",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}

	sets.TP = {}
	TP_mode = 'Attack'

	sets.TP.Attack = {
		head="Hiza. Somen +2",
		neck="Combatant's Torque",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		body="Hattori Ningi +3",
		hands="Hizamaru Kote +2",
		left_ring="Epona's Ring",
		right_ring="Rajas Ring",
		back="Yokaze Mantle",
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs="Hiza. Hizayoroi +2",
		feet="Hattori Kyahan +2",
	}

	sets.DT = {
		head="Nyame Helm",
		neck="Elite Royal Collar",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		body="Hattori Ningi +3",
		hands="Nyame Gauntlets",
		left_ring="Defending Ring",
		right_ring="Epona's Ring",
		back="Yokaze Mantle",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs="Nyame Flanchard",
		feet="Hattori Kyahan +2",
	}

	sets.TP.DT = sets.DT

	sets.JA = {}

	sets.JA['Step'] = { right_ear="Choreia Earring" }
	sets.JA['Waltz'] = { head="Mummu Bonnet +2" }

	sets.WS = {}

	sets.WS['Blade: Hi'] = {
		head="Mummu Bonnet +2",
		neck="Aqua Gorget",
		left_ear="Brutal Earring",
		right_ear="Moonshade Earring",
		body="Hattori Ningi +3",
		hands="Hizamaru Kote +2",
		left_ring="Epona's Ring",
		right_ring="Mummu Ring",
    		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		-- waist="Aqua Belt",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs="Hiza. Hizayoroi +2",
		feet="Hattori Kyahan +2",
	}

	sets.WS['Blade: Shun'] = {
		head="Mummu Bonnet +2",
		neck="Breeze Gorget",
		left_ear="Brutal Earring",
		right_ear="Moonshade Earring",
		body="Hattori Ningi +3",
		hands="Hizamaru Kote +2",
		left_ring="Epona's Ring",
		right_ring="Mummu Ring",
    		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		waist="Breeze Belt",
		legs="Hiza. Hizayoroi +2",
		feet="Hattori Kyahan +2",
	}

	sets.WS['Blade: Ten'] = {
		head="Mummu Bonnet +2",
		neck="Soil Gorget",
		left_ear="Brutal Earring",
		right_ear="Moonshade Earring",
		body="Hattori Ningi +3",
		hands="Hizamaru Kote +2",
		left_ring="Epona's Ring",
		right_ring="Mummu Ring",
    		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
		-- waist="Soil Belt",
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs="Hiza. Hizayoroi +2",
		feet="Hattori Kyahan +2",
	}

	sets.WS.Elemental = {
		head="Nyame Helm",
		neck="Sibyl Scarf",
		left_ear="Brutal Earring",
		right_ear="Hecate's Earring",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		left_ring="Epona's Ring",
		right_ring="Mummu Ring",
    		back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','"Mag.Atk.Bns."+10',}},
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
	}

-- equip(set_combine(sets.midcast.NinjutsuMatk,{hands={name="Iga Tekko +2"}))

	sets.WS['Blade: Teki'] = set_combine(sets.WS.Elemental,{
		neck="Aqua Gorget",
		waist="Aqua Belt",
	})

	sets.WS['Blade: To'] = set_combine(sets.WS.Elemental,{
		neck="Snow Gorget",
		waist="Snow Belt",
	})

	sets.WS['Blade: Chi'] = set_combine(sets.WS.Elemental,{})

	sets.WS['Blade: Ei'] = set_combine(sets.WS.Elemental,{
		neck="Shadow Gorget",
		right_ring="Archon Ring",
		waist="Shadow Belt",
	})

	sets.WS['Blade: Yu'] = set_combine(sets.WS.Elemental,{
		neck="Aqua Gorget",
		waist="Aqua Belt",
	})

	sets.WS['Aeolian Edge'] = set_combine(sets.WS.Elemental,{
		neck="Soil Gorget",
		waist="Soil Belt",
	})

	sets.RA = {}

	sets.Idle = {
		head="Hiza. Somen +2",
		neck="Combatant's Torque",
		left_ear="Brutal Earring",
		right_ear="Suppanomimi",
		body="Hiza. Haramaki +2",
		hands="Hizamaru Kote +2",
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
		back="Yokaze Mantle",
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs="Hiza. Hizayoroi +2",
		feet="Hattori Kyahan +2",
	}

end

function precast(spell)
	if spell.type == 'Ninjutsu' then
		equip(sets.precast.Utsusemi)
	end

	if spell.english:startswith('Utsusemi') then
		equip(sets.precast.Utsusemi)
	end
end


function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif sets.WS[spell.english] then
		equip(sets.WS[spell.english])
	elseif spell.type == 'Ninjutsu' then
		if spell.english:startswith('Utsusemi') then
			equip(sets.midcast.Utsusemi)
		elseif spell.english:startswith('Katon') or spell.english:startswith('Hyoton') or spell.english:startswith('Huton') or spell.english:startswith('Doton') or spell.english:startswith('Raiton') or spell.english:startswith('Suiton') then
			equip(sets.midcast.NinjutsuMAtk)
-- equip(set_combine(sets.midcast.NinjutsuMatk,{hands={name="Iga Tekko +2"}))

		else
			equip(sets.midcast.Ninjutsu)
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