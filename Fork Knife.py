"""
Metal, wood, brocks, some more rare and weaker/stronger than others

"""


import random
import os


# options
debug = 1


# storage
turn = 1
players_left = 99
hp = 100
sheilds = 0
kills = 0
slot1 = "pick"
slot2 = ""
slot3 = ""
slot4 = ""
slot5 = ""
build_mat = 0   # building materials. more features will be added in the future
#wood = 0
#metal = 0
#brick = 0

drop_locations = ["Loot Pond", "Your Mom's House", "Tilted Bridges",
"Pleasant Place", "Retail Road"]

def cc():   # shortened this long command to cc()
    os.system("cls" if os.name == "nt" else "clear")
    # the long version is required in some places
cc()



def main_menu():
    print("Welcome to fork knife (scuffed fortnite)")
    print("Press enter when you are ready to play")
    input()
    cc()
main_menu()


while True:
    def display_turn(): # displays stuff that updates each turn
        global turn
        global players_left

        player_kill_count = random.randint(0,4) # decides how many players to off each turn
        players_left = players_left - player_kill_count

        if turn <= 1:   # BUG doesnt disable floowing command after first turn
            print("We droppin' " + random.choice(drop_locations))

        print("Players left: " + str(players_left))
        print("Health: " + str(hp))
        print("Sheilds: " + str(sheilds))
        print("Kills: " + str(kills))

        turn =+ 1
    display_turn()
    input()
    cc()

    if players_left <= 0:
       pass # end game
    elif hp <=0:
        pass 


