--Uncomment out the below line in the future if you wish to use organizer which grabs all gear and puts all gear away when you change jobs read organizer to understand more
--include('organizer-lib')


function get_sets()
    TP_Index = 1
    Idle_Index = 1
    Weapon_Index = 1

    auto_casting=false

function auto_cast()
    if auto_casting then
  
        send_command('@input /ma "Cure" <me>; wait 6;' ..
            ' input /ma "Barfira" <me>; wait 5;' ..
            ' input //gs c auto_cast')

    end
end

    send_command('bind f9 gs c toggle TP set') --F9
    send_command('bind f10 gs c toggle Idle set') --F10
    send_command('bind f11 gs c toggle weaponlock') --F11

    sets.JA = {}
    
    white_magic_maps = {}

    white_magic_maps.Barstatus = S{
	'Barsleepra','Barpoisonra','Barparalyzra','Barblindra',
	'Barblindra','Barsilencera','Barpetra','Barvira',
	'Baramnesra',
    }

    white_magic_maps.Removal = S{
	'Poisona','Paralyna','Blindna','Silena',
	'Stona','Viruna','Cursna','Erase',
    }

    white_magic_maps.CureLow = S{
	'Cure','Cure II','Cure III','Cure IV',
	'Curaga','Curaga II','Curaga III',
    }
    
	EmpyHead="Ebers Cap +2"
	EmpyBody="Ebers Bliaut +2"
	EmpyHands="Ebers Mitts +2"
	EmpyLegs="Ebers Pantaloons +3"
	EmpyFeet="Ebers Duckbills"

	RelicHead="Piety Cap"
	RelicBody="Piety Bliaut"
	RelicHands="Piety Mitts"
	RelicLegs="Piety Pantaloons"
	RelicFeet="Piety Duckbills"

	AFHead="Theophany Cap"
	AFBody="Theophany Bliaud"
	AFHands="Theophany Mitts"
	AFLegs="Theophany Pantaloons"
	AFFeet="Theophany Duckbills"
	
	SortieEarring="Ebers Earring +1"

	CapeFC={ name="Alaunus's Cape", augments={'MND+20','Eva.+20 /Mag. Eva.+20','MND+10','"Fast Cast"+10','Phys. dmg. taken-10%',}}

	
    sets.WS = {
	
}
    
    
    sets.WS.Randgrith = set_combine(sets.WS,{})

    sets.WS["Earth Crusher"] = set_combine(sets.WS,{
 
    })

   -- sets.WS[""] = {}
      
    sets.Obi = {
	waist="Hachirin-no-obi", back="Twilight Cape",
		
}

-----------------------------------------------------------------------------------------------------------------------
        -- Add any set names here to be toggled with F9, ensure the set exists as a sets.TP[nameofset] below
	
    TP_Set_Names = {"Low Man","Low Acc","DT"}
    sets.TP = {}
    sets.TP['Low Man'] = {
	head="Nyame Helm",
    	body="Nyame Mail",
    	hands="Nyame Gauntlets",
    	legs=EmpyLegs,
    	feet="Herald's Gaiters",
    	neck="Cleric's Torque",
    	waist="Emphatikos Rope",
    	left_ear="Loquac. Earring",
    	right_ear="Etiolation Earring",
    	left_ring="Ayanmo Ring",
    	right_ring="Janniston Ring",
    	back=CapeFC,
        
    }

    sets.TP['Low Acc'] = set_combine(sets.TP['Low Man'],{
                
    })
        
                
    sets.TP.DT = set_combine(sets.TP['Low Man'],{
        neck="Twilight Torque",
        left_ring="Murky Ring",

    })
    
-----------------------------------------------------------------------------------------------------------------------------------------
-- Add any set names here to be toggled with F10, ensure the set exists as a sets.idle.nameofset below
   
    Idle_Set_Names = {'RefreshDT','Movement'}
    sets.Idle = {}

    sets.Idle.RefreshDT = {    
   	ammo="Staunch Tathlum",
	head="Nyame Helm",
    	body=EmpyBody,
    	hands=EmpyHands,
    	legs=EmpyLegs,
    	feet="Herald's Gaiters",
    	neck="Loricate Torque +1",
    	waist="Embla Sash",
    	left_ear="Etiolation Earring",
    	right_ear=SortieEarring,
    	left_ring="Ayanmo Ring",
    	right_ring="Murky Ring",
    	back=CapeFC,
    }

    sets.Idle.Movement = set_combine(sets.Idle.RefreshDT,{
	feet="Herald's Gaiters",
    })
