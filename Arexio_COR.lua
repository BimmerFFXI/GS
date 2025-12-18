--Uncomment out the below line in the future if you wish to use organizer which grabs all gear and puts all gear away when you change jobs read organizer to understand more
--include('organizer-lib')

function get_sets()
    TP_Index = 1
    Idle_Index = 1

    send_command('bind f9 gs c toggle TP set') --F9
    send_command('bind f10 gs c toggle Idle set') --F10
    	sets.dt = {
		head="Malignance Chapeau",
		body="Malignance Tabard",
		hands="Nyame Gauntlets",
		legs="Malignance Tights",
		feet="Nyame Sollerets",
		left_ring="Murky Ring",
	}

	EmpyEar="Chasseur's earring +1"	
 
	EmpyHead="Chasseur's Tricorne +3" --blitzers/rapidshot/dt
	EmpyBody="Chasseur's Frac +3" --tripleshot/tacticians/dt
	EmpyHands="Chasseur's Gants +3" --wsd/phantomroll/dt/alliesroll
	EmpyLegs="Chasseur's Culottes +3" --casters/storeTP/snapshot/dt
	EmpyFeet="Chasseur's Bottes" --coursers/Quickdraw

	RelicHead="Lanun Tricorne" -- phantom roll/ duration with merits
	RelicBody="Lanun Frac" -- random deal and loaded deck
	RelicHands="Lanun Gants" --snapshot / fold
	RelicLegs="Lanun Trews" -- snapshot / snakeeye
	RelicFeet="Lanun Bottes +4" -- wsdmg(at 2 and 3) / wild card / BIS LS at 2 and 3

	AFHead="Laksamana's Tricorne" --QD +20 (low prio)
	AFBody="Laksamana's Frac" --WSdmg@ 2/3 / rapid shot (Upgrade first)
	AFHands="Laksamana's Gants" --subtle blow (low prio)
	AFLegs="Laksamana's Trews" --snapshot15 (low prio)
	AFFeet="Laksamana's Bottes" --QD +20 (low prio)

	CapeLeaden={ name="Camulus's Mantle", augments={'AGI+20','Mag. Acc+20 /Mag. Dmg.+20','AGI+10','Weapon skill damage +10%','Damage taken-5%',}}
	CapeWS={ name="Camulus's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
	CapeSnapshot=CapeLeaden
	CapeTP={ name="Camulus's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Damage taken-5%',}}
	CapeIdle=CapeTP

    sets.tripleshot = {
	body=EmpyBody,
	}

-- This is where we will define our precast sets.  These are sets of gear that get equiped BEFORE the spell or ability is used.
	sets.precast = {}
	
	sets.precast.fc = {
		head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+14','"Fast Cast"+6','Mag. Acc.+7',}},
		body={ name="Taeon Tabard", augments={'"Fast Cast"+5',}},
		hands="Leyline Gloves",
		legs={ name="Herculean Trousers", augments={'"Fast Cast"+5',}},
		feet={ name="Herculean Boots", augments={'"Fast Cast"+4','Mag. Acc.+9','"Mag.Atk.Bns."+5',}},
		neck="Magoraga Beads",
		waist="Oneiros Belt",
		right_ear="Loquac. Earring", -- 2%fc
		left_ring="Kishar Ring", --4%fc
		right_ring="Lebeche Ring", --2% quick
	}
	
	sets.precast.roll = {
		main={ name="Lanun Knife", augments={'Path: C',}},
		range="Compensator",
		head=RelicHead,
		hands=EmpyHands,
		neck="Regal Necklace",
		left_ring="Luzaf's Ring",
		right_ring="Barataria Ring",
		back=CapeIdle,
	}
	
	sets.precast.tactician_roll = {
		body=EmpyBody,
	}
	
	sets.precast.ranged_noflurry = {
		head=EmpyHead,
		body=AFBody,
		hands="Carmine Fin. Ga. +1",
		legs="Adhemar Kecks +1",
		feet="Meg. Jam. +2",
		neck="Comm. Charm +1",
		waist="Impulse Belt",
		right_ear="Enervating Earring",
		left_ring="Crepuscular Ring",
		right_ring="Cacoethic Ring",
		back=CapeSnapshot,
	}
	
	sets.precast.ranged_flurry = {
		head=EmpyHead,
		body=AFBody,
		hands="Carmine Fin. Ga. +1",
		legs="Adhemar Kecks +1",
		feet="Meg. Jam. +2",
		neck="Comm. Charm +1",
		waist="Impulse Belt",
		right_ear="Enervating Earring",
		left_ring="Crepuscular Ring",
		right_ring="Cacoethic Ring",
		back=CapeSnapshot,
	}
	
	sets.precast.ranged_flurry2 = {
		head=EmpyHead,
		body=AFBody,
		hands="Carmine Fin. Ga. +1",
		legs="Adhemar Kecks +1",
		feet="Pursuer's Gaiters",
		neck="Comm. Charm +1",
		waist="Impulse Belt",
		right_ear="Enervating Earring",
		left_ring="Crepuscular Ring",
		right_ring="Cacoethic Ring",
		back=CapeSnapshot,
	}
	
	sets.precast.randomdeal = {
		body=RelicBody,
	}
	
	sets.precast.wildcard = {
		feet=RelicFeet,
	}

	sets.precast.ws_melee = {
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame gauntlets",
		legs="Nyame Flanchard",
      		feet=RelicFeet,
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara earring",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},	
		left_ring="Ilabrat Ring",
		right_ring="Apate Ring",
		--left_ring="Regal Ring",
		--right_ring="Cornelia's Ring",
		back=CapeWS,
	}

	sets.precast.ws_savage = {
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
      		feet=RelicFeet,
		neck="Republican platinum medal",
		waist="Sailfi Belt +1",
		left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		left_ring="Ilabrat Ring",
		--left_ring="Epaminondas's Ring",
		right_ring="Apate Ring",
		--right_ring="Sroda Ring",
		back=CapeWS,
	}

	sets.precast.ws_ranged = {
		head="Nyame Helm",
		body="Nyame Mail",
		--body=AFBody,
		hands=EmpyHands,
		legs="Nyame Flanchard",
		feet=RelicFeet,
		neck="Fotia Gorget",
		waist="Fotia Belt",
		left_ear="Ishvara Earrign",
		right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
		--left_ring="Ilabrat Ring",
		right_ring="Apate Ring",
		back=CapeLeaden,
	}

	sets.precast.ws_leaden = {
		head="Pixie Hairpin +1",
		body="Nyame mail",
		hands="Nyame gauntlets" ,
		legs="Nyame Flanchard",
		feet=RelicFeet,
        	--neck="Sibyl Scarf",
		neck="Artemis's Medal",
		waist="Chaac Belt",
		--waist="Orpheus's Sash",
		left_ear="Friomisi earring",
       	 	right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
        	left_ring="Metamorph Ring +1",
		--left_ring="Epaminondas's Ring",
        	right_ring="Archon Ring",
		back=CapeLeaden,
	}

	sets.precast.ws_wildfire = {
		head="Nyame Helm",
		body=RelicBody,
		hands=EmpyHands,
		legs="Nyame Flanchard",
		feet=RelicFeet,
		neck="Sibyl Scarf",
		waist="Orpheus's Sash",
		left_ear="Friomisi Earring",
		right_ear="Novio earring",
		left_ring="Epaminondas's Ring",
		right_ring="Cornelia's Ring",
		back=CapeLeaden,
	}

	sets.precast.ws_aeolianedge = {
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
      		feet=RelicFeet,
        	neck="Sibyl Scarf",
		waist="Orpheus's Sash",
		left_ear="Friomisi earring",
       	 	right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
        	left_ring="Omega Ring",
        	right_ring="Epaminondas's Ring",
		back=CapeLeaden,
	}
	
-- This is where we will define our midcast sets.  These are sets of gear that get equiped BEFORE the spell or ability lands.
	sets.midcast = {}

	sets.midcast.waltz = {
		head="Mummu Bonnet",
		body="Passion Jacket",
		legs="Dashing Subligar",
	}

	sets.midcast.ranged = {
		
	}

	sets.midcast.corsairshot = {
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet=RelicFeet,
		neck="Sibyl Scarf",
		waist="Eschan Stone",
		left_ear="Friomisi Earring",
		right_ear="Hecate Earring",
		left_ring="Crepuscular Ring",
		right_ring="Etana Ring",
		back=CapeLeaden,
	}

	sets.midcast.corsairshot_magacc = {
		head="Nyame Helm",
		body="Nyame mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Voltsurge Torque",
		waist="Eschan Stone",
		left_ear="Gwati Earring",
		right_ear=EmpyEar,
		left_ring="Apate Ring",
		right_ring="Kishar Ring",
		back=CapeLeaden,
	}
        -- Add any set names here to be toggled with F9, ensure the set exists as a sets.TP[nameofset] below
	-- Currently removed and commented out sets: "Delay Cap","Evasion",
    TP_Set_Names = {"Low Man","Acc","DT"}
    sets.TP = {}
    sets.TP['Low Man'] = {
	range="Doomsday",       	
	ammo="Decimating Bullet",
	head=EmpyHead,
        body="Mummu jacket +2",
        hands="Malignance Gloves",
	legs=EmpyLegs,
        feet="Mummu gamashes +2",
        neck="Combatant's Torque",
        waist="Sailfi belt +1",
        left_ear="Suppanomimi",
        right_ear="Crepuscular earring",
        left_ring="Rajas Ring",
        right_ring="Murky Ring",
        back=tp_back,
    }
        
 
    sets.TP['Acc'] = set_combine(sets.TP['Low Man'],{
	neck="Null Loop",
	waist="Null Belt",
})
                
    sets.TP.DT = set_combine(sets.TP['Low Man'],{
        neck="Null loop",
	body=EmpyBody,
	hands="Malignance Gloves",
	legs=EmpyLegs,
        right_ring="Murky Ring",
    })
    

-- Add any set names here to be toggled with F10, ensure the set exists as a sets.idle.nameofset below
-- Currently removed and commented out sets: ,"STP"
    Idle_Set_Names = {'Movement','AllDT'}
    sets.Idle = {}
    sets.Idle.Movement = {
       	head=EmpyHead,
        body=EmpyBody,
	hands="Malignance Gloves",
	legs="Carmine Cuisses +1",
        feet="Nyame Sollerets",
        neck="Null loop",
        waist="Null Belt",
        left_ear="Alabaster Earring",
        right_ear="Crepuscular earring",
        left_ring="Defending Ring",
        right_ring="Murky Ring",
    	back=CapeTP,
    }
                
    sets.Idle.AllDT = set_combine(sets.Idle.Normal,{
      	legs="Nyame Flanchard",
	
    })
    
--[[
    sets.Idle['STP'] = {}
]]
    
        
    sets.FastCast = {
        neck="Magoraga Beads",
	head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+14','"Fast Cast"+6','Mag. Acc.+7',}},
	hands="Leyline Gloves",
        right_ear="Loquac. Earring", -- 2%fc
	left_ring="Kishar Ring", --4%fc
	right_ring="Lebeche Ring", --2% quick

    }
    
    
--    sets.frenzy = {head="Frenzy Sallet"}
end

---------------------------------------------------------------------------------------------------------------------------
function precast(spell)

	if spell.english == "Utsusemi: Ichi" then
		if buffactive['Copy Image'] then
			send_command('cancel 66')
		elseif buffactive['Copy Image (2)'] then 
			send_command('cancel 444')
		elseif buffactive['Copy Image (3)'] then
			send_command('cancel 445')
		elseif buffactive['Copy Image (4+)'] then
			send_command('cancel 446')
		end
	end
	
	if spell.action_type == 'Ranged Attack' then
		if preshot_mode == "flurry2" then
			equip(sets.precast.ranged_flurry2)
		elseif preshot_mode == "flurry" then
			equip(sets.precast.ranged_flurry)
		else
			equip(sets.precast.ranged_noflurry)
		end
	elseif (spell.type == 'CorsairRoll' or spell.english == "Double-Up") then
		-- Get current weapons before rolling
		if(player.equipment.main == "Lanun Knife" and tp_mode == "ranged") then
			beforeRollWeapons = {main={ name=player.equipment.main, augments={'Path: A',}},sub=player.equipment.sub,range=player.equipment.range}
		elseif(player.equipment.main == "Lanun Knife" and tp_mode ~= "ranged") then
			beforeRollWeapons = {main={ name=player.equipment.main, augments={'Path: B',}},sub=player.equipment.sub,range=player.equipment.range}
		else
			beforeRollWeapons = {main=player.equipment.main,sub=player.equipment.sub,range=player.equipment.range}
		end
		
		if spell.english == "Tactician's Roll" then
			equip (set_combine(sets.precast.roll,sets.precast.tactician_roll))
		else
			equip(sets.precast.roll)
		end
	elseif spell.english == 'Random Deal' then
		equip(sets.precast.randomdeal)
	elseif spell.english == 'Wild Card' then
		equip(sets.precast.wildcard)
	elseif spell.english == "Savage Blade" then
		equip(sets.precast.ws_savage)
	elseif spell.english == "Aeolian Edge" then
		equip(sets.precast.ws_aeolianedge)
	elseif spell.english == "Leaden Salute" then
		equip (sets.precast.ws_leaden)
	elseif spell.english == "Wildfire" then
		equip (sets.precast.ws_wildfire)
	elseif spell.type == "WeaponSkill" and spell.skill == "Marksmanship" then
		equip (sets.precast.ws_ranged)
	elseif spell.type == "WeaponSkill" then
		equip (sets.precast.ws_melee)
	elseif spell.action_type == "Magic" then
		equip(sets.precast.fc)
	end
	
	-- Matching weather
	if spell.element == world.weather_element then
		equip({waist="Hachirin-no-Obi"})
	end

end
---------------------------------------------------------------------------------------------------------------------
function midcast(spell, act)	
	if spell.action_type == 'Ranged Attack' then
		if buffactive['Triple Shot'] then
			equip(set_combine(sets.midcast.ranged,sets.tripleshot))
		else
			equip(sets.midcast.ranged)
		end
	elseif spell.english == "Light Shot" or spell.english == "Dark Shot" then
		equip(sets.midcast.corsairshot_magacc)
	elseif spell.type == 'CorsairShot' then
		equip(sets.midcast.ranged)
	elseif spell.english:contains('Waltz') then
		equip (sets.midcast.waltz)
	elseif spell.type == "Trust" then
		equip(sets.precast.fc)
	end
end
---------------------------------------------------------------------------------------------------------------------



function aftercast(spell)
    if player.status=='Engaged' then
        equip(sets.TP[TP_Set_Names[TP_Index]])
    else
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    end
end

function status_change(new,old)
    if T{'Idle','Resting'}:contains(new) then
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    elseif new == 'Engaged' then
        equip(sets.TP[TP_Set_Names[TP_Index]])
    end
end

function buff_change(buff,gain_or_loss)
    if buff=="Sneak Attack" then
        soloSA = gain_or_loss
    elseif buff=="Trick Attack" then
        soloTA = gain_or_loss
    elseif buff == "Feint" then
	equip({legs="Plunderer's Culottes +3"})
    elseif gain_or_loss and buff == 'Sleep' and player.hp > 99 then
        print('putting on Frenzy sallet!')
        equip(sets.frenzy)
    end
end

function self_command(command)
    if command == 'toggle TP set' then
        TP_Index = TP_Index +1
        if TP_Index > #TP_Set_Names then TP_Index = 1 end
        send_command('@input /echo ----- TP Set changed to '..TP_Set_Names[TP_Index]..' -----')
        equip(sets.TP[TP_Set_Names[TP_Index]])
    elseif command == 'toggle Idle set' then
        Idle_Index = Idle_Index +1
        if Idle_Index > #Idle_Set_Names then Idle_Index = 1 end
        send_command('@input /echo ----- Idle Set changed to '..Idle_Set_Names[Idle_Index]..' -----')
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    end
end