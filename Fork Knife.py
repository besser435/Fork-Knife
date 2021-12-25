"""
NOTE
See readme on GitHub for important details
https://github.com/besser435/Fork-Knife

"Development" started 12-23-21

Ideas and to do list:
Metal, wood, brocks, some more rare and weaker/stronger than others

v1 has very basic handling of damage, its simple and not dynamic. v2 should have
things like armor pen depending on the weapon, damage falloff due to distance, ect

add resistance potion. wears off after a certain amount of turns

make the first 2 turns always find stuff
add a difficulty option. would change things like weapon damage and enemy health
add colored text

BUG
Bugs:
Sheilds can go past 100. do some math to check if sheilds will go over 100. if they do,
just make the sheilds 100

you can just spam enter to win, impliment a check to make sure an action is taken before a turn is advanced
things to make sure to keep constant for this are: turn count, player count. everything else only changes
after a turn is taken

inventory is a general mess. see if it can be displayed with for loops insteal of har coding it
"""
version = "v0.2 alpha | 12-25-21"   #alpha = non functional, missing/broken things

import random
import time
import os


# options
debug = 0   # enables certain messages throught the code for debugging
sheild_damage_absorb = 0.25  # removes % damage after being shot
sheild_deterioration = 30   # reduces sheild health by this number after being shot
potion_hp_restore_amount = 50
max_inv_slots = 6   # referenced for some things. inv. is hard coded, this doesnt actually change anything   

# storage
turn = 1
players_left = 100
hp = 100
sheilds = 0
kills = 0
total_damage_delt = 0   
total_damage_received = 0
inv = ["pickaxe", "", "", "", "", "", ""]

build_mat = 0   # building materials. more types will be added in the future
#wood = 0
#metal = 0
#brick = 0
has_dropped = 0    # this makes the first few turns skip combat

drop_locations = ["Loot Pond", "Your Mom's House", "Tilted Bridges",
"Pleasant Place", "Retail Road", "The Kremlin"]

def cc():   # shortened this long command to cc()
    os.system("cls" if os.name == "nt" else "clear")
cc()

if debug == False:
    def main_menu():
        print("Welcome to fork knife (scuffed Fortnite)")
        print("Made by besser")
        print()
        print("1. Start game")
        #print("2. Settings")    # change difficulty, sound effects, debug, ect
        print()
        print(version)
        menu_input = input()
        cc()
    main_menu()


class old_debug_menu: # so the following code can be collasped in my IDE
    """# debug options
    # broken, because of how I layed out the code; it can't really go anywhere.
    this can be fixed, but I'm too lazy.
    leaving this in for now as I don't like deleting code

    if debug == True:
        debug_query = input("Select function: ")
        print("1: Current rand_action")
        if debug_query == "1":
            pass #< libtarded              (continues)
        
        print("2: encounter_enemy")
        if debug_query == "2":
            encounter_enemy()
    """


