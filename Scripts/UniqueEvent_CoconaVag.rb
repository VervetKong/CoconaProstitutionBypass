DataManager.write_rec_constant("RecHevUniqueEvent_CoconaVag",1)




portrait_hide
$story_stats["ForceChcgMode"] = 1
$game_player.force_update = false
chcg_background_color(200,0,200,40)
recRoomMode = $story_stats["tmpData"] && $story_stats["tmpData"][:recRoomMode]

tgtRace = "Human" #var controlled by evv

if recRoomMode
	
	$game_NPCLayerMain.clear_stat_keys
	$game_NPCLayerMain.stat["EventExt2"]	=0
	$game_NPCLayerMain.stat["EventVag"]		=0
	$game_NPCLayerMain.stat["EventExt3"]	=0
	$game_NPCLayerMain.stat["EffectWet"]				=0
	$game_NPCLayerMain.stat["Cocona_BOX"]					=0
	$game_NPCLayerMain.stat["VagXray"]				=0
	
	coconaEV = false
	targetActor = $game_NPCLayerMain
else
	return if !cocona_in_group?
	return if !get_character($game_player.get_followerID(0))
	coconaEV = get_character($game_player.get_followerID(0))
	targetActor = $game_NPC_actors["Cocona"]
	$game_NPC_actors["Cocona"].sex_record["sex_record_vaginal_count"] += 1
	#------------------------------------------------------------- UPDATE BY MOD: Correct NPC race register
	tgtRace = $story_stats["tmpData"][:race] if $story_stats["tmpData"] && $story_stats["tmpData"][:race] if coconaEV
	$game_NPC_actors["Cocona"].write_sex_record_vag(["DataNpcName:race/#{tgtRace}" , "DataNpcName:part/penis"])
	#-------------------------------------------------------------
end

targetActor.stat["EventVagRace"] = tgtRace
targetActor.stat["EventExt2"] = "BackFuckerLHand"
targetActor.stat["EventVag"] = 0
targetActor.stat["EventExt3"] = "BackFuckerRHand"
tmpWombPunch = [true,false].sample #var controlled by evv
targetActor.stat["Cocona_BOX"] = rand(2)
targetActor.stat["VagXray"] = 0

###################################################################################################################################################################################
#1 begin
$game_NPCLayerMain.prtmood("CoconaHevBackPose_shame")
$game_portraits.setRprt("NPCLayerMain")

targetActor.stat["EventExt2"] = 0
targetActor.stat["EventVag"] = 0
targetActor.stat["EventExt3"] = 0
targetActor.stat["EventVagRace"] = tgtRace

$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus
$game_portraits.rprt.set_position(-125,-58)
call_msg("CompCocona:WhoreEV/fuck0")

###################################################################################################################################################################################
#2 show hands co shake


$game_NPCLayerMain.prtmood("CoconaHevBackPose_shame")
$game_portraits.setRprt("NPCLayerMain")

targetActor.stat["EventExt2"] = "BackFuckerLHand"
targetActor.stat["EventVag"] = 0
targetActor.stat["EventExt3"] = "BackFuckerRHand"
targetActor.stat["EventVagRace"] = tgtRace

$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus
$game_portraits.rprt.set_position(-125-10,-58-20)
targetActor.portrait.shake
SndLib.sound_equip_armor
call_msg("CompCocona:WhoreEV/fuck1")

###################################################################################################################################################################################
#3 Show fucker enter

$game_NPCLayerMain.prtmood("CoconaHevBackPose_shame")
$game_portraits.setRprt("NPCLayerMain")

targetActor.stat["EventExt2"] = "BackFuckerLHand"
targetActor.stat["EventVag"] = "Back1"
targetActor.stat["EventExt3"] = "BackFuckerRHand"
targetActor.stat["EventVagRace"] = tgtRace
$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus
$game_portraits.rprt.set_position(-125-10,-58-20)
$game_NPCLayerMain.portrait.shake
SndLib.sound_equip_armor

