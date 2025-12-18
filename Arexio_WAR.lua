--Uncomment out the below line in the future if you wish to use organizer which grabs all gear and puts all gear away when you change jobs read organizer to understand more
--include('organizer-lib')

function get_sets()
    TP_Index = 1
    Idle_Index = 1

    send_command('bind f9 gs c toggle TP set') --F9
    send_command('bind f10 gs c toggle Idle set') --F10



    EmpyHead="Boii Mask +2"
    EmpyBody="Boii Lorica +2"
    EmpyHands="Boii Mufflers +2"
    EmpyLegs="Boii Cuisses +2"
    EmpyFeet="Boii Calligae +2"

    AFHead="Pummeler's Mask +2"
    AFBody="Pummeler's Lorica +4" -- berserk
    AFHands="Pummeler's Mufflers +2"
    AFLegs="Pummeler's Cuisses +2" --tp piece?
    AFFeet="Pummeler's Calligae +2"

    RelicHead="Agoge Mask +4" -- Warcry precast , savagery precast
    RelicBody="Agoge Lorica +1" -- Aggressor precast, 10 more seconds for the +3
    RelicHands=""
    RelicLegs=""
    RelicFeet=""

    
    cape_tp_dblattack = { name="Cichol's Mantle", augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','"Dbl.Atk."+10','Phys. dmg. taken-10%',}}
    str_ws_back = { name="Cichol's Mantle", augments={'STR+20','Accuracy+20 Attack+20','STR+10','Weapon skill damage +10%','Phys. dmg. taken-10%',}}
   
 
    
    sets.weapons = {}

    
    sets.JA = {}
    
    sets.JA.Steps = {neck="Null Loop",back=tp_back,left_ear="Choreia earring",waist="Null belt",}
    sets.JA["Feather Step"] = {left_ear="Choreia earring", feet=EmpyFeet,}
    sets.JA["Quickstep"] = {neck="Null Loop", left_ear="Choreia earring", ammo="Perfect Lucky Egg", feet={ name="Herculean Boots", augments={'Phys. dmg. taken -2%','VIT+8','"Treasure Hunter"+2',}},
	waist="Chaac Belt",}
    sets.Enmity={
	neck="Unmoving Collar",
	head={ name="Herculean Helm", augments={'Enmity+6','Accuracy+5','"Refresh"+2','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
	hands=RelicHands,
    	left_ring="Supershear Ring",
    }
    sets.JA["Provoke"]=sets.Enmity
    sets.JA["Defender"]=sets.Enmity
    sets.JA["Berserk"]={body=AFBody,sub="Diamond Shield",}
    sets.JA["Aggressor"]={body=RelicBody,}
    --sets.JA["Warcry"]={head=RelicHead,})
    sets.JA["Warcry"]={head=RelicHead,sub="Diamond Shield"}
    sets.JA["Savagery"]={head=RelicHead,}
    sets.JA["Animated Flourish"]=sets.Enmity
    sets.JA["Violent Flourish"] = {neck="Null Loop",back=tp_back,waist="Null belt",}
    sets.JA["Climactic Flourish"] = {head =EmpyHead,}
    sets.JA["Reverse Flourish"] = {hands = EmpyHands,}
    sets.Jig = {legs=RelicLegs,}
    sets.JA["Chocobo jig II"] = sets.Jig
    sets.JA["Spectral Jig"] = sets.Jig
    sets.JA.Waltz = {ammo="Yamarang",head="Mummu bonnet +2",legs="Dashing Subligar", left_ring="Asklepian Ring",}
    
    sets.WS = {
	ammo="Knobkierrie",
    	head=RelicHead,
    	body=AFBody,
    	hands={ name="Nyame Gauntlets", augments={'Path: B',}},
    	legs={ name="Nyame Flanchard", augments={'Path: B',}},
    	feet={ name="Nyame Sollerets", augments={'Path: B',}},
    	neck="Null Loop",
    	waist="Sailfi Belt +1",
    	left_ear={ name="Schere Earring", augments={'Path: A',}},
    	right_ear="Moonshade Earring",
    	left_ring="Apate Ring",
    	right_ring="Rajas Ring",
    	back=str_ws_back
   }

    

    sets.WS["Aeolian Edge"] = set_combine(sets.WS,{
        ammo="Seething Bomblet +1",
	neck="Sibyl scarf",
	waist="Breeze Belt",
	left_ear="Friomisi earring",
        right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    })


    sets.WS["Sanguine Blade"] = set_combine(sets.WS["Aeolian Edge"],{
        ammo="Seething Bomblet +1",
	neck="Sibyl scarf",
	head="Pixie Hairpin +1",
	waist="Breeze Belt",
	left_ear="Friomisi earring",
        right_ear={ name="Moonshade Earring", augments={'"Mag.Atk.Bns."+4','TP Bonus +250',}},
    })

    sets.WS["Rudra's Storm"] = set_combine(sets.WS,{
	neck="Republican platinum medal",
	waist="Kentarch Belt +1",
    })

    sets.WS["Impulse Drive"] = set_combine(sets.WS,{

    })

    sets.WS["Savage Blade"] = set_combine(sets.WS,{
	left_ear="Ishvara Earring",
    })
 

    sets.WS.Exenterator = sets.WS
    
    sets.Obi = {
	waist="Hachirin-no-obi",
		
}


        -- Add any set names here to be toggled with F9, ensure the set exists as a sets.TP[nameofset] below
	-- Currently removed and commented out sets: "Delay Cap","Evasion",
    TP_Set_Names = {"Low Man","Accuracy","DT",}
    sets.TP = {}
    sets.TP['Low Man'] = {
	sub="Blurred Shield +1",
    	ammo="Aurgelmir Orb",
    	head="Sakpata's Helm",
    	body="Sakpata's Plate",
    	hands="Sakpata's Gauntlets",
    	legs="Sakpata's Cuisses",
    	feet="Sakpata's Leggings",
    	neck="Combatant's Torque",
    	waist="Sailfi Belt +1",
    	left_ear="Crepuscular Earring",
    	right_ear={ name="Schere Earring", augments={'Path: A',}},
    	left_ring="Varar Ring +1",
    	right_ring="Rajas Ring",
    	back=cape_tp_dblattack,
    }

    sets.TP.Accuracy = set_combine(sets.TP['Low Man'],{
    	neck="Null Loop",
	waist="Null Belt",
    })
                
    sets.TP.DT = set_combine(sets.TP['Low Man'],{
    	ammo="Crepuscular Pebble",
    	right_ring="Murky Ring",
    })




-- Add any set names here to be toggled with F10, ensure the set exists as a sets.idle.nameofset below
-- Currently removed and commented out sets: ,"STP"
    Idle_Set_Names = {'Normal','MDT'}
    sets.Idle = {}
    sets.Idle.Normal = {
        
    	ammo="Crepuscular Pebble",
    	head="Sakpata's Helm",
    	body="Sakpata's Plate",
    	hands="Sakpata's Gauntlets",
    	legs="Sakpata's Cuisses",
    	feet="Sakpata's Leggings",
    	neck="Null Loop",
    	waist="Null belt",
    	left_ear="Crepuscular Earring",
    	right_ear={ name="Schere Earring", augments={'Path: A',}},
    	left_ring="Varar Ring +1",
    	right_ring="Murky Ring",
    	back=cape_tp_dblattack,
    }
                
    sets.Idle.MDT = set_combine(sets.Idle.Normal,{

	head="Nyame Helm",
        body="Nyame mail",
        hands="Nyame Gauntlets",
        legs="Nyame Flanchard",
        feet="Nyame Sollerets",
        back="Shadow Mantle",
    })
    

    
        
    sets.FastCast = {
        neck="Magoraga Beads",
	head={ name="Herculean Helm", augments={'"Mag.Atk.Bns."+14','"Fast Cast"+6','Mag. Acc.+7',}},
	hands="Leyline Gloves",
        left_ear="Loquac. Earring",

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
	
    elseif string.find(spell.english,'Waltz') then
        equip(sets.JA.Waltz)
    elseif string.find(spell.english,'Step') then
        equip(sets.JA.Steps)
    elseif string.find(spell.english,'Samba') then
        equip(sets.JA.Samba)
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