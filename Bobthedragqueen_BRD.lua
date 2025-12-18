--  BRD GearSwap LUA
--include('EPSINGtest')
-- This is what sets the initial set that you normally want to be in by default.
tp_mode = 'idle'
    TP_Index = 1
    Idle_Index = 1

    send_command('bind f9 gs c toggle TP set') --F9
    send_command('bind f10 gs c toggle Idle set') --F10
song_mode = 'potency' -- toggle between dummy and potency
send_command('input /echo Song Mode: '..song_mode)
auto_casting=false --needed for the include
--default songs for autosinging
--song1 = "Blade Madrigal" 
song1 = "Valor Minuet IV"
song2 = "Valor Minuet V"
song3 = "Advancing March"
song4 = "Victory March"
skillupsong1= "Army's Paeon VI"
skillupsong2= "Army's Paeon V"
skillupsong3= "Mage's Ballad III"
--default target for ballad after singing 5 songs while autosinging
ballad_target = "Arexio"
--ability to change ballad strength by modifying in case doing lower level content
ballad_song = "Mage's Ballad III"


EmpyHead="Fili Calot +3" --Madrigal, song spellcasting- (DT10/11)
EmpyBody="Fili Hongreline +3" --Minuet, song duration, instrument skills
EmpyHands="Fili Manchettes +3" --March, instrument skills (DT10/11)
EmpyLegs="Fili Rhingrave +3" -- Ballad, singins skill only, song recast -8 (DT12/13)
EmpyFeet="Fili Cothurnes +3" -- Movement speed, Scherzo (Fast cast)
Sortie_Earring="Fili Earring +1"

AF_Head="Brioso Roundlet" --Paeon, String Skill
AF_Body="Brioso Justaucorps" --instrument skills, song spellcasting -
AF_Hands="Brioso Cuffs" --Lullaby, singing
AF_Legs="Brioso Cannions" --pointless??
AF_Feet="Brioso Slippers" -- song duration +15%  (Prio)

Relic_Head="Bihu Roundlet" --useless?
Relic_Body="Bihu Justaucorps" --WS DMG & TROUBADOUR  (Prio)
Relic_Hands="Bihu Cuffs" --useless??
Relic_Legs="Bihu Cannions" -- Soul Voice (upgrade to 109)
Relic_Feet="Bihu Slippers" -- String skill & Nightingale (Upgrade to 109)

