include('organizer-lib')

function get_sets()

	-- INIT
	NIN = {}
	NIN.main = { main="Heishi Shorinken" } 
	-- main="" "Heishi Shorinken" "Kaja Kunckles" "Naegling" "Tauret"
	NIN.sub = { sub="Yagyu Darkblade" }
	-- sub="Yagyu Darkblade" "Kunimitsu" "Uzura"
	-- NIN.range = { range="Aliyat Chakram" }
	NIN.ammo = { ammo="Date Shuriken" }
	-- ammo="Date Shuriken" "Suppa Shuriken" "Per. Lucky Egg"

	sets.precast = {}

	sets.precast.Utsusemi = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
		neck="Magoraga Beads",
		left_ear="Loquac. Earring",
		right_ear="Suppanomimi",
		body="Passion Jacket",
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		left_ring="Defending Ring",
		right_ring="Succor Ring",
    		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
		waist="Null Belt",
		legs="Hattori Hakama +2",
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.midcast = {}

	sets.midcast.Utsusemi = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
		neck="Elite Royal Collar",
		left_ear="Brutal Earring",
		right_ear="Ethereal Earring",
		body="Hattori Ningi +3",
		hands="Kog. Tekko +2",
		left_ring="Defending Ring",
		right_ring="Eihwaz Ring",
    		back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+6','"Mag.Atk.Bns."+10',}},
		waist="Null Belt",
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.midcast.NinjutsuMAtk = {
    		head="Mochi. Hatsu. +4",
		neck="Sibyl Scarf",
		left_ear="Novio Earring",
		right_ear="Stealth Earring",
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		left_ring="Defending Ring",
    		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    		back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+6','"Mag.Atk.Bns."+10',}},
		waist="Null Belt",
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.midcast.Ninjutsu = {
    		head="Hachi. Hatsu. +4",
    		neck="Incanter's Torque",
		left_ear="Novio Earring",
		right_ear="Stealth Earring",
    		body={ name="Nyame Mail", augments={'Path: B',}},
		hands="Kog. Tekko +2",
		left_ring="Defending Ring",
    		right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    		back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+6','"Mag.Atk.Bns."+10',}},
		waist="Null Belt",
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

	sets.TP = {}
	TP_mode = 'Attack'

	sets.TP.Attack = {
    		head="Hachi. Hatsu. +4",
		neck="Combatant's Torque",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		body="Hattori Ningi +3",
    		hands={ name="Tatena. Gote +1", augments={'Path: A',}},
		left_ring="Epona's Ring",
		right_ring="Rajas Ring",
    		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
		feet={ name="Tatena. Sune. +1", augments={'Path: A',}},
		-- feet="Hattori Kyahan +3",
	}

	sets.DT = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
		neck="Combatant's Torque",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		body="Hattori Ningi +3",
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		left_ring="Defending Ring",
		right_ring="Epona's Ring",
    		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		legs="Hattori Hakama +2",
		feet="Hattori Kyahan +3",
	}

	sets.TP.DW = {}

	sets.TP.DT = sets.DT

	sets.JA = {}

	sets.JA['Step'] = { right_ear="Choreia Earring" }
	sets.JA['Waltz'] = { 
		head="Mummu Bonnet +2",
		body="Passion Jacket",
	}

	sets.WS = {}

	sets.WS['Blade: Hi'] = {
    		head="Hachi. Hatsu. +4",
		neck="Fotia Gorget",
		left_ear="Brutal Earring",
		right_ear="Moonshade Earring",
		body="Hattori Ningi +3",
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		left_ring="Regal Ring",
    		right_ring="Cornelia's Ring",
    		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Hattori Kyahan +3",
	}

	sets.WS['Blade: Shun'] = {
    		head="Hachi. Hatsu. +4",
		neck="Fotia Gorget",
		left_ear="Brutal Earring",
		right_ear="Moonshade Earring",
		body="Hattori Ningi +3",
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		left_ring="Regal Ring",
    		right_ring="Cornelia's Ring",
    		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','Weapon skill damage +10%',}},
		waist="Fotia Belt",
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Hattori Kyahan +3",
	}

	sets.WS['Blade: Ten'] = {
    		head="Hachi. Hatsu. +4",
		neck="Fotia Gorget",
		left_ear="Brutal Earring",
		right_ear="Moonshade Earring",
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		left_ring="Regal Ring",
    		right_ring="Cornelia's Ring",
    		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Hattori Kyahan +3",
	}

	sets.WS['Savage Blade'] = {
    		head="Hachi. Hatsu. +4",
		neck="Rep. Plat. Medal",
		left_ear="Brutal Earring",
		right_ear="Moonshade Earring",
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		left_ring="Regal Ring",
    		right_ring="Cornelia's Ring",
    		back={ name="Andartia's Mantle", augments={'STR+20','Accuracy+20 Attack+20','Weapon skill damage +10%',}},
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet="Hattori Kyahan +3",
	}

	sets.WS.Elemental = {
    		head={ name="Nyame Helm", augments={'Path: B',}},
		neck="Sibyl Scarf",
		left_ear="Brutal Earring",
		right_ear="Novio Earring",
    		body={ name="Nyame Mail", augments={'Path: B',}},
    		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		left_ring="Regal Ring",
    		right_ring="Cornelia's Ring",
    		back={ name="Andartia's Mantle", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+6','"Mag.Atk.Bns."+10',}},
   		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
    		legs={ name="Nyame Flanchard", augments={'Path: B',}},
    		feet={ name="Nyame Sollerets", augments={'Path: B',}},
	}

-- equip(set_combine(sets.midcast.NinjutsuMatk,{hands={name="Iga Tekko +2"}))

	sets.WS['Blade: Kamu'] = sets.WS['Savage Blade'] ;

	sets.WS['Blade: Ku'] = set_combine(sets.WS['Blade: Ten'],{
		waist="Fotia Belt",
	})

	sets.WS['Blade: Teki'] = set_combine(sets.WS.Elemental,{
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})

	sets.WS['Blade: To'] = set_combine(sets.WS.Elemental,{
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})

	sets.WS['Blade: Chi'] = set_combine(sets.WS.Elemental,{})

	sets.WS['Blade: Ei'] = set_combine(sets.WS.Elemental,{
		neck="Foitia Gorget",
		right_ring="Archon Ring",
		waist="Fotia Belt",
	})

	sets.WS['Blade: Yu'] = set_combine(sets.WS.Elemental,{
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})

	sets.WS['Aeolian Edge'] = set_combine(sets.WS.Elemental,{
		neck="Fotia Gorget",
		waist="Fotia Belt",
	})

	sets.WS['Evisceration'] = set_combine(sets.WS['Blade: Hi'],{
		neck="Fotia Gorget",
    		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+5','Weapon skill damage +10%',}},
	})

	sets.WS['Asuran Fists'] = sets.WS['Blade: Ten'] ;

	sets.RA = {}

	sets.Idle = set_combine(
		NIN.main, NIN.sub, NIN.range, NIN.ammo,
	{
    		head="Hachi. Hatsu. +4",
		neck="Combatant's Torque",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		body="Hiza. Haramaki +2",
    		hands={ name="Tatena. Gote +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Shneddick Ring",
    		back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		-- legs="Hattori Hakama +2",
		legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
		feet="Hattori Kyahan +3",
	})

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
	TP_mode="DT"
    elseif command == 'Atk' then
        TP_mode="Attack"
    end

    windower.add_to_chat('TP mode is now: '..TP_mode)
    equip(sets.TP[TP_mode])
end