call_msg("CompCocona:WhoreEV/fuck2")
###################################################################################################################################################################################
#4 male penis touch VAG
$game_NPCLayerMain.prtmood("CoconaHevBackPose_normal")
$game_portraits.setRprt("NPCLayerMain")

targetActor.stat["EventExt2"] = "BackFuckerLHand"
targetActor.stat["EventVag"] = "Back2"
targetActor.stat["EventExt3"] = "BackFuckerRHand"
$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus
$game_portraits.rprt.set_position(-125-10,-58-20)
$game_NPCLayerMain.portrait.shake
SndLib.sound_chs_dopyu(80) ; wait(25)
call_msg("CompCocona:cocona/RecQuestCocona_HEV3_19")

###################################################################################################################################################################################
#4 male penis put in
$game_NPCLayerMain.prtmood("CoconaHevBackPose_cumming")
$game_portraits.setRprt("NPCLayerMain")

targetActor.stat["EventExt2"] = "BackFuckerLHand"
targetActor.stat["EventVag"] = "Back3"
targetActor.stat["EventExt3"] = "BackFuckerRHand"
targetActor.stat["vagopen"] = 1
$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus
$game_portraits.rprt.set_position(-125-50,-58-60)
$game_NPCLayerMain.portrait.shake
SndLib.sound_chs_dopyu(80) ; wait(25)
call_msg("CompCocona:cocona/RecQuestCocona_HEV3_17")

###################################################################################################################################################################################
#5 putin dirty talk   tie 
$game_NPCLayerMain.prtmood("CoconaHevBackPose_normal")
$game_portraits.setRprt("NPCLayerMain")

targetActor.stat["EventExt2"] = "BackFuckerLHand"
targetActor.stat["EventVag"] = "Back4"
targetActor.stat["EventExt3"] = "BackFuckerRHand"
targetActor.stat["vagopen"] = 1
$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus
$game_portraits.rprt.set_position(-125,-58)
SndLib.sound_chs_dopyu(80,80) ; wait(10)

targetActor.stat["EventExt2"] = "BackFuckerLHand"
targetActor.stat["EventVag"] = "Back5"
targetActor.stat["EventExt3"] = "BackFuckerRHand"
targetActor.stat["vagopen"] = 1
$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus
$game_portraits.rprt.set_position(-125,-58)
wait(5)

$game_NPCLayerMain.prtmood("CoconaHevBackPose_cumming")
$game_portraits.setRprt("NPCLayerMain")
targetActor.stat["EventExt2"] = "BackFuckerLHand"
targetActor.stat["EventVag"] = "Back6"
targetActor.stat["EventExt3"] = "BackFuckerRHand"
targetActor.stat["vagopen"] = 1
$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus

$game_portraits.rprt.set_position(-125,-88)
$game_NPCLayerMain.portrait.shake
targetActor.add_state("EffectBleedVag") if targetActor.stat["VaginalDamaged"] != 1
if tmpWombPunch
	call_msg("CompCocona:WhoreEV/fuck3")
	if coconaEV
		targetActor.health -= 20
		coconaEV.actor.update_npc_stat
		3.times{targetActor.add_wound("groin")}
	end
	SndLib.sound_chs_dopyu(80,80) ; wait(10)
	$game_NPCLayerMain.portrait.shake
	wait(30)
	$game_NPCLayerMain.prtmood("CoconaHevBackPose_normal")
	$game_portraits.setRprt("NPCLayerMain")
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back7"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	targetActor.stat["vagopen"] = 1
	targetActor.stat["VagXray"] = "CumInside1"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-125,-38)
	$game_NPCLayerMain.portrait.shake
	SndLib.sound_punch_hit(100,150)
	SndLib.sound_chs_dopyu(80,80) ; wait(10)
	wait(20)
	$game_NPCLayerMain.portrait.shake
	SndLib.sound_punch_hit(100,150)
	SndLib.sound_chs_dopyu(80,80) ; wait(10)
	wait(30)
	call_msg("CompCocona:cocona/RecQuestCocona_HEV3_Roar2")
	targetActor.stat["VagXray"] = 0
else
	targetActor.stat["VagXray"] = 0
	call_msg("CompCocona:cocona/RecQuestCocona_HEV3_16")
