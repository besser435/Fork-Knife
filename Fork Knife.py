"""
NOTE
See readme on GitHub for important details
"Development" started 12-23-21
v0.1 alpha
https://github.com/besser435/Fork-Knife


Ideas and to do list:
Metal, wood, brocks, some more rare and weaker/stronger than others

v1 has very basic handling of damage, its simple and not dynamic. v2 should have
things like armor pen depending on the weapon, damage falloff due to distance, ect

right now the inventory is a clusterfuck, it will be switched to an array 
later(tm)

make the first 3 turns always find stuff

max out sheilds at 100, dont just keep adding to the number. check for the max

"""


import random
import os


# options
debug = 1   # enables certain messages throught the code for debugging
sheild_damage_absorb = 0.25  # removes % damage after being shot
sheild_deterioration = 30   # reduces sheild health by this number after being shot
potion_hp_restore_amount = 50

# storage
turn = 1
players_left = 100
hp = 100
sheilds = 0
kills = 0
total_damage_delt = 0   
total_damage_received = 0
#inventory = ["pickaxe", "", "", "", "", ""]
slot1 = "pickaxe"
slot2 = "test"
slot3 = "hello"
slot4 = ""
slot5 = ""
slot6 = ""
enemy_health = 100

build_mat = 0   # building materials. more types will be added in the future
#wood = 0
#metal = 0
#brick = 0


drop_locations = ["Loot Pond", "Your Mom's House", "Tilted Bridges",
"Pleasant Place", "Retail Road", "The Kremlin"]

def cc():   # shortened this long command to cc()
    os.system("cls" if os.name == "nt" else "clear")
cc()



def main_menu():
    print("Welcome to fork knife (scuffed fortnite)")
    print("Press enter when you are ready to play")
    input()
    cc()
main_menu()


while players_left >=0:

    def display_turn(): # displays stuff that updates each turn
        global turn
        global players_left

        player_kill_count = random.randint(0,4) # decides how many players to off each turn
        players_left = players_left - player_kill_count
        
        if turn <= 1: 
            print("We droppin' at " + random.choice(drop_locations))
            print()
        print("Turn: " + str(turn))
        print("Players left: " + str(players_left))
        print("Health: " + str(hp))
        print("Sheilds: " + str(sheilds))
        print("Kills: " + str(kills))
        print()
        print("Inventory:")

        print("Slot 1: " + slot1, end=", ")
        print("Slot 2: " + slot2, end=", ")
        print("Slot 3: " + slot3)
        print("Slot 4: " + slot2, end=", ")
        print("Slot 5: " + slot2, end=", ")
        print("Slot 6: " + slot2)
        print()
        turn += 1
    #display_turn()

    
    cc()

    rand_action = ["encounter_enemy"]


    """rand_action = ["explore", "encounter_enemy", "find_weapon",
    "find_build_mat", "find_sheilds", "find_potion"]"""

    chosen_action = random.choice(rand_action)
    if debug == True: print("chosen_action: " + chosen_action)


    if chosen_action == "explore":
        display_turn()
        print()
        print("You encounter no one and explore the area")
        
        query_explore = input("Would you like to use an item? y/n ")

        if "y" in query_explore:
            pass
        else:
            pass
        

    if chosen_action == "encounter_enemy":
        display_turn()
        range = random.randint(0,1500)



        print()
        print("You encounter an enemy")
        print("They are " + str(range) + " meters away from you")   # useless for now
        print("Would you like to:")
        print("1. Attack")
        print("2. Build")
        print("3. Run Away")
        query_enemy = input()

        if "1" in query_enemy:
            weapon_choice = input("What weapon would you like to use? ")


    class gun_stats:
        def super_succ():   # SMG from CS:GO (MP5)
            ss_damage_min = 10
            ss_damage_max = 25
            #armor_pen = 0.1
        
        def pump_shotgun():
            ps_damage_min = 3
            ps_damage_max = 70
            #armor_pen = 0.08

        def sniper_rifle():
            sr_damage_min = 70
            sr_damage_max = 150
            #armor_pen = 0.95

        def assualt_rifle():
            ar_damage_min = 20
            ar_damage_max = 45
            #armor_pen = 0.4

        def pickaxe():  
            pa_damage_min = 40
            pa_damage_max = 80
            #armor_pen = 0.6
            #max_range = 200 # ah yes, a close range weapon at 100 meters (due to RNG having a large range)

        def rpg():
            rpg_damage_min = 55
            rpg_damage_max = 100
            #armor_pen = 0.85
            #max_range = 1000

        def pistol():
            p_damage_min = 20
            p_damage_max = 35
            #armor_pen = 0.1


    if chosen_action == "find_weapon":
        guns = ["Super Succ", ]


    if chosen_action == "find_build_mat":
        pass


    if chosen_action == "find_sheilds":
        pass


    if chosen_action == "find_potion":
        pass

























    #if players_left <= 1:
       #game_end("win")
    if hp <=0:
        game_end("lose")


    def game_end(condition):
        if condition == "win":
            print("Poggers you got the dub")
        else:
            print("lmao loser you ded")

        print()
        print("Total kill count: " + str(kills))
        print("Damage inflicted: " + str(total_damage_delt))
        print("Damage received: " + str(total_damage_received))
      
game_end("win")