while players_left >=0:


    if turn <= 1 and debug == False:    # displays drop location
        print("We droppin' at " + random.choice(drop_locations))
        input("Press enter to leave the Battle Beetle™ ")


    def display_turn(): # displays stuff that updates each turn
        global turn
        global disp_inv
        global players_left

        player_kill_count = random.randint(0,4) # decides how many players to off each turn
        players_left = players_left - player_kill_count
        

        print("Turn: " + str(turn))
        print("Players left: " + str(players_left))
        print("Health: " + str(hp))
        print("Sheilds: " + str(sheilds))
        print("Kills: " + str(kills))
        print("Building materials: " + str(build_mat))
        print()
        print("Inventory:")

 
        # this autism could probably be done better wih loops. but they are scary, so this is how im gonna do it
        def disp_inv():
            print("Slot 1: " + inv[0], end=", ")    # sLoT oNe, iNv zEro (lol I counted from 1 and it broke things the first time)
            print("Slot 2: " + inv[1], end=", ")
            print("Slot 3: " + inv[2])
            print("Slot 4: " + inv[3], end=", ")
            print("Slot 5: " + inv[4], end=", ")
            print("Slot 6: " + inv[5])
            print()
        disp_inv()
        turn += 1
    

    def rand_actions_select():             #---## ACTION HERE ##---#
        global chosen_action   
        rand_action = ["encounter_enemy"]   # used for dev. forces the game to pick a certain function

        #rand_action = ["explore", "encounter_enemy", "find_weapon",
        #"find_build_mat", "find_sheilds", "find_potion"]
        
        chosen_action = random.choice(rand_action)
        if debug == True: print("chosen_action: " + chosen_action)
    rand_actions_select()


    if chosen_action == "explore":
        def explore():
            global max_inv_slots
            display_turn()
            print()
            print("You encounter no one and explore the area")
            
            query_explore = input("Would you like to use an item? y/n ")

            if "y" in query_explore:
                what_item = input("What item would you like to use? 1-" + str(max_inv_slots) + " ")
            else:
                pass
        explore()
        
    #def enemy_combat(): # easier/better organized to have a seperate function rather than including it below maybe idk


    if chosen_action == "encounter_enemy":
        def encounter_enemy():  
            global build_mat
            cc()
            display_turn()
            range = random.randint(0,1500)  # useless for now

            print()
            print("You encounter an enemy.")
            print("They are " + str(range) + " meters away from you (WIP)")   
            print("Would you like to:")
            print("1. Attack")
            print("2. Build")
            print("3. Run Away")
            query_enemy = input()

            if "1" in query_enemy:
                cc()
                print("What weapon would you like to use?")
                print
                disp_inv()
                weapon_choice = input()
                

                who_shoots = random.randint(0, 1)   # who shoots first. first shooter has benefits
                enemy_health_rand = random.randint(70,100)  # should change with difficulty
                enemy_armor_rand = random.randint(0,100)

                """ player to enemy damage
                if player shoots first, add 5% extra damage
                enemy health - (weapon dmg rng  * arm pen)
                if type not gun:
                    same thing but check for range
                """


                if who_shoots == 0:
                    cc()
                    display_turn()
                    print("You see the enemy first and get the first hit.")
                else:
                    cc()
                    display_turn()
                    print("The enemy sees you first and gets the first hit.")
                
                if debug == True:
                    print("who_shoots " + str(who_shoots))

            input("Press enter to continue")


            if "2" in query_enemy:
                cc()
                if build_mat <= 20:
                    display_turn()
                    print()
                    print("You do not have enough building materials!")
                    #print("Because of this stumble, you get shot first")   # might add idk

                    need_build = str(20 - build_mat)
                    print("You need " + need_build)
                   
                    input("Press enter to continue")
                    encounter_enemy()
                else:

                    build_mat -= 20
                    print("built mat after use: " + str(build_mat))
                display_turn()
        encounter_enemy()
            

    class gun_stats:
        global weapons_list
        """list order is:
        damage_min, damage_max, armor_pen, max_range(only used on some weapons)
        damage RNG
        """
        weapons_list = ["mp5", "pump_shotgun", "sniper_rifle",  # pickaxe not included, its stuck in inventory be default
         "assualt_rifle", "rpg", "pistol"]

        # super_succ   SMG from CS:GO (MP5)
        ss = [12, 25, 0.1]
        ss_rng = random.randint(ss[0], ss[1])
    
        # pump shotgun
        ps = [3, 70, 0.08]
        ps_rng = random.randint(ps[0], ps[1])

        # sniper rifle
        snr = [70, 170, 0.95]
        snr_rng = random.randint(snr[0], snr[1])

        # assualt rifle
        ar = [20, 45, 0.4]
        ar_rng = random.randint(ar[0], ar[1])

        # pickaxe
        pa = [40, 80, 0.6, 200] # ah yes, a close range weapon at 200 meters (due to RNG having a large range)
        pa_rng = random.randint(pa[0], pa[1])

        # rpg
        rpg = [55, 130, 0.85, 1000]
        rpg_rng = random.randint(rpg[0], rpg[1])

        # pistol
        pst = [20, 40, 0.1]
        pst_rng = random.randint(pst[0], pst[1])


    if chosen_action == "find_weapon":
        def find_weapon():
            get_weapon_rng = random.choice(weapons_list)
            cc()
            display_turn()
            print()
            print("You found " + get_weapon_rng + ".")
            keep_weapon = input("Would you like to keep this weapon? y/n")

            if keep_weapon == "y":
                add_inv = input("What inventory slot would you like to place it in?")
                
            else:
                pass


    if chosen_action == "find_build_mat":
        display_turn()
        print()

        if build_mat >= 100:
            print("You find building materials, but already have the maximum amount.")
            input("Press enter to continue")
        else:
            build_mat_find = random.randint(5,20)
            print("You found " + str(build_mat_find) + " building materials")
            build_mat += build_mat_find
            input("Press enter to continue")


    if chosen_action == "find_sheilds":
        display_turn()
        print()

        if sheilds >=100:
            print("You find sheilds, but already have the maximum amount.")
            input("Press enter to continue")
            #re roll. this solution isnt elegant and is pointless
        else:
            sheild_type = [25, 50, 100]
            sheild_type_rand = random.choice(sheild_type)
            print("You found " + str(sheild_type_rand) + " sheilds")
            sheilds += sheild_type_rand
            input("Press enter to continue")


    if chosen_action == "find_potion":
        display_turn()
        print()

        pot_type = [20, 50, 70]
        pot_type_rand = random.choice(pot_type)
        print("You found a healing potion sheilds")
        print("It will restore" + str(pot_type_rand) + " HP")
      
        ask_pot = input("Would you like to add this item to your inventory? y/n ")
        if ask_pot == "y":
            print("Which slot? 1-" + str(max_inv_slots))





    def game_end(condition):
        if condition == "win":
            cc()
            print("Poggers you got that epic victory royal")    # not a typo, this game is just a bootleg version
        else:
            cc()
            print("lmao loser you ded")

        print()
        print("Total kill count: " + str(kills))
        print("Damage inflicted: " + str(total_damage_delt))
        print("Damage received: " + str(total_damage_received))
      


    #if players_left <= 1:
       #game_end("win")
    if hp <=0:
        game_end("lose")

game_end("win")
