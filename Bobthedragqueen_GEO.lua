--Uncomment out the below line in the future if you wish to use organizer which grabs all gear and puts all gear away when you change jobs read organizer to understand more
--include('organizer-lib')

function get_sets()
    TP_Index = 1
    Idle_Index = 1
    Weapon_Index = 2
    Cast_Index = 1
    Regen_Index = 1
    MB_Index = 1
    Elem_Index = 1
    MP_Index = 1
    auto_casting=false -- needed for skillups

    send_command('bind f9 gs c toggle TP set') --F9
    send_command('bind f10 gs c toggle Idle set') --F10
    send_command('bind f11 gs c toggle weaponlock') --F11
    send_command('bind f12 gs c toggle castmode') --F12

    -- Make a macro to send command "toggle Regen" to toggle Regen mode from potency to duration 
    -- /console gs c toggle Regen
    -- Make a macro to send command "toggle MB" to toggle magic burst mode on/off 
    -- /console gs c toggle MB

    Cast_Set_Names = {'Damage','Safety',}
    Regen_Set_Names = {'Potency','Duration',}
    MB_Names = {'Off','On'}
    Gain_MP_Names = {'Off','On'}

-- this is for skilling up

function auto_cast()
	if auto_casting then
		send_command('@input /ma "Indi-Refresh" <me>; wait 5;' ..
		' input /ma "Geo-Regen" <me>; wait 5;' ..	
		' input /ma "Indi-Precision" <me>; wait 5;' ..	
		' input /ma "Indi-Voidance" <me>; wait 5;' ..
		' input /ma "Indi-Poison" <me>; wait 5;' ..		
		' input /ja "Radial Arcana" <me>; wait 2;' ..
		' input //gs c auto_cast')
	end