-------------------------------------------------------------------------------------------------------------------------------------
        
    sets.FastCast = {
	
	--ammo="Incantor Stone", -- fc 2%
	--neck="Voltsurge Torque", --fc 4%
	head=EmpyHead,
	--hands="Gendewitha gages +1", --fc 7% skirmish
	hands="Chironic Gloves",
	legs="Ayanmo Cosciales +2", --fc 5%
	feet="Chironic Slippers",
	--feet="Rostrum Pumps",
	--feet="Regal Pumps +1", --fc 5-7% -- unity nm
	--waist="Embla Sash", --fc 5%
	left_ear="Etiolation Earring",
    	right_ear="Loquac. Earring", --fc 2%
	left_ring="Prolix Ring",
	--right_ring="Kishar ring",
    	back=CapeFC, 
}
       
    sets.precast_Cure = set_combine(sets.FastCast,{
	--head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}},
	--body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
	--hands={ name="Vanya Cuffs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    	legs=EmpyLegs, -- healing magic cast time -13%
	--feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}},
	right_ear="Nourishing Earring", -- cure spellcasting 5%
    	
})
    sets.precast_Raise = set_combine(sets.FastCast,{
	legs=EmpyLegs, -- healing magic cast time -13%
	back="Perimede Cape", --quickeen +4
	--waist="Witful Belt", --fc 3%, 3% QC
	--left_ring="Lebeche ring" --QC +2%
    	
})
	
    sets.precast_Enhancing = set_combine(sets.FastCast,{
	--waist="Siegel sash",
})

----------------------------------------------------------------------------------------------------------------------

    sets.midcast = {
	head=EmpyHead,
    	body=EmpyBody,
    	hands=EmpyHands,
    	legs=EmpyLegs,
    	--feet=EmpyFeet,
    	neck="Cleric's Torque",
    	waist="Emphatikos Rope",
    	--left_ear="Gifted Earring",
    	--right_ear="Ebers earring +1",
    	--left_ring={ name="Diamond Ring", augments={'INT+3','Spell interruption rate down -5%','MND+2',}},
    	--right_ring="Omega Ring",
    	back=CapeFC,
}
    
    sets.midcast_Cure = {
	main="Ames", --22% pot
	--sub="Diamond Aspis", 
	head=EmpyHead, --19% pot
    	body=EmpyBody, --healing magic skill +29
	hands=EmpyHands,
    	--hands={ name="Bokwus Gloves", augments={'"Mag.Atk.Bns."+6','INT+1',}}, --13% pot -3 enmity
    	legs=EmpyLegs, --always for cures for mp
    	--feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}}, --10% pot total
    	neck="Cleric's Torque", -- -2enmity
    	waist="Emphatikos Rope", --5 MND -3 enmity
    	--left_ear="", --Mendicant 5% potency  conserve mp+2 (Maybe switch for Orison cpot2 and enmity -3)
    	right_ear="Nourishing Earring", --Healing magic skill & enmity -7
	--left_ring="Janniston Ring",
    	right_ring="", 
    	back=CapeFC,
    }

    sets.midcast_Enfeeble = set_combine(sets.midcast,{

    })
	
    sets.midcast_Enhancing = set_combine(sets.midcast,{
	body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +6',}},
    	hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +6',}},
    	legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +8',}},
    	feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
	waist="Embla Sash",
    })

    sets.midcast_Healing = set_combine(sets.midcast,{

    	back=CapeFC,
	
})

     sets.midcast_Raise = set_combine(sets.precast_Raise,{
  	
	
})

    sets.midcast_Regen = set_combine(sets.midcast_Enhancing,{
	sub="Diamond Aspis",
	head="Inyanga Tiara +2",
	body=RelicBody, 
	hands=EmpyHands,
	waist="Embla Sash",
	
})

    sets.midcast_Barspells = set_combine(sets.midcast_Enhancing,{
	ammo="Plumose Satchet",
	head=EmpyHead,
	hands=EmpyHands,
	body=EmpyBody,
	legs=RelicLegs,
	feet=EmpyFeet,
	
})

    sets.midcast_Auspice = set_combine(sets.midcast_Enhancing,{
	feet=EmpyFeet,
	
})

    sets.midcast_Cursna = {
	ammo="Plumose Satchet",
	head=EmpyHead,
    	body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    	hands="Fanatic gloves",
    	legs=RelicLegs,
    	--feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    	neck="Malison Medallion",
    	waist="Cleric's Belt",
    	--left_ear="Mendi. Earring",
    	--right_ear="Ebers earring +1",
    	left_ring="Menelaus's Ring",
    	right_ring="Haoma's Ring",
    	back=CapeFC,
}



    sets.midcast_Erase = set_combine(sets.midcast_Healing,{
    	neck="Cleric's Torque",

    })

    sets.midcast_CureLow = set_combine(sets.midcast_Cure,{
    	--main="Raetic rod +1",
	--sub="Genmei Shield",

    })

    sets.midcast_Removal = {
	--main="Yagrush",
    }

    sets.midcast_Aquaveil = set_combine(sets.midcast_Enhancing,{
	head="Chironic Hat",
	waist="Emphatikos Rope",
    })