end
###################################################################################################################################################################################
#6 Start Moving

call_msg("CompCocona:WhoreEV/fuck4_#{rand(3)}")
4.times{
	SndLib.sound_chs_dopyu(80,80)
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back5"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	targetActor.stat["vagopen"] = 1
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-90-50,-58-20)
	wait(6)

	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back4"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	targetActor.stat["vagopen"] = 1
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-120-50,-58-40)
	wait(10)

	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back5"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	targetActor.stat["vagopen"] = 1
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-90-50,-58-20)
	wait(10)

	$game_NPCLayerMain.prtmood("CoconaHevBackPose_normal")
	$game_portraits.setRprt("NPCLayerMain")
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back6"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	targetActor.stat["vagopen"] = 1
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-80-50,-58-10)
	#$game_NPCLayerMain.portrait.shake
	wait(30)
	targetActor.mood -= 2 if coconaEV
	targetActor.arousal += 12 if coconaEV
	targetActor.batch_take_vag_sex_damage(scale=2.7) if coconaEV
	coconaEV.actor.checkOev_NPC_actor(parallel=false) if coconaEV
}
call_msg("CompCocona:cocona/#{["RecQuestCocona_HEV3_2","RecQuestCocona_HEV3_3","RecQuestCocona_HEV3_Roar2","RecQuestCocona_HEV3_Roar5"].sample}")
###################################################################################################################################################################################
#7 move fast
ax = -5 + rand(11) #make some camera change
ay = rand(75) #make some camera change
10.times{
	SndLib.sound_chs_dopyu(80-10,80)
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back5"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-70-10-40+ax,-65-30+ay)
	wait(3)
	
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back4"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-100-10-40+ax,-65-50+ay)
	wait(5)
	
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back5"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-70-10-40+ax,-65-30+ay)
	wait(5)

	$game_NPCLayerMain.prtmood("CoconaHevBackPose_normal")
	$game_portraits.setRprt("NPCLayerMain")
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back6"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-60-10-40+ax,-65-20+ay)
	wait(15)
	targetActor.mood -= 2 if coconaEV
	targetActor.arousal += 12 if coconaEV
	targetActor.batch_take_vag_sex_damage(scale=2.7) if coconaEV
	coconaEV.actor.checkOev_NPC_actor(parallel=false) if coconaEV
}
$game_NPCLayerMain.portrait.shake
call_msg("CompCocona:cocona/#{["RecQuestCocona_HEV3_2","RecQuestCocona_HEV3_3","RecQuestCocona_HEV3_Roar2","RecQuestCocona_HEV3_Roar5"].sample}")
ax = -5 + rand(11) #make some camera change
ay = rand(75) #make some camera change
10.times{
	SndLib.sound_chs_dopyu(80,90)
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back5"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-70-20-30+ax,-75-30+ay)
	wait(2)
	
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back4"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-100-20-30+ax,-75-40+ay)
	wait(3)

	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back5"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-70-20-30+ax,-75-30+ay)
	wait(3)
	
	$game_NPCLayerMain.prtmood("CoconaHevBackPose_normal")
	$game_portraits.setRprt("NPCLayerMain")
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back6"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-60-20-30+ax,-75-20+ay)
	wait(10)
	targetActor.mood -= 2 if coconaEV
	targetActor.arousal += 12 if coconaEV
	targetActor.batch_take_vag_sex_damage(scale=2.7) if coconaEV
	coconaEV.actor.checkOev_NPC_actor(parallel=false) if coconaEV
}
$game_NPCLayerMain.portrait.shake
call_msg("CompCocona:cocona/#{["RecQuestCocona_HEV3_2","RecQuestCocona_HEV3_3","RecQuestCocona_HEV3_Roar2","RecQuestCocona_HEV3_Roar5"].sample}")
ax = -5 + rand(11) #make some camera change
ay = rand(75) #make some camera change
10.times{
	SndLib.sound_chs_dopyu(80)
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back5"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-70-30-20+ax,-80-30+ay)
	wait(1)
	
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back4"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-100-30-20+ax,-80-40+ay)
	wait(2)
	
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back5"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-70-30-20+ax,-80-30+ay)
	wait(2)
	
	$game_NPCLayerMain.prtmood("CoconaHevBackPose_normal")
	$game_portraits.setRprt("NPCLayerMain")
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back6"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-60-30-20+ax,-80-20+ay)
	wait(5)
	targetActor.mood -= 2 if coconaEV
	targetActor.arousal += 12 if coconaEV
	targetActor.batch_take_vag_sex_damage(scale=2.7) if coconaEV
	coconaEV.actor.checkOev_NPC_actor(parallel=false) if coconaEV
}
call_msg("CompCocona:WhoreEV/fuck5")
call_msg("CompCocona:cocona/#{["RecQuestCocona_HEV3_2","RecQuestCocona_HEV3_3","RecQuestCocona_HEV3_Roar2","RecQuestCocona_HEV3_Roar5"].sample}")