end



    sets.JA = {}
    sets.JA['Concentric Pulse'] = {head=RelicHead,}
    sets.JA['Full Circle'] = {head=EmpyHead, hands=RelicHands, }
    sets.JA['Bolster'] = {body=RelicBody,}
    sets.JA['Mending Halation'] = {legs=RelicLegs,}
    sets.JA['Radial Arcana'] = {feet=RelicFeet,}
    
    white_magic_maps = {}

    white_magic_maps.Barstatus = S{
	'Barsleepra','Barpoisonra','Barparalyzra','Barblindra',
	'Barsilencera','Barpetra','Barvira','Baramnesra',	
	'Barsleep','Barpoison','Barparalyze','Barblind',
	'Barsilence','Barpetrify','Barvirus','Baramnesia',	
    }

    

    white_magic_maps.CureLow = S{
	'Cure','Cure II','Cure III','Cure IV',
	'Curaga','Curaga II','Curaga III',
    }

    black_magic_maps = {}

    black_magic_maps.NukeLow = S{
	'Stone','Stone II','Stone III',
	'Aero','Aero II','Aero III',
	'Water','Water II','Water III',
	'Blizzard','Blizzard II','Blizzard III',
	'Fire','Fire II','Fire III',    
	'Thunder','Thunder II',
	'Stonega','Stonega II',
	'Aeroga','Aeroga II',
	'Waterga','Waterga II',
	'Blizzaga','Blizzaga II',
	'Firaga','Firaga II',    
	'Thundaga','Thundaga II',
	'Stonera','Stonera II',
	'Aera','Aera II',
	'Watera','Watera II',
	'Blizzara','Blizzara II',
	'Fira','Fira II',    
	'Thundara','Thundara II',
		
    }

    black_magic_maps.ElemDebuff = S{
    'Burn','Shock','Choke','Rasp','Drown','Frost',
    }

    black_magic_maps.Drain = S{
    'Drain','Aspir','Aspir II','Aspir III',
    }

    EmpyHead="Azimuth Hood +3" -- nuke, full circle, dt, petregen (PRIO)
    EmpyBody="Azimuth Coat +3" -- nuke/mb, refresh idle 
    EmpyHands="Azimuth Gloves +3" -- enfeebling / dt (PRIO)
    EmpyLegs="Azimuth Tights +3" -- nuke/mb/ dark magic skill
    EmpyFeet="Azimuth Gaiters +3" -- Indi-spells / dt (PRIO)

    AFHead="Geomancy Galero +1" -- Cardinal Chant (directionals)
    AFBody="Geomancy Tunic +1" -- Life Cycle/ Dark magic / Refresh +3
    AFHands="Geomancy Mitaines +2"-- Luopon dt -13 (+3 mit/idris/dunna enough) (UPGRADE)
    AFLegs="Geomancy Pants" -- Fast Cast 15 / SIRD 24 (UPGRADE LAST)
    AFFeet="Geomancy Sandals +4" -- Movement speed (UPGRADE)

    RelicHead="Bagua Galero" -- concentric/ primeval/ drain/aspir luponhp?
    RelicBody="Bagua Tunic" -- bolster
    RelicHands="Bagua Mitaines" -- elem precast / MB dmg (UPGRADE LAST)
    RelicLegs="Bagua Pants" --  indi-duration (UPGRADE)
    RelicFeet="Bagua Sandals +4" --  luopon regen / enfeebling 57macc (UPGRADE)

    SortieEar="Azimuth Earring +1"
    RelicNeck="Bagua Charm +2"

    Cape_MAB= { name="Nantosuelta's Cape", augments={'INT+20','Mag. Acc+20 /Mag. Dmg.+20','INT+10','"Mag.Atk.Bns."+10','Pet: Damage taken -5%',}}
    Cape_STRWS={ name="Nantosuelta's Cape", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%',}}
    Cape_Tank={ name="Nantosuelta's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10','Pet: "Regen"+5',}}
    Cape_PetRegen= { name="Nantosuelta's Cape", augments={'VIT+20','Eva.+20 /Mag. Eva.+20','Pet: "Regen"+10','Pet: "Regen"+5',}}

    ws_maps = {}

    ws_maps.Magical= S{'Gust Slash','Cyclone','Energy Steal','Energy Drain','Aeolian Edge','burning Blade','Red Lotus Blade','Shining Blade','Seraph Blade','Spirits Within','Sanguine Blade','Atonement','Rock Crusher','Cataclysm',

    }
    
    sets.WS = {
        neck="Fotia Gorget",
	head="Nyame helm",
        body="Nyame mail",
        hands="Nyame Gauntlets",
	waist="Fotia Belt",
        legs="Nyame flanchard",
        feet="Nyame Sollerets",
        left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	right_ear="Ishvara Earring",
        left_ring="Apate Ring",
	right_ring="Epaminondas's Ring",
	back=Cape_STRWS,
    }
    
    
    

    sets.WS["Earth Crusher"] = set_combine(sets.WS,{
        neck="Sibyl Scarf",
	head="Nyame helm",
        body="Nyame mail",
        hands="Nyame Gauntlets",
	waist="Orpheus's Sash",
        legs="Nyame flanchard",
        feet="Nyame Sollerets",
        left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
	right_ear="Regal Earring",
        left_ring="Metamorph Ring +1",
        right_ring="Epaminondas's Ring",
	back=Cape_MAB
    })

    sets.WS["Judgment"] = set_combine(sets.WS,{
        neck="Republican Platinum Medal",
	left_ring="Fickblix's Ring",
    })

    sets.WS["Black Halo"] = set_combine(sets.WS,{
        neck="Null Loop",
	left_ring="Metamorph Ring +1",
    })

    sets.WS.Magical = sets.WS["Earth Crusher"]

       
    sets.Obi = {
	waist="Hachirin-no-obi", back="Twilight Cape",
		
    }

-----------------------------------------------------------------------------------------------------------------------
        -- Add any set names here to be toggled with F9, ensure the set exists as a sets.TP[nameofset] below
	
    TP_Set_Names = {"Low Man","DT",'Pet'}
    sets.TP = {}
    sets.TP['Low Man'] = {

    	head={ name="Nyame Helm", augments={'Path: B',}},
    	body={ name="Nyame Mail", augments={'Path: B',}},
    	hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    	legs={ name="Nyame Flanchard", augments={'Path: B',}},
    	feet=EmpyFeet,
    	neck="Null loop",
    	waist="Null belt",
    	left_ear="Mache Earring +1",
    	right_ear="Steelflash Earring",
	left_ring="Chirich Ring +1",
	right_ring="Chirich Ring +1",
	back="Null Shawl",
    	--[[
	head="Null Masque",
	neck="Lissome necklace",
	hands="Gazu Bracelets +1",
	legs="Jhakri Slops +2",
	left_ear="Dedition Earring",
	right_ear="Telos Earring",
	waist="Windbuffet Belt +1",
	back=Cape_TP,

	]]--
        
    }

                
    sets.TP.DT = set_combine(sets.TP['Low Man'],{
	left_ring="Murky Ring",
        right_ear=SortieEar,
    })

    sets.TP.Pet = set_combine(sets.TP['Low Man'],{
	head=EmpyHead,
	hands=AFHands,
	feet=RelicFeet,
	neck=RelicNeck,
	back=Cape_PetRegen,
    })
    
-----------------------------------------------------------------------------------------------------------------------------------------
-- Add any set names here to be toggled with F10, ensure the set exists as a sets.idle.nameofset below
   
    Idle_Set_Names = {'Pet','RefreshDT', 'Movement'}
    sets.Idle = {}

    sets.Idle.Pet = {
	range="Dunna",
	head=EmpyHead, -- 11/12 dt pet regen 5
	body="Nyame Mail", -- 9 dt
	hands=AFHands,
	legs="Nyame Flanchard", -- 8dt
	feet=RelicFeet, -- pet regen 5
	neck=RelicNeck,
	waist="Isa Belt", -- pet regen 1
	left_ear="Alabaster Earring", -- 3dt
	right_ear=SortieEar,-- 5 dt (at +1/2)
    	left_ring="Defending Ring", -- dt 5%
    	right_ring="Murky Ring", --dt 10%
	back=Cape_PetRegen,

    }

    
    sets.Idle.RefreshDT = {
	
	head=EmpyHead, -- 11/12 dt
	body=EmpyBody, -- refresh +3/4
	hands=RelicHands, -- refresh +1...
	legs="Nyame Flanchard", -- 8dt
	feet=EmpyFeet, -- 10/11 dt
	neck="Loricate Torque +1", 
	waist="Null Belt",
	left_ear="Odnowa Earring +1", -- 3 dt
	--right_ear=SortieEar,-- 5 dt
    	left_ring="Warden's Ring", -- occ annuls magic dmg
    	right_ring="Murky Ring", --dt 10%
	back=Cape_PetRegen,
    }

    sets.Idle.Movement = set_combine(sets.Idle.RefreshDT,{
	legs="Assiduity pants +1",
	feet=AFFeet,
	left_ring="Stikini Ring +1",
	right_ring="Stikini Ring +1",
        	
    })







-------------------------------------------------------------------------------------------------------------------------------------
        
    sets.FastCast = {
	
	head="Agwu's Cap",
    	--head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}}, --10fc
    	body="Merlinic Jubbah", --9fc (can be 14)
    	hands="Agwu's Gages", --6fc
    	legs=AFLegs, --15fc (less at current)
    	feet="Agwu's Pigaches",
	--feet="Regal Pumps +1", --6/7fc
    	neck="Voltsurge Torque", --4fc
    	waist="Embla Sash", --5fc
    	--left_ear="Malignance Earring", --4fc
    	left_ear="Loquac. Earring", --2fc
    	right_ear="Etiolation earring",
	left_ring="Prolix Ring", --1fc
    	right_ring="Kishar Ring", --4fc
    	back="Lifestream Cape",
	--back={ name="Fi Follet Cape +1", augments={'Path: A',}}, --10fc
    }
       
    sets.precast_Cure = set_combine(sets.FastCast,{
	   	
    })

    sets.precast_Elemental = set_combine(sets.FastCast,{
	   hands=RelicHands,
    })

    sets.precast_Raise = set_combine(sets.FastCast,{
	
	waist="Witful Belt", --fc 3%, 3% QC
	left_ring="Lebeche ring" --QC +2%
    	
    })
	
    sets.precast_Enhancing = set_combine(sets.FastCast,{
	waist="Siegel sash",
   })

    sets.precast_Impact = set_combine(sets.FastCast,{
	body="Twilight Cloak",
   })



