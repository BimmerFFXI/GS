include('organizer-lib')

function get_sets()

	-- INIT
	SCH = {}
	SCH.main = { "Bunzi's Rod" }
	-- main="Bunzi's Rod"
	SCH.sub = { sub="Ammurapi Shield" }
	-- sub="Ammurapi Shield" "Culminus" 
	-- SCH.range = { "" }
	SCH.ammo={ name="Ghastly Tathlum +1", augments={'Path: A',}}
	-- ammo="" "Per. Lucky Egg" 

	-- SCH INIT
	-- Nyame 	"Nyame Helm" 		"Nyame Mail" 		"Nyame Gauntlets" 	"Nyame Flanchard" 	"Nyame Sollerets"
	-- Jhakri	"Jhakri Coronal +2"	"Jhakri Robe +2"	"Jhakri Cuffs +2"	"Jhakri Slops +2"	"Jhakri Pigaches +2"

	sets.precast = {				-- FC 32% 8.12.25
    		head="Welkin Crown",			-- FC 7%
    		body="Agwu's Robe",			-- FC 8%
    		hands="Agwu's Gages",			-- FC 6%
    		legs="Agwu's Slops",			-- FC 7%	
    		feet="Agwu's Pigaches",			-- FC 4%
    		neck="Baetyl Pendant",			-- FC 4%
    		waist="Embla Sash",			-- FC 5%
    		left_ear="Malignance Earring",		-- FC 4%
    		right_ear="Loquac. Earring",		-- FC 2%
    		left_ring="Kishar Ring",		
   		right_ring="Jhakri Ring",		
    		back={ name="Lugh's Cape", augments={'MND+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10',}},
							-- FC 10%
	}

	sets.precast.Impact = set_combine( sets.precast,{
		head="",
		body="Crepuscular Cloak",
    		hands="Arbatel Bracers +3",
    		legs="Arbatel Pants +3",
    		feet="Arbatel Loafers +3",
		neck="Null Loop",
    		left_ear="Malignance Earring",
		right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+11','Enmity-1',}},
		waist="Null Belt",
    		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
   		right_ring="Jhakri Ring",		
    		back="Null Shawl",
	})

	sets.midcast = {
    		head="Arbatel Bonnet +3",
    		body="Arbatel Gown +3",
    		hands="Arbatel Bracers +3",
    		legs="Arbatel Pants +3",
    		feet="Arbatel Loafers +3",
    		neck={ name="Argute Stole +1", augments={'Path: A',}},
    		-- waist="Refoccilation Stone",
		waist="Hachirin-no-Obi",
    		left_ear="Malignance Earring",
		right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+11','Enmity-1',}},
    		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Mujin Band",
    		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
	}

	sets.midcast.Impact = set_combine( sets.midcast,{
		head="",
		body="Crepuscular Cloak"
	})

	sets.midcast.Enhancing = {
    		head="Arbatel Bonnet +3",
    		hands="Arbatel Bracers +3",
		neck="Incanter's Torque",
    		waist="Embla Sash",
	}

	sets.midcast.Regen = {
    		head="Arbatel Bonnet +3",
    		hands="Arbatel Bracers +3",
	}

	sets.midcast.Enfeeble = {
    		head="Arbatel Bonnet +3",
    		body="Arbatel Gown +3",
    		hands="Arbatel Bracers +3",
    		legs="Arbatel Pants +3",
    		feet="Arbatel Loafers +3",
		neck="Null Loop",
    		left_ear="Malignance Earring",
		right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+11','Enmity-1',}},
		waist="Null Belt",
    		left_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
   		right_ring="Jhakri Ring",		
    		back="Null Shawl",
	}

	sets.midcast.DA = {
		body="Acad. Gown +1",
	}

	sets.midcast.Healing = {
		right_ear="Mendi. Earring",
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

	sets.WS['Shining Strike'] = {
    		head="Arbatel Bonnet +3",
    		body="Arbatel Gown +3",
    		hands="Arbatel Bracers +3",
    		legs="Arbatel Pants +3",
    		feet="Arbatel Loafers +3",
    		-- waist="Refoccilation Stone",
		waist="Hachirin-no-Obi",
    		left_ear="Malignance Earring",
		right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+11','Enmity-1',}},
   		left_ring="Jhakri Ring",
    		-- right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
		right_ring="Mujin Band",
    		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
	}

	sets.RA = {}

	sets.Idle = set_combine(
		SCH.main, SCH.sub, SCH.range, SCH.ammo,
	{
    		head="Arbatel Bonnet +3",
    		body="Arbatel Gown +3",
    		hands="Arbatel Bracers +3",
    		legs="Arbatel Pants +3",
    		feet="Arbatel Loafers +3",
    		neck={ name="Argute Stole +1", augments={'Path: A',}},
    		waist="Embla Sash",
    		left_ear="Malignance Earring",
		right_ear={ name="Arbatel Earring +1", augments={'System: 1 ID: 1676 Val: 0','Mag. Acc.+11','Enmity-1',}},
    		left_ring="Defending Ring",
   		right_ring="Shneddick Ring",
    		back={ name="Lugh's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Damage taken-5%',}},
	})

end

function precast(spell)
	if spell.action_type == 'Magic' then
		if spell.english == 'Impact' then
			equip(sets.precast.Impact)
		else
			equip(sets.precast)
		end
	end
end


function midcast(spell)
	if sets.JA[spell.english] then
		equip(sets.JA[spell.english])
	elseif sets.WS[spell.english] then
		equip(sets.WS[spell.english])
	else
		if spell.type == 'BlackMagic' then
			if spell.english == 'Impact' then
				equip(sets.midcast.Impact)
			elseif spell.english == 'Gravity' then
				equip(sets.midcast.Enfeeble)
			else
			-- if spell.name:contains('helix') then
			-- else
				equip(sets.midcast)
			end
		end
		if spell.type == 'WhiteMagic' then
			equip(sets.midcast.Enhancing)
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