###################################################################################################################################################################################

4.times{
	SndLib.sound_chs_dopyu(80,80)
	$game_NPCLayerMain.prtmood("CoconaHevBackPose_normal")
	$game_portraits.setRprt("NPCLayerMain")
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back5"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-125,-108)
	wait(4)
	
	$game_NPCLayerMain.prtmood("CoconaHevBackPose_cumming")
	$game_portraits.setRprt("NPCLayerMain")
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back8"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-115,-108)
	$game_NPCLayerMain.portrait.shake
	wait(40)
	targetActor.mood -= 2 if coconaEV
	targetActor.arousal += 12 if coconaEV
	targetActor.batch_take_vag_sex_damage(scale=2.7) if coconaEV
	coconaEV.actor.checkOev_NPC_actor(parallel=false) if coconaEV
}
call_msg("CompCocona:WhoreEV/fuck6")
call_msg("CompCocona:cocona/#{["RecQuestCocona_HEV3_2","RecQuestCocona_HEV3_3","RecQuestCocona_HEV3_Roar2","RecQuestCocona_HEV3_Roar5"].sample}")

###################################################################################################################################################################################

targetActor.addCums("CumsCreamPie",1000,targetActor.stat["EventVagRace"]) if coconaEV
2.times{
	SndLib.sound_chs_dopyu(80,50)
	$game_NPCLayerMain.prtmood("CoconaHevBackPose_cumming")
	$game_portraits.setRprt("NPCLayerMain")
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back7"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	targetActor.stat["VagXray"] = "CumInside2"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-125+25,-28)
	$game_NPCLayerMain.portrait.shake
	wait(60)
	targetActor.mood -= 2 if coconaEV
	targetActor.arousal += 12 if coconaEV
	targetActor.batch_take_vag_sex_damage(scale=2.7) if coconaEV
	coconaEV.actor.checkOev_NPC_actor(parallel=false) if coconaEV
}
call_msg("CompCocona:cocona/#{["RecQuestCocona_HEV3_2","RecQuestCocona_HEV3_3","RecQuestCocona_HEV3_Roar2","RecQuestCocona_HEV3_Roar5"].sample}")

2.times{
	SndLib.sound_chs_dopyu(80,50)
	$game_NPCLayerMain.prtmood("CoconaHevBackPose_cumming")
	$game_portraits.setRprt("NPCLayerMain")
	targetActor.stat["EventExt2"] = "BackFuckerLHand"
	targetActor.stat["EventVag"] = "Back9"
	targetActor.stat["EventExt3"] = "BackFuckerRHand"
	targetActor.stat["VagXray"] = "CumInside3"
	$game_NPCLayerMain.portrait.update
	$game_portraits.rprt.focus
	
	$game_portraits.rprt.set_position(-125+25,-28)
	#$game_portraits.rprt.set_position(-179+50,-28)
	$game_NPCLayerMain.portrait.shake
	wait(60)
	targetActor.mood -= 2 if coconaEV
	targetActor.arousal += 12 if coconaEV
	targetActor.batch_take_vag_sex_damage(scale=2.7) if coconaEV
	coconaEV.actor.checkOev_NPC_actor(parallel=false) if coconaEV
}
call_msg("CompCocona:cocona/#{["RecQuestCocona_HEV3_2","RecQuestCocona_HEV3_3","RecQuestCocona_HEV3_Roar2","RecQuestCocona_HEV3_Roar5"].sample}")