----------------------------------------------------------------------------------------------------------------------

    sets.midcast = {
	sub="Ammurapi Shield",
    	head=EmpyHead,
    	body=EmpyBody,
    	hands=EmpyHands,
    	legs=EmpyLegs,
    	feet=EmpyFeet,
    	neck="Mizukage-no-Kubikazari",
	--neck="Sibyl Scarf", --sorcerer's stole +1 once auggied
    	--waist="Acuity Belt +1",
	waist="Othila Sash",
    	left_ear="Friomisi Earring",
    	right_ear=SortieEar,
	left_ring="Shiva Ring +1",
	right_ring="Shiva Ring +1",
    	--left_ring="Locus Ring",
    	--right_ring="Metamorph Ring +1",
	back=Cape_MAB,
    }
    
    sets.midcast_Cure = set_combine(sets.midcast,{
	
	head={ name="Vanya Hood", augments={'MP+50','"Fast Cast"+10','Haste+2%',}}, 
	hands="Vanya cuffs", --healing magic skill +20
    	feet={ name="Vanya Clogs", augments={'"Cure" potency +5%','"Cure" spellcasting time -15%','"Conserve MP"+6',}}, --10% pot total
    	neck="Yngvi Choker", -- -2enmity
    	right_ear="Mendi. Earring", --5% potency  conserve mp+2 
	left_ring="Stikini ring +1",
    	right_ring="Stikini ring +1",
    	back={ name="Fi Follet Cape +1", augments={'Path: A',}},
    })

    sets.midcast_Enfeeble = set_combine(sets.midcast,{
	neck="Null Loop",
	waist="Null Belt",
	left_ring="Stikini ring +1",
	right_ring="Stikini ring +1",
	back="Null Shawl",
    })
	
    sets.midcast_Enhancing = set_combine(sets.midcast,{
	Body="Telchine chasuble", -- only 8% atm (Regen duration as well)
	hands="Telchine gloves", --only 8% atm (Duskdim)
	legs="Telchine Braconi", -- 10% duration
	feet="Telchine pigaches", --10% duration
	left_ring="Stikini ring +1",
	right_ring="Stikini ring +1",
	waist="Embla Sash",
	back="Fi Follet Cape +1",
    })


    sets.midcast_Healing = set_combine(sets.midcast,{
	ammo="Seraphic Ampulla",
	neck="Yngvi Choker",
	left_ring="Stikini ring +1",
	right_ring="Stikini ring +1",

	
    })

    sets.midcast_Raise = sets.precast_Raise
  	


    sets.midcast_Regen = set_combine(sets.midcast_Enhancing,{

    })




    sets.midcast_Cursna = {

    	body={ name="Vanya Robe", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
    	feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}}, -- maybe relicfeet later
    	neck="Debilis Medallion",
    	left_ear="Mendi. Earring",
    	right_ear="Gifted earring",
    	left_ring="Menelaus's Ring",
    	right_ring="Haoma's Ring",
    }

    sets.midcast_Dia = set_combine(sets.midcast_Enfeeble,{
    	ammo="Per. Lucky Egg",
    	head="Wh. Rarab Cap +1",
    	waist="Chaac Belt",

    })



    sets.midcast_CureLow = set_combine(sets.midcast_Cure,{
    	main="Raetic rod +1",
	sub="Genmei Shield",

    })

    sets.midcast_MagicBurst = set_combine(sets.midcast, {
	main="Bunzi's Rod",
	sub="Genmei Shield",
	head="Ea Hat +1",
	--hands="RelicHands", --upgrade first...
	hands="Agwu's Gages",
	feet="Agwu's Pigaches",

    })

    sets.midcast_NukeLow = set_combine(sets.midcast, {
	main="Raetic Staff +1",
	sub="Enki Strap",
    })

    sets.midcast_NukeLowMB = set_combine(sets.midcast, {
	main="Raetic Staff +1",
	sub="Enki Strap",
	head="Ea Hat +1",
    })
   
    sets.midcast_FreeNuke = set_combine(sets.midcast, {
	main="Bunzi's Rod",
	sub="Genmei Shield",
    })

    sets.midcast_GainMP = { 
	body="Seidr Cotehardie",
    }


    sets.midcast_Impact = set_combine(sets.midcast, {
	main="Bunzi's Rod",
	sub="Genmei Shield",
	body="Twilight Cloak",
	back="Null Shawl",
    })

    sets.midcast_ElemDebuff = set_combine(sets.midcast, {
	main="Bunzi's Rod",
	sub="Genmei Shield",
	neck="Null Loop",
	waist="Null Belt",
	legs="Agwu's Slops",
	left_ring="Stikini ring +1",
	right_ring="Stikini ring +1",
	back="Null Shawl",
    })

    sets.midcast_Drain = set_combine(sets.midcast, {
	main="Bunzi's Rod",
	sub="Genmei Shield",
	neck="Null Loop",
	head="Pixie Hairpin +1",
	--body=AFBody, -- once upgraded
	feet="Agwu's Pigaches",
	waist="Fucho-no-obi",
	left_ring="Archon Ring",
	right_ring="Evanescence Ring",
	back="Null Shawl",
    })

    sets.midcast_Geospells = set_combine (sets.midcast,{
	main="Idris",
	sub="Genmei Shield",
	neck=RelicNeck,
	
    })

    sets.midcast_Indi = set_combine (sets.midcast_GeoSpells,{
	legs=RelicLegs,
	back="Lifestream Cape",
	
    })