Cape_FC_PDT={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','"Fast Cast"+10','Phys. dmg. taken-10%',}}



function auto_cast()
    if auto_casting then
  
        send_command('@input /p Starting rebuffs in 10 GET TO BOBBYYYY <call3>; wait 10;' ..
            ' input /ja "Troubadour" <me>; wait 1;' ..
            ' input /ja "Nightingale" <me>; wait 3;' ..
            ' input /equip range "Miracle Cheer"; wait 1;' ..
            ' input /ma "' .. song1 .. '" <me>; wait 5;' ..
            ' input /ma "' .. song2 .. '" <me>; wait 5;' ..
            ' input /ma "' .. song3 .. '" <me>; wait 5;' ..
            ' input /ma "' .. song4 .. '" <me>; wait 5;' ..
            ' input /ja "Pianissimo" <me>; wait 1;' ..
            ' input /ma "' .. ballad_song .. '" ' .. ballad_target .. '; wait 600;' ..
            ' input /p Starting rebuffs in 10 GET TO BOBBYYYY <call3>; wait 10;' ..
            ' input //gs c auto_cast')

    end
end

function clarion()
        send_command('@input /p Starting four song; wait 3;' ..
            ' input /ja "Clarion Call" <me>; wait 1;' ..
            ' input /equip range "Miracle Cheer"; wait 1;' ..
            ' input /ma "' .. song1 .. '" <me>; wait 7;' ..
            ' input /ma "' .. song2 .. '" <me>; wait 7;' ..
            ' input /ma "' .. song3 .. '" <me>; wait 7;' ..
            ' input /ma "' .. song4 .. '" <me>; wait 7;' ..
            ' input //gs c nitro')
end

function nitro()
        send_command('@input /p Recasting songs in 3; wait 3;' ..
	    ' input /ja "Troubadour" <me>; wait 1;' ..
            ' input /ja "Nightingale" <me>; wait 3;' ..
            ' input /equip range "Miracle Cheer"; wait 1;' ..
            ' input /ma "' .. song1 .. '" <me>; wait 5;' ..
	    ' input /ja "Marcato" <me>; wait 2;' ..
            ' input /ma "' .. song2 .. '" <me>; wait 5;' ..
            ' input /ma "' .. song3 .. '" <me>; wait 5;' ..
            ' input /ma "' .. song4 .. '" <me>; wait 5;' ..
	    ' input /ja "Pianissimo" <me>; wait 1;' ..
            ' input /ma "' .. ballad_song .. '" ' .. ballad_target .. ';')
end



function self_command(command)
	local args = split_args(command)
	if args[1] == 'tp' then
		tp_mode = args[2]
		send_command('input /echo TP Mode: '..tp_mode)
	elseif args[1] == 'song_toggle' then
		if song_mode == 'dummy' then
			song_mode = 'potency'
		else
			song_mode = 'dummy'
		end
		
		send_command('input /echo Song Mode: '..song_mode)
	end
--THIS IS ADDED and gets passed into the file that is included at the top for the autosing function (EPSINGtest currently)
--This is a recursive function that will cause the autocast function to continuously execute until autocasting=false, but it must finish its current cycle unfortunately
    	if command == 'start_loop' then
		auto_casting=true
		send_command('@input /echo autocasting has started')
		auto_cast()
    	elseif command == 'stop_loop' then
		auto_casting = false
		send_command('@input /echo autocast has stopped.')
	else if command == 'auto_cast' then
		auto_cast()
	end
	if command == 'songs melee' then --//gs c songs melee
        	--song1 = "Blade Madrigal"
	        song1 = "Valor Minuet IV"
	        song2 = "Valor Minuet V"
        	song3 = "Advancing March"
	        song4 = "Victory March"
        	add_to_chat(123, "Song set changed to MELEE.")
	elseif command == 'songs tank' then --//gs c songs tank
        	--song1 = "Army's Paeon V"
	        song1 = "Knight's Minne V"
        	song2 = "Army's Paeon VI"
	        song3 = "Advancing March"
        	song4 = "Victory March"
	        add_to_chat(123, "Song set changed to TANK.")
	elseif command == 'songs mage' then --//gs c songs mage
        	--song1 = "Army's Paeon V"
	        song1 = "Mage's Ballad II"
        	song2 = "Mage's Ballad III"
	        song3 = "Advancing March"
        	song4 = "Victory March"
	        add_to_chat(123, "Song set changed to MAGE.")
	elseif command == 'songs accuracy' then --//gs c songs accuracy
        	song1 = "Blade Madrigal"
	        --song1 = "Valor Minuet IV"
	        song2 = "Valor Minuet V"
        	song3 = "Advancing March"
	        song4 = "Victory March"
	elseif command == 'songs str' then --//gs c songs str
        	--song1 = "Sage Etude"
	        song1 = "Valor Minuet I"
	        song2 = "Valor Minuet II"
        	song3 = "Sentinel's Scherzo"
	        song4 = "Herculean Etude"
	        add_to_chat(123, "Song set changed to STR.")
	elseif command == 'clarion' then --//gs c clarion
		clarion()
	elseif command == 'nitro' then --//gs c nitro
		nitro()
 
    	elseif command:startswith('balladtarget ') then --//gs c balladtarget <t> might work, otherwise replace <t> with the name
	        local target = command:sub(14)
        	ballad_target = target
	        add_to_chat(123, "Ballad target set to " .. target)
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
    	end

    end
--THIS IS ENDING
end


 
function split_args(args)
		fields = {}
		args:gsub("([^ ]*) ?", function(c)
		table.insert(fields, c)
	end)
	return fields
end

function get_sets()

-- These are sets to be combined with others for certains situations

	sets.dt = {
		head=EmpyHead,
		body="Ashera Harness",
		hands=EmpyHands,
		legs=EmpyLegs,
		feet="Nyame Sollerets",
		left_ring="Murky Ring",
	}

-- This is where we will define our precast sets.  These are sets of gear that get equiped BEFORE the spell or ability is used.
	sets.precast = {}
	
	sets.precast.fc = {
		body="Inyanga Jubbah +2",
		legs="Ayanmo cosciales +2",
		--legs="Kaykaus Tights +1",
		feet=EmpyFeet,
		neck="Voltsurge Torque",
		waist="Embla Sash",
		left_ear="Loquac. Earring",
		right_ear="Etiolation Earring",
		left_ring="Murky Ring",
		back=Cape_FC_PDT,	
	}
	
	sets.precast.fc_song = set_combine(sets.precast.fc,{
		head=EmpyHead,
	})

	sets.precast.soulvoice = {
		legs=Relic_Legs,
	}

	sets.precast.troubadour = {
		body=Relic_Body,
	}

	sets.precast.nightingale = {
		feet=Relic_Feet,
	}

	sets.precast.ws_magdmg = {
		head="Nyame Helm",
		body="Nyame Mail",
		hands="Nyame Gauntlets",
		legs="Nyame Flanchard",
		feet="Nyame Sollerets",
		neck="Sanctity Necklace",
		waist="Embla Sash",
		left_ear="Malignance Earring",
		left_ring="Freke Ring",
		back={ name="Intarabus's Cape", augments={'CHR+20','Mag. Acc+20 /Mag. Dmg.+20','Mag. Acc.+10','"Fast Cast"+10','Damage taken-5%',}},
	}
	
-- This is where we will define our midcast sets.  These are sets of gear that get equiped BEFORE the spell or ability lands.
	sets.midcast = {}

	sets.midcast.song_buff = {
		--main="Carnwenhan",
		--sub="Kali",
		head=EmpyHead,
		body=EmpyBody,
		hands=EmpyHands,
		legs="Inyanga Shalwar +2",
		feet=AF_Feet,
		neck="Mnbw. Whistle +1",
	}
	
	sets.midcast.song_buff_minne = set_combine(sets.midcast.song_buff,{legs="Mou. Seraweels +1"})
	
	sets.midcast.song_buff_madrigal = set_combine(sets.midcast.song_buff,{back="Intarabus's Cape",feet=EmpyFeet})
	
	sets.midcast.song_buff_prelude = set_combine(sets.midcast.song_buff,{back="Intarabus's Cape",feet=EmpyFeet})
	
	sets.midcast.song_buff_scherzo = set_combine(sets.midcast.song_buff,{feet=EmpyFeet})

	sets.midcast.song_buff_ballad = set_combine(sets.midcast.song_buff,{legs=EmpyLegs})
	
	sets.midcast.song_buff_carol = set_combine(sets.midcast.song_buff,{hands="Mousai Gages +1"})
	
	sets.midcast.song_buff_mambo = set_combine(sets.midcast.song_buff,{feet="Mou. Crackows +1"})
	
	sets.midcast.song_buff_etude = set_combine(sets.midcast.song_buff,{head="Mousai Turban +1"})
	
	sets.midcast.song_buff_paeon = set_combine(sets.midcast.song_buff,{head=AF_Head})

	sets.midcast.song_debuff = {
		main="Carnwenhan",
		head=AF_Head,
		body=EmpyBody,
		hands=EmpyHands,
		legs=EmpyLegs,
		feet=AF_Feet,
		neck="Mnbw. Whistle +1",
		waist="Acuity Belt +1",
		left_ear="Regal Earring",
		right_ear=Sortie_Earring,
		left_ring="Metamor. Ring +1",
		right_ring="Stikini Ring",
		back=Cape_FC_PDT,	
	}

	sets.midcast.song_debuff_foelullaby = {
		main="Carnwenhan",
		head=AF_Head,
		body=EmpyBody,
		hands=AF_Hands,
		legs="Inyanga Shalwar +2",
		feet=AF_Feet,
		neck="Mnbw. Whistle +1",
		waist="Acuity Belt +1",
		left_ear="Regal Earring",
		right_ear=Sortie_Earring,
		left_ring="Metamor. Ring +1",
		right_ring="Stikini Ring",
		back=Cape_FC_PDT,		
}

	sets.midcast.song_debuff_hordelullaby = {
		main="Carnwenhan",
		head=AF_Head,
		body=AF_Body,
		hands="Inyan. Dastanas +2",
		legs="Inyanga Shalwar +2",
		feet=Relic_Feet,
		neck="Mnbw. Whistle +1",
		waist="Acuity Belt +1",
		left_ear="Regal Earring",
		right_ear=Sortie_Earring,
		left_ring="Metamor. Ring +1",
		right_ring="Stikini Ring",
		back=Cape_FC_PDT,	
	}

	sets.midcast.song_debuff_threnody = set_combine(sets.midcast.song_buff,{body="Mou. Manteel +1"})

	sets.midcast.healing = {
		legs="Kaykaus Tights +1",
	}

	sets.midcast.cursna = {
		feet={ name="Vanya Clogs", augments={'Healing magic skill +20','"Cure" spellcasting time -7%','Magic dmg. taken -3',}},
		neck="Malison Medallion",
		left_ring="Hoama's Ring",
		right_ring="Menelaus's Ring",
		back="Oretan. Cape +1",
	}

	sets.midcast.magacc = {
		head=EmpyHead,
		body=EmpyBody,
		hands=EmpyHands,
		legs=EmpyLegs,
		feet=EmpyFeet,
		neck="Mnbw. Whistle +1",
		waist="Eschan Stone",
		left_ear="Malignance Earring",
		right_ear=Sortie_Earring,
		back=Cape_FC_PDT,	
	}

-----------------------------------------------------------------------------------------------------------------------------
        -- Add any set names here to be toggled with F9, ensure the set exists as a sets.TP[nameofset] below
	-- Currently removed and commented out sets: "Delay Cap","Evasion",
    TP_Set_Names = {"DT"}
    sets.TP = {}
    --sets.TP['Low Man'] = {}

    sets.TP.DT = set_combine(sets.TP['Low Man'],{
	ammo="Aurgelmir Orb",
    	head="Nyame Helm",
    	body="Nyame Mail",
    	hands="Nyame Gauntlets",
    	legs="Nyame Flanchard",
    	feet="Nyame Sollerets",
    	neck="Loricate Torque +1",
	--neck="Null Loop",
    	waist="Sailfi Belt +1",
    	left_ear={ name="Schere Earring", augments={'Path: A',}},
    	right_ear={ name="Kasuga Earring +1", augments={'System: 1 ID: 1676 Val: 0','Accuracy+14','Mag. Acc.+14','Weapon skill damage +3%',}},
    	left_ring="Murky Ring",
	right_ring="Varar Ring +1",
    	back=ws_dmg_back,
    })

-- Add any set names here to be toggled with F10, ensure the set exists as a sets.idle.nameofset below
-- Currently removed and commented out sets: ,"STP"
    Idle_Set_Names = {'Normal'}
    sets.Idle = {}
    sets.Idle.Normal = {
    		head=EmpyHead,
    		body="Nyame Mail",
    		hands=EmpyHands,
    		legs=EmpyLegs,
		--[[
		body=EmpyBody,
		]]--
		feet=EmpyFeet,
		neck="Loricate Torque +1",
		--neck="Mnbw. Whistle +1",
		waist="Flume Belt",
		left_ear="Ethereal Earring",
		right_ear="Mujin Stud",
		left_ring="Murky Ring",
		right_ring="Lebeche Ring",
		back=Cape_FC_PDT,	
	}
	
---------------------------------------------------------------------





-- This is where we will define our aftercast sets.  These are sets of gear that get equiped AFTER the spell or ability is used.  Normally this is used to put you back into your current TP set.
	sets.aftercast = {}
	
	sets.aftercast.idle = set_combine(sets.Idle.Normal,{
	
	})
	
	sets.aftercast.idle_tp = set_combine(sets.Idle.Normal,{
		
	})
	
	sets.aftercast.hybrid = set_combine(sets.aftercast.idle,sets.dt)
	
	sets.aftercast.hybrid_th = set_combine(sets.aftercast.hybrid,sets.th)
	
end

-----------------------------------------------------------------------------------
-- This is the precast section.  It is used for things you want to happen before you start to start to use the ability or spell.
 function precast(spell)

	if spell.action_type == "Magic" then
		if spell.type == 'BardSong' then
			equip(sets.precast.fc_song)
		else
			equip(sets.precast.fc)
		end
	elseif spell.english == "Soul Voice" then
		equip(sets.precast.soulvoice)
	elseif spell.english == "Troubadour" then
		equip(sets.precast.troubadour)
	elseif spell.english == "Nightingale" then
		equip(sets.precast.nightingale)
	elseif spell.type == "WeaponSkill" then
		if spell.english == "Aeolian Edge" then
			equip (sets.precast.ws_magdmg)
		else
			--equip (sets.precast.ws)
		end
		
		-- Matching weather
		if spell.element == world.weather_element then
			equip({waist="Hachirin-no-Obi"})
		end
	end
end

-----------------------------------------------------------------------------------
  -- This is the midcast section.  It is used to designate gear that you want on as the ability or spell is used.
function midcast(spell, act)

	if spell.type == 'BardSong' and (spell.target.type == 'PLAYER' or spell.target.type == 'SELF') and song_mode == 'dummy' then
		equip(sets.precast.fc)
    elseif spell.type == 'BardSong' and (spell.target.type == 'PLAYER' or spell.target.type == 'SELF') and song_mode == 'potency' then
		if spell.english:contains('Minne') then
			equip(sets.midcast.song_buff_minne)
		elseif spell.english:contains('Madrigal') then
			equip(sets.midcast.song_buff_madrigal)
		elseif spell.english:contains('Prelude') then
			equip(sets.midcast.song_buff_prelude)
		elseif spell.english:contains('Scherzo') then
			equip(sets.midcast.song_buff_scherzo)
		elseif spell.english:contains('Carol') then
			equip(sets.midcast.song_buff_carol)
		elseif spell.english:contains('Ballad') then
			equip(sets.midcast.song_buff_ballad)
		elseif spell.english:contains('Mambo') then
			equip(sets.midcast.song_buff_mambo)
		elseif spell.english:contains('Etude') then
			equip(sets.midcast.song_buff_etude)
		elseif spell.english:contains('Paeon') then
			equip(sets.midcast.song_buff_paeon)
		elseif spell.english:contains('Madrigal') then
			equip(sets.midcast.song_buff_madrigal)
		else
			equip(sets.midcast.song_buff)
		end
	elseif spell.type == 'BardSong' and spell.target.type == 'NPC' then
		if spell.english:startswith('Foe Lullaby') then
			equip(sets.midcast.song_debuff_foelullaby)
		elseif spell.english:startswith('Horde Lullaby') then
			equip(sets.midcast.song_debuff_hordelullaby)
		elseif spell.english:contains('Threnody') then
			equip(sets.midcast.song_debuff_threnody)
		else
			equip(sets.midcast.song_debuff)
		end
	elseif spell.skill == "Enfeebling Magic" then
		equip(sets.midcast.magacc)
	elseif spell.skill == "Healing Magic" then
		if spell.english == "Cursna" then
			equip(set_combine(sets.precast.fc,sets.midcast.cursna))
		elseif spell.english:startswith('Raise') then
			equip(sets.precast.fc)
		else
			equip(sets.midcast.healing)
		end
	elseif spell.type == "WhiteMagic" then
		equip(sets.midcast.magacc)
	elseif spell.type == "Trust" then
		equip(sets.precast.fc)
	end
end

-----------------------------------------------------------------------------------
function status_change(new,old)
    if T{'Idle','Resting'}:contains(new) then
        equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    elseif new == 'Engaged' then
        equip(sets.TP[TP_Set_Names[TP_Index]])
    end
end
-- This section is the aftercast section that makes it so that after any of the above abilities you get put back into the correct gearset.
-- You can create tp_mode gearsets for ANY purpose.  Just make sure you label them correctly.  All must be in the sets.aftercast section.  For instance sets.aftercast.dw40.
-- Don't forget to create a new gearset section defining the gear you want in it if you don't want to use my predefined sets.  Ie create a gearset for sets.aftercast.storetp.
function aftercast(spell, act, spellMap, eventArgs)
    	if player.status=='Engaged' then
        	equip(sets.TP[TP_Set_Names[TP_Index]])
    	else
        	equip(sets.Idle[Idle_Set_Names[Idle_Index]])
    	end
end