SndLib.sound_chs_dopyu(80,50)
$game_NPCLayerMain.prtmood("CoconaHevBackPose_cumming")
$game_portraits.setRprt("NPCLayerMain")
targetActor.stat["EventExt2"] = "BackFuckerLHand"
targetActor.stat["EventVag"] = "Back8"
targetActor.stat["EventExt3"] = "BackFuckerRHand"
targetActor.stat["VagXray"] = 0
$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus

$game_portraits.rprt.set_position(-125+25,-28)
#$game_portraits.rprt.set_position(-179,-110)
$game_NPCLayerMain.portrait.shake
call_msg("CompCocona:WhoreEV/fuck_end0")
call_msg("CompCocona:WhoreEV/fuck1")

SndLib.sound_chs_dopyu(80,50)
$game_NPCLayerMain.prtmood("CoconaHevBackPose_shame")
$game_portraits.setRprt("NPCLayerMain")
targetActor.stat["EventExt2"] = "BackFuckerLHand"
targetActor.stat["EventVag"] = "Back10"
targetActor.stat["EventExt3"] = "BackFuckerRHand"
targetActor.stat["VagXray"] = 0
$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus
	
$game_portraits.rprt.set_position(-228+80,-178)
$game_NPCLayerMain.portrait.shake
call_msg("CompCocona:WhoreEV/fuck_end1")
call_msg("CompCocona:WhoreEV/fuck1")

$game_NPCLayerMain.prtmood("CoconaHevBackPose_shame")
$game_portraits.setRprt("NPCLayerMain")
targetActor.stat["EventExt2"] = 0
targetActor.stat["EventVag"] = 0
targetActor.stat["EventExt3"] = "BackFuckerRHand"
targetActor.stat["VagXray"] = 0
$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus
	
$game_portraits.rprt.set_position(-125+50,-108)
$game_NPCLayerMain.portrait.shake
call_msg("................")
call_msg("............")
call_msg("......")

$game_NPCLayerMain.prtmood("CoconaHevBackPose_shame")
$game_portraits.setRprt("NPCLayerMain")
targetActor.stat["EventExt2"] = 0
targetActor.stat["EventVag"] = 0
targetActor.stat["EventExt3"] = 0
targetActor.stat["VagXray"] = "CumInside5"
$game_NPCLayerMain.portrait.update
$game_portraits.rprt.focus
	
$game_portraits.rprt.set_position(-157,-34)
$game_NPCLayerMain.portrait.shake
call_msg("CompCocona:WhoreEV/fuck_end2_#{rand(2)}")
call_msg("............")
call_msg("......")
###################################################################################################################################################################################















###################################################################################################################################################################################
#end

if coconaEV
	targetActor.sta = -1  if targetActor.sta > 0
	if targetActor.stat["VaginalDamaged"] >= 0 
		targetActor.sta -= 15
		targetActor.mood -= 50
	else
		targetActor.sta -= 50
		targetActor.mood -= 200
	end
	coconaEV.actor.update_npc_stat
	targetActor.add_wound("groin")
	targetActor.stat["Cocona_exp_vag"] +=1
	targetActor.event_key_cleaner
	#coconaEV.batch_cocona_setCHS
	#coconaEV.batch_cocona_setHstats
	coconaEV.chs_need_update = true
	coconaEV.actor.update_npc_stat
	coconaEV.actor.force_stun("Stun2")
end
###################################################################################################################################################################################
#call_msg("TagMapCargoSaveCecily:CecilyRape/stage_rape_end")

targetActor.stat["Cocona_BOX"] = 0
targetActor.stat["VagXray"] = 0
$game_NPCLayerMain.portrait.mirror = false
chcg_background_color_off
$story_stats["ForceChcgMode"] = 0
$game_player.force_update = true
portrait_off