end

-----------------------------------------------------------------------------------------------------------------------------

function precast(spell)
    if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
    elseif spell.type == "WeaponSkill" then
        if sets.WS[spell.english] then
            equip(sets.WS[spell.english])
        elseif ws_maps.Magical:contains(spell.english) then
		equip(sets.WS.Magical)
	else
		equip(sets.WS)
	end
        if spell.element == world.weather_element or spell.element == world.day_element then
            equip(sets.Obi)
        end
    elseif spell.english == 'Impact' then
        equip(sets.precast_Impact)
    elseif string.find(spell.english, 'Arise') or string.find(spell.english, 'Raise') or string.find(spell.english, 'Reraise') then
    	equip(sets.precast_Raise)    
    elseif spell.skill == 'Healing Magic' then
        if string.find(spell.english, 'Cur') then 
            equip(sets.precast_Cure)
        end
    elseif spell.skill == 'Enhancing Magic' then 
	equip(sets.precast_Enhancing)
    elseif spell.skill == 'Elemental Magic' then 
	equip(sets.precast_Elemental) 	     
    elseif spell.action_type == "Magic" then
	equip(sets.FastCast) 
    end
    
end


-------------------------------------------------------------------------------------------------------------------------------

function midcast(spell)
    if spell.english == 'Cursna' then
        equip(sets['midcast_Cursna'])

    elseif string.find(spell.english, 'Regen') then
	equip(sets.midcast_Regen)
	

    elseif spell.english == 'Impact' then
        equip(sets['midcast_Impact'])
  

    elseif white_magic_maps.CureLow:contains(spell.english) then
		equip(sets.midcast_CureLow)

    elseif black_magic_maps.NukeLow:contains(spell.english) then
		equip(sets.midcast_NukeLow)
	if MB_Index == 2 then
		equip(sets.midcast_NukeLowMB)
	end
	if MP_Index == 2 then 
		equip(sets.midcast_GainMP)
	end

    elseif black_magic_maps.ElemDebuff:contains(spell.english) then
		equip(sets.midcast_ElemDebuff)


    elseif black_magic_maps.Drain:contains(spell.english) then
		equip(sets.midcast_Drain)


    elseif string.find(spell.english, 'Cur') then
        equip(sets.midcast_Cure)
	
   
    elseif string.find(spell.english, 'Regen') then
	equip(sets.midcast_Regen)
	
    
    elseif string.find(spell.english, 'Arise') or string.find(spell.english, 'Raise') or string.find(spell.english, 'Reraise') then
    	equip(sets.midcast_Raise)

    elseif string.find(spell.english, 'Dia') then
        equip(sets.midcast_Dia)
  
    elseif spell.skill == 'Enhancing Magic' then
	equip(sets['midcast_Enhancing'])

    elseif spell.skill == 'Geomancy' then
	if string.find(spell.english, 'Indi') then
        equip(sets.midcast_Indi)
	else
	equip(sets['midcast_Geospells'])
	end
	
    elseif spell.skill == 'Elemental Magic' then
	equip(sets.midcast_FreeNuke)
	if MB_Index == 2 then
		equip(sets.midcast_MagicBurst)
	end
	if MP_Index == 2 then 
		equip(sets.midcast_GainMP)
	end
	
    elseif spell.skill == 'Enfeebling Magic' then
        equip(sets['midcast_Enfeeble'])

    elseif spell.skill == 'Healing Magic' then
        equip(sets['midcast_Healing'])
    end
    if spell.element == world.weather_element or spell.element == world.day_element then
            equip(sets.Obi)
        end
    if spell.english == 'Sneak' then
        send_command('@wait 1.8;cancel 71;')
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
    elseif command == 'movement' then
        Idle_Index = 3
        send_command('@input /echo ----- Idle Set changed to '..Idle_Set_Names[Idle_Index]..' -----')
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    elseif command == 'pet' then
        Idle_Index = 1
        send_command('@input /echo ----- Idle Set changed to '..Idle_Set_Names[Idle_Index]..' -----')
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    elseif command == 'toggle castmode' then
        Cast_Index = Cast_Index +1
        if Cast_Index > #Cast_Set_Names then Cast_Index = 1 end
        send_command('@input /echo ----- castingmode changed to '..Cast_Set_Names[Cast_Index]..' -----')
    elseif command == 'toggle Regen' then
        Regen_Index = Regen_Index +1
        if Regen_Index > #Regen_Set_Names then Regen_Index = 1 end
        send_command('@input /echo -----  Regen mode changed to '..Regen_Set_Names[Regen_Index]..' -----')
    elseif command == 'toggle MB' then
        MB_Index = MB_Index +1
        if MB_Index > #MB_Names then MB_Index = 1 end
        send_command('@input /echo -----  Magic Burst mode changed to '..MB_Names[MB_Index]..' -----')
    elseif command == 'toggle gainmp' then
        MP_Index = MP_Index +1
        if MP_Index > #Gain_MP_Names then MP_Index = 1 end
        send_command('@input /echo -----  MP mode changed to '..Gain_MP_Names[MP_Index]..' -----')
    elseif command == 'start_loop' then
	auto_casting=true
	send_command('@input /echo skillups are starting')
	auto_cast()
    elseif command == 'stop_loop' then
	auto_casting=false
	send_command('@input /echo skillups are stopping')
	auto_cast()
    elseif command == 'auto_cast' then
	auto_cast()
    elseif command == 'Fire' then
        Elem_Index = 1
        send_command('@input /echo -----  Elemental mode changed to Fire. -----')
    elseif command == 'Blizzard' then
        Elem_Index = 2
        send_command('@input /echo -----  Elemental mode changed to Blizzard. -----')
    elseif command == 'Aero' then
        Elem_Index = 3
        send_command('@input /echo -----  Elemental mode changed to Aero. -----')
    elseif command == 'Stone' then
        Elem_Index = 4
        send_command('@input /echo -----  Elemental mode changed to Stone. -----')
    elseif command == 'Thunder' then
        Elem_Index = 5
        send_command('@input /echo -----  Elemental mode changed to Thunder. -----')
    elseif command == 'Water' then
        Elem_Index = 6
        send_command('@input /echo -----  Elemental mode changed to Water. -----')

    elseif command =='ra' then
	if Elem_Index==1 then
	send_command('@input /ma "Fira" <t>')
	elseif Elem_Index==2 then
	send_command('@input /ma "Blizzara" <t>')
	elseif Elem_Index==3 then
	send_command('@input /ma "Aera" <t>')
	elseif Elem_Index==4 then
	send_command('@input /ma "Stonera" <t>')
	elseif Elem_Index==5 then
	send_command('@input /ma "Thundara" <t>')
	elseif Elem_Index==6 then
	send_command('@input /ma "Watera" <t>')
	end

    elseif command =='ra2' then
	if Elem_Index==1 then
	send_command('@input /ma "Fira II" <t>')
	elseif Elem_Index==2 then
	send_command('@input /ma "Blizzara II" <t>')
	elseif Elem_Index==3 then
	send_command('@input /ma "Aera II" <t>')
	elseif Elem_Index==4 then
	send_command('@input /ma "Stonera II" <t>')
	elseif Elem_Index==5 then
	send_command('@input /ma "Thundara II" <t>')
	elseif Elem_Index==6 then
	send_command('@input /ma "Watera II" <t>')
	end

    elseif command =='ra3' then
	if Elem_Index==1 then
	send_command('@input /ma "Fira III" <t>')
	elseif Elem_Index==2 then
	send_command('@input /ma "Blizzara III" <t>')
	elseif Elem_Index==3 then
	send_command('@input /ma "Aera III" <t>')
	elseif Elem_Index==4 then
	send_command('@input /ma "Stonera III" <t>')
	elseif Elem_Index==5 then
	send_command('@input /ma "Thundara III" <t>')
	elseif Elem_Index==6 then
	send_command('@input /ma "Watera III" <t>')
	end


    elseif command =='t5' then
	if Elem_Index==1 then
	send_command('@input /ma "Fire V" <t>')
	elseif Elem_Index==2 then
	send_command('@input /ma "Blizzard V" <t>')
	elseif Elem_Index==3 then
	send_command('@input /ma "Aero V" <t>')
	elseif Elem_Index==4 then
	send_command('@input /ma "Stone V" <t>')
	elseif Elem_Index==5 then
	send_command('@input /ma "Thunder V" <t>')
	elseif Elem_Index==6 then
	send_command('@input /ma "Water V" <t>')
	end

    elseif command =='t4' then
	if Elem_Index==1 then
	send_command('@input /ma "Fire IV" <t>')
	elseif Elem_Index==2 then
	send_command('@input /ma "Blizzard IV" <t>')
	elseif Elem_Index==3 then
	send_command('@input /ma "Aero IV" <t>')
	elseif Elem_Index==4 then
	send_command('@input /ma "Stone IV" <t>')
	elseif Elem_Index==5 then
	send_command('@input /ma "Thunder IV" <t>')
	elseif Elem_Index==6 then
	send_command('@input /ma "Water IV" <t>')
	end

    elseif command =='t3' then
	if Elem_Index==1 then
	send_command('@input /ma "Fire III" <t>')
	elseif Elem_Index==2 then
	send_command('@input /ma "Blizzard III" <t>')
	elseif Elem_Index==3 then
	send_command('@input /ma "Aero III" <t>')
	elseif Elem_Index==4 then
	send_command('@input /ma "Stone III" <t>')
	elseif Elem_Index==5 then
	send_command('@input /ma "Thunder III" <t>')
	elseif Elem_Index==6 then
	send_command('@input /ma "Water III" <t>')
	end

    elseif command =='t2' then
	if Elem_Index==1 then
	send_command('@input /ma "Fire II" <t>')
	elseif Elem_Index==2 then
	send_command('@input /ma "Blizzard II" <t>')
	elseif Elem_Index==3 then
	send_command('@input /ma "Aero II" <t>')
	elseif Elem_Index==4 then
	send_command('@input /ma "Stone II" <t>')
	elseif Elem_Index==5 then
	send_command('@input /ma "Thunder II" <t>')
	elseif Elem_Index==6 then
	send_command('@input /ma "Water II" <t>')
	end

    elseif command =='t1' then
	if Elem_Index==1 then
	send_command('@input /ma "Fire" <t>')
	elseif Elem_Index==2 then
	send_command('@input /ma "Blizzard" <t>')
	elseif Elem_Index==3 then
	send_command('@input /ma "Aero" <t>')
	elseif Elem_Index==4 then
	send_command('@input /ma "Stone" <t>')
	elseif Elem_Index==5 then
	send_command('@input /ma "Thunder" <t>')
	elseif Elem_Index==6 then
	send_command('@input /ma "Water" <t>')
	end        
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