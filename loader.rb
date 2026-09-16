$imported ||= {}
$imported[:CoconaProstitutionBypass] = "ModScripts/_Mods/CoconaProstitutionBypass/"

# Race register fix, not that needed:
$mod_load_script["Data/HCGframes/UniqueEvent_CoconaVag.rb"] = "#{$imported[:CoconaProstitutionBypass]}Scripts/UniqueEvent_CoconaVag.rb"

=begin  
Basicaly, the function below is applied AFTER the event "Data\HCGframes\event\HevCoconaBathAgain.rb" is executed.

This event is were you bath with cocona at least one time, allowing you to "bully her", making her taste the pleasures of the flesh.

If cocona didn't get r*ped on the church or if you missed the correct answer after that, the value of $story_stats["RecQuestCoconaVagTaken"] should be -1.

$story_stats["RecQuestCoconaVagTaken"] = 2  -> Value after Rape scene + correct answer. 
Prostitute yourself with her in the part and allow her to prostitute herself.

$story_stats["RecQuestCoconaVagTaken"] = 3  -> Value after that. With this value, you can offer her directly, without needing to show to her.
=end
class Game_Interpreter
  alias_method :cocona_bath_again_load_script_orig, :load_script

  def load_script(file_path)
    cocona_bath_again_load_script_orig(file_path)
    
    if file_path && file_path.to_s.include?("HevCoconaBathAgain.rb")
      if $story_stats && 
         $story_stats["RecQuestCoconaVagTaken"] == -1 && # applied only if she doesn't know it already and after the church event.
         $game_NPC_actors && 
         $game_NPC_actors["Cocona"] && 
         $game_NPC_actors["Cocona"].sex_record && 
         $game_NPC_actors["Cocona"].sex_record["sex_record_DidFingerJob"].to_i >= 1 && 
         $game_NPC_actors["Cocona"].sex_record["sex_record_orgasm"].to_i >= 1 

        $story_stats["RecQuestCoconaVagTaken"] = 2
      end
    end
  end
end
=begin
You can change the "sex_record_DidFingerJob" or "sex_record_orgasm" for other thing such:

$game_NPC_actors["Cocona"].sex_record["sex_record_vaginal_count"].to_i >= 1 
$game_NPC_actors["Cocona"].sex_record["sex_record_groin_harassment"].to_i >= 1 
$game_NPC_actors["Cocona"].sex_record["sex_record_DidFingerJob"].to_i >= 1 
$game_NPC_actors["Cocona"].sex_record["sex_record_orgasm"].to_i >= 1 
$game_NPC_actors["Cocona"].sex_record["sex_record_peed"].to_i >= 1
=end