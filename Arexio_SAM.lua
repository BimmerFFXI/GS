--Uncomment out the below line in the future if you wish to use organizer which grabs all gear and puts all gear away when you change jobs read organizer to understand more
--include('organizer-lib')

function get_sets()
    TP_Index = 1
    Idle_Index = 1

    send_command('bind f9 gs c toggle TP set') --F9
    send_command('bind f10 gs c toggle Idle set') --F10



    EmpyHead="Kasuga Kabuto +3" -- stp 11, dt 9, seigan +16 
    EmpyBody="Kasuga Domaru +2" -- stp 13, zanshin +14, dt 13, 
    EmpyHands="Kasuga Kote +3" -- ws dmg 12, sekkanoki,
    EmpyLegs="Kasuga Haidate +2" --stp 10, dt 10, hasso
    EmpyFeet="Kasuga Sune-ate" -- can wait

    AFHead=""
    AFBody="" 
    AFHands=""
    AFLegs="Wakido Haidate +4" 
    AFFeet=""

    RelicHead="" 
    RelicBody="" 
    RelicHands=""
    RelicLegs=""
    RelicFeet=""

    T_Body="Tatenashi haramaki +1" -- zanshin +8, stp +8/9, acc, triple +3
    T_Hands="Tatenashi gote +1" -- zanshin +6, stp 7/8, acc, trip +4
    T_Legs="Tatenashi haidate +1" -- zanshin +6, stp 7/8, trip +3 
    T_Feet="Tatenashi Sune-ate +1" -- zanshin +6, stp 7/8, trip +3


    sortie_ear={ name="Kasuga Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','Weapon skill damage +3%',}}
    tp_neck={}	
    tp_back = { name="Smertrios's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Store TP"+10','Phys. dmg. taken-10%',}}
    ws_dmg_back = { name="Smertrios's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
 
    
    sets.weapons = {}

    
    sets.JA = {}
    
   
    sets.JA["Provoke"]=sets.Enmity

    
    sets.WS = {
    	ammo="Knobkierrie",
    	head={ name="Nyame Helm", augments={'Path: B',}},
    	body={ name="Nyame Mail", augments={'Path: B',}},
    	hands=EmpyHands,
	legs=AFLegs,
    	feet={ name="Nyame Sollerets", augments={'Path: B',}},
    	neck="Null Loop",
    	waist="Breeze Belt",
    	left_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    	right_ear=sortie_ear,
    	left_ring="Varar Ring +1",
    	right_ring="Epaminondas's Ring",
    	back=ws_dmg_back,	
   }

    
   

    sets.WS["Aeolian Edge"] = set_combine(sets.WS.Evisceration,{
        
    })

    sets.WS["Tachi: Jinpu"] = set_combine(sets.WS,{
        hands="Nyame Gauntlets",
	legs="Nyame Flanchard",
    })

    

    sets.WS["Impulse Drive"] = set_combine(sets.WS,{

    })

    sets.WS["Savage Blade"] = set_combine(sets.WS,{

    })
 

    
    
    sets.Obi = {
	waist="Hachirin-no-obi",
		
}


        -- Add any set names here to be toggled with F9, ensure the set exists as a sets.TP[nameofset] below
	-- Currently removed and commented out sets: "Delay Cap","Evasion",
    TP_Set_Names = {"Low Man","DT"}
    sets.TP = {}
    sets.TP['Low Man'] = {
    	ammo="Aurgelmir Orb", -- stp 4
    	head=EmpyHead, -- 9 dt, stp 11
    	body=EmpyBody, -- 13 dt, stp 13
    	hands={ name="Nyame Gauntlets", augments={'Path: B',}}, -- 7 dt
    	legs=EmpyLegs, -- 10 dt, stp 10
    	feet=T_Feet, -- stp 7/8
    	neck="Null Loop", -- 5 dt
    	waist="Sailfi Belt +1",
    	left_ear={ name="Schere Earring", augments={'Path: A',}},
    	right_ear=sortie_ear, -- stp 8
    	left_ring="Crepuscular Ring", -- stp 6
	right_ring="K'ayres Ring", -- stp 5
	back=tp_back, --stp 10 pdt 10	    
    }

    sets.TP['Triple'] = set_combine(sets.TP['Low Man'],{

    })

    sets.TP['Accuracy'] = set_combine(sets.TP['Low Man'],{

    })
                
    sets.TP.DT = set_combine(sets.TP['Low Man'],{
        feet={ name="Nyame Sollerets", augments={'Path: B',}}, -- 7 dt
    	right_ring="Murky Ring",
    })


-- Add any set names here to be toggled with F10, ensure the set exists as a sets.idle.nameofset below
-- Currently removed and commented out sets: ,"STP"
    Idle_Set_Names = {'Normal','MDT'}
    sets.Idle = {}
    sets.Idle.Normal = set_combine(sets.TP.DT,{
	
    	hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    	feet={ name="Nyame Sollerets", augments={'Path: B',}},
    	neck="Null Loop",
    	waist="Null Belt",
	
    })
                
    sets.Idle.MDT = {
        
    }
    
--[[
    sets.Idle['STP'] = {}
]]
    
        
    sets.FastCast = {

    }
    
    
--    sets.frenzy = {head="Frenzy Sallet"}
end

-------------------------------------------------------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------------------------------------------------------------



function precast(spell)
    if sets.JA[spell.english] then
        equip(sets.JA[spell.english])
    elseif spell.type=="WeaponSkill" then
        if sets.WS[spell.english] then equip(sets.WS[spell.english]) 
	else equip(sets.WS)
	end
	if spell.element == world.weather_element or spell_element == world.day_element then
			equip(sets.Obi) end
    elseif spell.action_type == "Magic" then
        equip(sets.FastCast)
    end
end

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

--[[
function buff_change(buff,gain_or_loss)
    if buff=="Sneak Attack" then
        soloSA = gain_or_loss
	equip({hands="Skulker's armlets +2"})
    elseif buff=="Trick Attack" then
        soloTA = gain_or_loss
    elseif buff == "Feint" then
	equip({legs="Plunderer's Culottes +3"})
    elseif gain_or_loss and buff == 'Sleep' and player.hp > 99 then
        print('putting on Frenzy sallet!')
        equip(sets.frenzy)
    end
end
]]
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