
--Turin

-- Load and initialize the include file.
include('Mirdain-Include')

--Set to ingame lockstyle and Macro Book/Set
LockStylePallet = "10"
MacroBook = "1"
MacroSet = "1"

-- Use "gs c food" to use the specified food item 
Food = "Sublime Sushi"

--Uses Items Automatically
AutoItem = false

--Upon Job change will use a random lockstyleset
Random_Lockstyle = false

--Lockstyle sets to randomly equip
Lockstyle_List = {1,2,6,12}

--Set default mode (TP,ACC,DT)
state.OffenseMode:options('TP','ACC','DT','PDL','SB','MEVA') -- ACC effects WS and TP modes
state.OffenseMode:set('DT')

--Modes for specific to Ninja
state.WeaponMode:options('Heishi Shorinken','Savage Blade','Yagyu Darkblade','Tauret')
state.WeaponMode:set('Heishi Shorinken')

elemental_ws = S{'Aeolian Edge', 'Blade: Teki', 'Blade: To','Blade: Chi','Blade: Ei','Blade: Yu'}

jobsetup (LockStylePallet,MacroBook,MacroSet)

function get_sets()
	--Set the weapon options.  This is set below in job customization section

	-- Weapon setup
	sets.Weapons = {}

	sets.Weapons['Heishi Shorinken'] = {
		main="Heishi Shorinken",
		sub="Enchu +2",
	}

	sets.Weapons['Savage Blade'] = {
		main="Naegling",
		sub="Uzura +2",
	}

	sets.Weapons['Yagyu Darkblade'] = {
		sub="Yagyu Darkblade",
	}

	sets.Weapons['Aeolian Edge'] = {
		main="Tauret",
		sub="Enchu +2",
	}

	sets.Weapons.Shield = {}
	sets.Weapons.Sleep = {}

	-- Standard Idle set with -DT, Refresh, Regen and movement gear
	sets.Idle = {
    	head="Hachi. Hatsu. +4",
		neck="Combatant's Torque",
		left_ear="Brutal Earring",
		right_ear="Cessance Earring",
		body="Hiza. Haramaki +2",
    	hands={ name="Tatena. Gote +1", augments={'Path: A',}},
		left_ring="Defending Ring",
		right_ring="Regal Ring",
    	back={ name="Andartia's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Damage taken-5%',}},
    	waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		-- legs="Hattori Hakama +2",
		legs={ name="Tatena. Haidate +1", augments={'Path: A',}},
		feet="Hattori Kyahan +3",
    }

	sets.Idle.TP = set_combine(sets.Idle, {})
	sets.Idle.ACC = set_combine(sets.Idle, {})
	sets.Idle.DT = set_combine(sets.Idle, {})
	sets.Idle.PDL = set_combine(sets.Idle, {})
	sets.Idle.SB = set_combine(sets.Idle, {})
	sets.Idle.MEVA = set_combine(sets.Idle, {
		neck="Warder's Charm +1",
		waist="Carrier's Sash",
	})

	--Defined below based off time of day
	sets.Movement = {
		right_ring="Shneddick Ring",
	}

	-- Set to be used if you get 
	sets.Cursna_Received = {
	    neck="Nicander's Necklace",
	    left_ring={ name="Eshmun's Ring", bag="wardrobe1", priority=2},
		right_ring={ name="Eshmun's Ring", bag="wardrobe2", priority=1},
		waist="Gishdubar Sash",
	}

	sets.OffenseMode = {}

	--Base TP set to build off
	sets.OffenseMode.TP = {
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
	}
	--This set is used when OffenseMode is DT and Enaged (Augments the TP base set)
	
	sets.OffenseMode.DT = set_combine (sets.OffenseMode.TP, {
	    head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
	})
	--This set is used when OffenseMode is ACC and Enaged (Augments the TP base set)
	sets.OffenseMode.ACC = set_combine (sets.OffenseMode.TP, {
	    head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
	})
	sets.OffenseMode.PDL = set_combine (sets.OffenseMode.TP, {
	    head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Malignance Gloves",
		legs="Malignance Tights",
		feet="Malignance Boots",
	})

	sets.OffenseMode.MEVA = set_combine(sets.OffenseMode.DT,{
		neck={ name="Warder's Charm +1", augments={'Path: A',}},
	})

	sets.OffenseMode.SB = set_combine(sets.OffenseMode.DT,{ })

	sets.DualWield = {}

	sets.Precast = {}
	-- Used for Magic Spells
	sets.Precast.FastCast = {
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
	} -- 67

	sets.Precast.Utsusemi = {
		neck="Magoraga Beads", -- 10 FC (+6)
	}

	sets.Precast.QuickMagic = {

	}

	sets.Enmity = { -- Head and Back upgrade slots
		ammo="Sapience Orb", --2
		body="Emet Harness +1", --10
		hands="Kurys Gloves", --9
		--="Zoar Subligar +1", --6
		feet="Ahosi Leggings", --7
		neck="Moonlight Necklace", --15
		waist="Kasiri Belt", --3
		left_ear="Cryptic Earring", --4
		right_ear="Friomisi Earring", --2
		left_ring="Petrov Ring", --4
		right_ring="Eihwaz Ring", --5
	}

	--Base set for midcast - if not defined will notify and use your idle set for surviability
	sets.Midcast = set_combine(sets.Idle, {
	
	})
	-- Utsusemi Set
	sets.Midcast.Utsusemi = {
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
	--This set is used as base as is overwrote by specific gear changes (Spell Interruption Rate Down)
	sets.Midcast.SIRD = {}
	-- Cure Set
	sets.Midcast.Cure = {}
	-- Enhancing Skill
	sets.Midcast.Enhancing = {
		hands={ name="Mochizuki Tekko +3", augments={'Enh. "Ninja Tool Expertise" effect',}},
	}
	-- High MACC for landing spells
	sets.Midcast.Enfeebling = {
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
	-- High MAB for spells
	sets.Midcast.Nuke = {
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

	-- Specific gear for spells
	sets.Midcast["Stoneskin"] = {waist="Siegel Sash",}

	sets.JA = {}
	sets.JA["Futae"] = {} --hands="Hattori Tekko"
	sets.JA["Berserk"] = {}
	sets.JA["Warcry"] = {}
	sets.JA["Defender"] = {}
	sets.JA["Aggressor"] = {}
	sets.JA["Provoke"] = sets.Enmity
	sets.JA["Mijin Gakure"] = {}
	sets.JA["Yonin"] = {head={ name="Mochi. Hatsuburi +3", augments={'Enhances "Yonin" and "Innin" effect',}}}
	sets.JA["Innin"] = {head={ name="Mochi. Hatsuburi +3", augments={'Enhances "Yonin" and "Innin" effect',}}}
	sets.JA["Issekigan"] = {}
	sets.JA["Mikage"] = {}

	--Default WS set base
	sets.WS = {
		ammo="Yetshila +1",
		head={ name="Nyame Helm", augments={'Path: B',}},
		body={ name="Nyame Mail", augments={'Path: B',}},
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs={ name="Nyame Flanchard", augments={'Path: B',}},
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck={ name="Ninja Nodowa +2", augments={'Path: A',}},
		waist={ name="Sailfi Belt +1", augments={'Path: A',}},
		left_ear="Odr Earring",
		right_ear="Ishvara Earring",
		left_ring="Gere Ring",
		right_ring="Epona's Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','AGI+10','Weapon skill damage +10%','Damage taken-5%',}},
	}

	sets.WS.WSD = set_combine({ sets.WS,
		left_ring="Epaminondas's Ring",
		right_ring="Karieyh Ring +1",
	})

	--This set is used when OffenseMode is ACC and a WS is used (Augments the WS base set)
	sets.WS.ACC = set_combine({ sets.WS,	    
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
	})

	sets.WS.CRIT = {
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
	sets.WS.MAB = set_combine({ sets.WS,
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
	})
	--WS Sets
	sets.WS["Blade: Rin"] = sets.WS.CRIT
	sets.WS["Blade: Retsu"] = {}
	sets.WS["Blade: Teki"] = sets.WS.MAB
	sets.WS["Blade: To"] = sets.WS.MAB
	sets.WS["Blade: Chi"] = sets.WS.MAB
	sets.WS["Blade: Ei"] = set_combine(sets.WS.MAB, {head="Pixie Hairpin +1", left_ring="Archon Ring"})
	sets.WS["Blade: Jin"] = sets.WS.CRIT
	sets.WS["Blade: Ten"] = {
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
	sets.WS["Blade: Ku"] = {}
	sets.WS["Blade: Kamu"] = {}
	sets.WS["Blade: Yu"] = sets.WS.MAB
	sets.WS["Blade: Hi"] = sets.WS.CRIT
	sets.WS["Blade: Shun"] = {
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

	sets.WS["Asuran Fists"] = {
	    ammo="Yetshila +1",
		head="Ken. Jinpachi +1",
		body="Ken. Samue +1",
		hands="Ken. Tekko +1",
		legs="Ken. Hakama +1",
		feet="Ken. Sune-Ate +1",
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earring",
		right_ear="Odr Earring",
		left_ring="Hetairoi Ring",
		right_ring="Gere Ring",
		back={ name="Andartia's Mantle", augments={'AGI+20','Accuracy+20 Attack+20','AGI+10','Weapon skill damage +10%','Damage taken-5%',}},
	}

	sets.WS["Savage Blade"] = {
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

	sets.TreasureHunter = {
	    head="Volte Cap",
		body="Volte Jupon",
		waist="Chaac Belt",
	}

end

-------------------------------------------------------------------------------------------------------------------
-- DO NOT EDIT BELOW THIS LINE UNLESS YOU NEED TO MAKE JOB SPECIFIC RULES
-------------------------------------------------------------------------------------------------------------------

-- Called when the player's subjob changes.
function sub_job_change_custom(new, old)
	-- Typically used for Macro pallet changing
end

--Adjust custom precast actions
function pretarget_custom(spell,action)

end
-- Augment basic equipment sets
function precast_custom(spell)
	equipSet = {}

	return equipSet
end
-- Augment basic equipment sets
function midcast_custom(spell)
	equipSet = {}

	return equipSet
end
-- Augment basic equipment sets
function aftercast_custom(spell)
	equipSet = {}
	return equipSet
end
--Function is called when the player gains or loses a buff
function buff_change_custom(name,gain)
	equipSet = {}
	return equipSet
end
--This function is called when a update request the correct equipment set
function choose_set_custom()
	equipSet = {}
	return equipSet
end
--Function is called when the player changes states
function status_change_custom(new,old)
	equipSet = {}
	return equipSet
end
--Function is called by the gearswap command
function self_command_custom(command)

end

-- This function is called when the job file is unloaded
function user_file_unload()

end

function check_buff_JA()
	buff = 'None'
	local ja_recasts = windower.ffxi.get_ability_recasts()
	if player.sub_job == 'WAR' then
		if not buffactive['Berserk'] and ja_recasts[1] == 0 then
			buff = "Berserk"
		elseif not buffactive['Aggressor'] and ja_recasts[4] == 0 then
			buff = "Aggressor"
		elseif not buffactive['Warcry'] and ja_recasts[2] == 0 then
			buff = "Warcry"
		end
	end
	return buff
end

function check_buff_SP()
	buff = 'None'
	--local sp_recasts = windower.ffxi.get_spell_recasts()
	return buff
end

Cycle_Time = 1
function Cycle_Timer()
	if world.time >= 17*60 or world.time <= 7*60 then
		if world.time >= (18*60) or world.time <= (6*60) then
			sets.Movement = set_combine(sets.Movement, sets.Movement.Night)
			log('Night Feet')
		else
			sets.Movement = set_combine(sets.Movement, sets.Movement.Dusk)
			log('Dusk Feet')
		end
	else
		sets.Movement = set_combine(sets.Movement, sets.Movement.Day)
		log('Day Feet')
	end
end

function pet_change_custom(pet,gain)
	equipSet = {}
	
	return equipSet
end

function pet_aftercast_custom(spell)
	equipSet = {}

	return equipSet
end

function pet_midcast_custom(spell)
	equipSet = {}

	return equipSet
end