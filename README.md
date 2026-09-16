# CoconaProstitutionBypass MOD for the game LonaRPG

## Why?

I'm a casual man, i want other ways to make Cocona able to help Lona as a Prostitute.

In this mod, if you missed the normal way, you can still make Cocona interested!

To do so, you need to bully her in the bath, and make her have an orgasm at least one time!

After that, if you prostitute yourself with her in your party, she will ask if she can help ^^

\* This mod only works if you bath with her after the church event.

<details>
  <summary>SPOILER: The normal/cannon way</summary>
  To make Cocona able to help Lona as a Prostitute in the usual way, you need to:
  - In the Church kidnap event: Choose the 2 option (dont enter the door) 3 times, this will make Cocona loss her virginity.
  - After that, in an interaction with Cocona, Lona will say "You save that for.." you must choose: "it is a special thing"
  
  (probabily after killing the guys and intereacting with her, my game bugged in this part, and i couldn't interact with Cocona, i made this mod because of this bug xD)
</details>


## Instalation

Download the zip you choose from the releases, and extract it in your `LonaRPG/ModScripts/_Mods` folder

It should be: `LonaRPG/ModScripts/_Mods/CoconaProstitutionBypass`

Make sure the folder name is exact `CoconaProstitutionBypass`!

## Requirements

I tested only on the version i have: `B.0.10.8.05` but might work on other version.

\* this mod also have a fix on the prostitution events, as they where not correctly registering the Costumer race in her Sex Stats.

## How it work, and how you can mod it yourself:

- The explanation is on the "loader.rb" file...
- Basicaly this loader injects a verification right after the Bath events (I discovered the event search the files for "Bath" or "Cocona")
- the verification is if the fix is applied or not, and if Cocona already got fingered, and has had an orgasm.
- you can change the verifications made in the "loader.rb", i let tips there on what you could change!


- The fix is in the file "Data/HCGframes/UniqueEvent_CoconaVag.rb", basicaly moving the "tgtRace part to line 33, and using the race in the sex record function.

```
	tgtRace = $story_stats["tmpData"][:race] if $story_stats["tmpData"] && $story_stats["tmpData"][:race] if coconaEV
	$game_NPC_actors["Cocona"].write_sex_record_vag(["DataNpcName:race/#{tgtRace}" , "DataNpcName:part/penis"])
```

## Have ideas?

Feel free to tell me suggestions ^^ and all cudos to LonaRPG devs for this great game!