end

-----------------------------------------------------------------------------------------------------------------------------

function precast(spell)
    if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
    elseif spell.type == "WeaponSkill" then
        if sets.WS[spell.english] then
            equip(sets.WS[spell.english])
        end
        if spell.element == world.weather_element or spell.element == world.day_element then
            equip(sets.Obi)
        end
    elseif spell.english == 'Impact' then
        equip(sets['FastCast'], {body="Twilight Cloak"})
    elseif spell.english == 'Cursna' then
        equip(sets['FastCast'], {legs="Ebers Pantaloons +3"})
    elseif string.find(spell.english, 'Arise') or string.find(spell.english, 'Raise') or string.find(spell.english, 'Reraise') then
    	equip(sets.precast_Raise)    
    elseif spell.skill == 'Healing Magic' then
        if string.find(spell.english, 'Cur') then 
            equip(sets.precast_Cure)
            if spell.element == world.weather_element or spell.element == world.day_element then
                equip({main="Chatoyant Staff",sub="Bugard leather strap +1"})
            else
                equip({})
            end
        else
            equip(sets.precast_Cure)
        end
    elseif spell.skill == 'Enhancing Magic' then 
		equip(sets.precast_Enhancing)
        
    elseif spell.action_type == "Magic" then
        equip(sets.FastCast)
    end
	

end


-------------------------------------------------------------------------------------------------------------------------------

function midcast(spell)
    if spell.english == 'Cursna' then
        equip(sets['midcast_Cursna'])
    elseif spell.english == 'Aquaveil' then
        equip(sets['midcast_Aquaveil'])
    elseif white_magic_maps.CureLow:contains(spell.english) then
		equip(sets.midcast_CureLow)

    elseif string.find(spell.english, 'Cur') then
        equip(sets.midcast_Cure)
        if spell.element == world.weather_element or spell.element == world.day_element then
            equip({main="Chatoyant Staff"}, sets.Obi)
        end

    elseif white_magic_maps.Barstatus:contains(spell.english) then
		equip(sets.midcast_Barspells, {neck="Sroda Necklace"})

    elseif string.find(spell.english, 'Regen') then
        equip(sets.midcast_Regen)
    
    elseif string.find(spell.english, 'Erase') then
        equip(sets.midcast_Erase)

    elseif string.find(spell.english, 'Arise') or string.find(spell.english, 'Raise') or string.find(spell.english, 'Reraise') then
    	equip(sets.midcast_Raise)

    elseif string.find(spell.english, 'Bar') then
        equip(sets.midcast_Barspells)

    elseif string.find(spell.english, 'Auspice') then
        equip(sets.midcast_Auspice)
    
    elseif string.find(spell.english, 'Dia') then
        equip(sets.midcast_Dia)
  
    elseif spell.skill == 'Enhancing Magic' then
        equip(sets['midcast_Enhancing'])
    
    elseif spell.skill == 'Enfeebling Magic' then
        equip(sets['midcast_Enfeeble'])

    elseif spell.skill == 'Healing Magic' then
        equip(sets['midcast_Healing'])
    end

    if spell.english == 'Sneak' then
        send_command('@wait 1.8;cancel 71;')
    end
    if white_magic_maps.Removal:contains(spell.english) then
		equip(sets.midcast_Removal)
    end
end



------------------------------------------------------------------------------------------------------------------------------

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
    elseif gain_or_loss and buff == 'Sleep' and player.hp > 99 then
        print('putting on Frenzy sallet!')
        equip(sets.frenzy)
    end
end

function self_command(command)
     if command == 'start_loop' then
		auto_casting=true
		send_command('@input /echo autocasting has started')
		auto_cast()
    	elseif command == 'stop_loop' then
		auto_casting = false
		send_command('@input /echo autocast has stopped.')
	elseif command == 'auto_cast' then
		auto_cast()
    end    

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
    elseif command == 'toggle weaponlock' then
    		Weapon_Index = Weapon_Index + 1
    	if Weapon_Index > 2 then
        	Weapon_Index = 1
    	end

    	if Weapon_Index == 1 then
        	send_command('@input //gs disable main sub')
        	send_command('@input /echo ----- Weapon and sub are disabled -----')
    	elseif Weapon_Index == 2 then
       		send_command('@input //gs enable main sub')
        	send_command('@input /echo ----- Weapon and sub are enabled -----')
    end
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    end
end