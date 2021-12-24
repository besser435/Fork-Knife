@echo off
title Fortnite
:menu
cls
echo.
echo.
echo                                                                     By: Miles
echo.
echo                      --------------------------
echo                                Fortnite
echo                      --------------------------
echo.
echo                               1. Start
echo                               2. Exit
set /p menu=
if %menu% == 1 goto start
if %menu% == 2 goto exit
goto menu

:start
cls
echo.
echo.
echo.
echo                         Game Mode:
echo.
echo                            1. Solo
echo                            2. (coming Soon)
echo                            3. back
set /p gamemode=
if %gamemode% == 1 goto solostart
if %gamemode% == 2 goto start
if %gamemode% == 3 goto menu
goto start

:solostart
cls
echo.
echo.
echo.
echo.
echo                     Ready?
echo.
echo                     1. Yes
echo                     2. Back
set /p readysolo=
if %readysolo% == 1 goto readysolo
if %readysolo% == 2 goto start
:readysolo
cls
echo.
echo.
echo.
echo.
echo                  Where would you like to drop?
echo.
echo                   1. Retail Row
echo                   2. Tomato Town
echo                   3. Loot Lake
echo                   4. Pleasant Park
echo                   5. Salty Springs
echo                   6. Tilted Towers
echo                   7. (Random location)
set /p locationsolo=
if %locationsolo% == miles goto exit
set /a hp=100
set /a shield=0
set slot1=pickaxe
set slot2=none
set slot3=none
set slot4=none
set slot5=none
set slot6=none
set kills=0
set lp=0
set winloss=0
set players=100
set wood=0
set metal=0
set brick=0
goto eventsolo
:eventsolo
:1v1
if %players% GTR 2 goto next2
if %winloss% == 1 goto victorysolo
:next2
if %players% == 1 goto victorysolo
if %players% == 2 goto solotense
if %players% LEQ 5 set /a players=%players%-1
if %players% LEQ 5 goto solotense
set /a players=%players%-3
:solotense
cls
if %winloss% == 1 set /a kills=%kills%+1
set winloss=0
if %players% LSS 10 goto eventsoloalt
set /a eventsolo=%RANDOM% %% 10+1
if %eventsolo% == 1 goto eventsolo1
if %eventsolo% == 2 goto eventsolo1
if %eventsolo% == 3 goto eventsolo2
if %eventsolo% == 4 goto eventsolo2
if %eventsolo% == 5 goto eventsolo4
if %eventsolo% == 6 goto eventsolo4
if %eventsolo% == 7 goto eventsolo2
if %eventsolo% == 8 goto eventsolo5
if %eventsolo% == 9 goto eventsolo5
if %eventsolo% == 10 goto eventsolo3
:eventsoloalt
set /a eventsolo=%RANDOM% %% 4+1
if %eventsolo% == 1 goto eventsolo1
if %eventsolo% == 2 goto eventsolo4
if %eventsolo% == 3 goto eventsolo2
if %eventsolo% == 4 goto eventsolo3
goto eventsolo1

:eventsolo1
set /a loote1=%RANDOM% %% 5+1
if %loote1% == 1 set loote1=PumpShotgun
if %loote1% == 2 set loote1=Pistol
if %loote1% == 3 set loote1=30wood
if %loote1% == 4 set loote1=30metal
if %loote1% == 5 set loote1=SMG
set evente=1
cls
echo.
echo             HP: %hp%            1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        You come across a %loote1%
echo.
echo        1. Take it
echo.
echo        2. Leave it
set /p se1=
if %se1% == 1 goto se11
if %se1% == 2 goto 1v1
goto eventsolo1
:materiale1
if %loote1% == 30metal set /a metal=%metal%+30
if %loote1% == 30wood set /a wood=%wood%+30
goto 1v1
:se11
if %loote1% == 30metal goto materiale1
if %loote1% == 30wood goto materiale1
if %slot2% == none goto equipse12
if %slot3% == none goto equipse13
if %slot4% == none goto equipse14
if %slot5% == none goto equipse15
if %slot6% == none goto equipse16
goto weaponerror
:equipse12
cls
set slot2=%loote1%
goto 1v1
:equipse13
cls
set slot3=%loote1%
goto 1v1
:equipse14
cls
set slot4=%loote1%
goto 1v1
:equipse15
cls
set slot5=%loote1%
goto 1v1
:equipse16
cls
set slot6=%loote1%
goto 1v1
:weaponerror
cls
echo.
echo.
echo.
echo.
echo                           Switch for?
echo.
echo                        1. %slot1%
echo                        2. %slot2%
echo                        3. %slot3%
echo                        4. %slot4%
echo                        5. %slot5%
echo                        6. %slot6%
set /p switch=

if %switch% == 1 goto see1
if %switch% == 2 goto see2
if %switch% == 3 goto see3
if %switch% == 4 goto see4
if %switch% == 5 goto see5
if %switch% == 6 goto see6
:see1
cls
set slot1=%loote1%
goto 1v1

:see2
cls
set slot2=%loote1%
goto 1v1

:see3
cls
set slot3=%loote1%
goto 1v1

:see4
cls
set slot4=%loote1%
goto 1v1

:see5
cls
set slot5=%loote1%
goto 1v1

:see6
cls
set slot6=%loote1%
goto 1v1

goto eventsolo

:eventsolo2
set /a loote1=%RANDOM% %% 5+1
if %loote1% == 1 set loote1=Bandages
if %loote1% == 2 set loote1=ShieldPotion
if %loote1% == 3 set loote1=30wood
if %loote1% == 4 set loote1=30brick
if %loote1% == 5 set loote1=M16
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        You come across a %loote1% in a cabin
echo.
echo        1. Take it
echo.
echo        2. Leave it
set /p se1=
if %se1% == 1 goto se21
if %se1% == 2 goto 1v1
goto eventsolo1
:materiale2
if %loote1% == 30brick set /a brick=%brick%+30
if %loote1% == 30wood set /a wood=%wood%+30
goto 1v1
:se21
if %loote1% == 30brick goto materiale2
if %loote1% == 30wood goto materiale2
if %slot2% == none goto equipse22
if %slot3% == none goto equipse23
if %slot4% == none goto equipse24
if %slot5% == none goto equipse25
if %slot6% == none goto equipse26
goto weaponerror
:equipse22
cls
set slot2=%loote1%
goto 1v1
:equipse23
cls
set slot3=%loote1%
goto 1v1
:equipse24
cls
set slot4=%loote1%
goto 1v1
:equipse25
cls
set slot5=%loote1%
goto 1v1
:equipse26
cls
set slot6=%loote1%
goto 1v1

:eventsolo3
cls
if %players% GTR 50 set /a ohp=%RANDOM% %% 150+50
if %players% LSS 50 set /a ohp=%RANDOM% %% 200+50
if %players% LSS 25 set /a ohp=%RANDOM% %% 200+75
if %players% LSS 10 set /a ohp=%RANDOM% %% 200+100
if %players% LSS 5 set /a ohp=%RANDOM% %% 200+150
if %players% LSS 3 set /a ohp=%RANDOM% %% 300+200
if %ohp% GTR 300 set /a ohp=300
set /a weapone1=%RANDOM% %% 11+1
if %weapone1% == 1 set weapone1=PumpShotgun
if %weapone1% == 2 set weapone1=PumpShotgun
if %weapone1% == 3 set weapone1=PumpShotgun
if %weapone1% == 4 set weapone1=Sniper
if %weapone1% == 5 set weapone1=SMG
if %weapone1% == 6 set weapone1=SMG
if %weapone1% == 7 set weapone1=M16
if %weapone1% == 8 set weapone1=M16
if %weapone1% == 9 set weapone1=M16
if %weapone1% == 10 set weapone1=SCAR
if %weapone1% == 11 set weapone1=RocketLauncher
set damag=0
:se3t
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        You come across a player with a %weapone1%
echo.
echo        1. Attack
echo        2. Build
echo        3. Run away
set /p se1=
if %se1% == 1 goto se31
if %se1% == 2 goto se32
if %se1% == 3 set /a run=%RANDOM% %% 2+1
if %run% == 2 goto 1v1
if %run% == 1 goto se3f
goto eventsolo3
:se3f
if %players% GTR 50 set /a takend=%RANDOM% %% 75+0
if %players% LSS 50 set /a takend=%RANDOM% %% 125+25
if %players% LSS 25 set /a takend=%RANDOM% %% 125+50
if %players% LSS 10 set /a takend=%RANDOM% %% 125+50
if %players% LSS 5 set /a takend=%RANDOM% %% 125+75
if %takend% GTR 125 set /a takend=125
set /a shield=%shield%-%takend%
if %shield% GTR 0 goto se3fs
set /a hp=%hp%+%shield%
if %shield% LSS 0 set /a shield=0
:se3fs
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        You were shot for %takend%
echo.
echo.
pause
if %hp% LSS 0 goto menu
goto se3t
:se31
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        Which Weapon/Item
echo.
echo        1. %slot1%
echo        2. %slot2%
echo        3. %slot3%
echo        4. %slot4%
echo        5. %slot5%
echo        6. %slot6%
set /p weaponc=
if %weaponc% == 1 goto slot1u
if %weaponc% == 2 goto slot2u
if %weaponc% == 3 goto slot3u
if %weaponc% == 4 goto slot4u
if %weaponc% == 5 goto slot5u
if %weaponc% == 6 goto slot6u
goto se31
:slot1u
if %slot1% == PickAxe set /a damag=%RANDOM% %% 60+0
goto se3suc
:slot2u
if %slot2% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot2% == Sniper set /a damag=%RANDOM% %% 250+1
if %slot2% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot2% == SMG set /a damag=%RANDOM% %% 90+20
if %slot2% == M16 set /a damag=%RANDOM% %% 120+40
if %slot2% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot2% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot2% == Bandages set slot2=none
if %slot2% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot2% == ShieldPotion set slot2=none
if %slot2% == LaunchPad set lp=1
if %lp% == 1 set slot2=none
if %lp% == 1 goto lpescape
if %slot2% == RocketLauncher set /a damag=200
if %slot2% == RocketLauncher set slot2=none
goto se3suc
:slot3u
if %slot3% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot3% == Sniper set /a damag=%RANDOM% %% 250+1
if %slot3% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot3% == SMG set /a damag=%RANDOM% %% 90+20
if %slot3% == M16 set /a damag=%RANDOM% %% 120+40
if %slot3% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot3% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot3% == Bandages set slot3=none
if %slot3% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot3% == ShieldPotion set slot3=none
if %slot3% == LaunchPad set lp=1
if %lp% == 1 set slot3=none
if %lp% == 1 goto lpescape
if %slot3% == RocketLauncher set /a damag=200
if %slot3% == RocketLauncher set slot3=none
goto se3suc
:slot4u
if %slot4% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot4% == Sniper set /a damag=%RANDOM% %% 250+1
if %slot4% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot4% == SMG set /a damag=%RANDOM% %% 90+20
if %slot4% == M16 set /a damag=%RANDOM% %% 120+40
if %slot4% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot4% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot4% == Bandages set slot4=none
if %slot4% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot4% == ShieldPotion set slot4=none
if %slot4% == LaunchPad set lp=1
if %lp% == 1 set slot4=none
if %lp% == 1 goto lpescape
if %slot4% == RocketLauncher set /a damag=200
if %slot4% == RocketLauncher set slot4=none
goto se3suc
:slot5u
if %slot5% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot5% == Sniper set /a damag=%RANDOM% %% 250+1
if %slot5% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot5% == SMG set /a damag=%RANDOM% %% 90+20
if %slot5% == M16 set /a damag=%RANDOM% %% 120+40
if %slot5% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot5% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot5% == Bandages set slot5=none
if %slot5% == ShieldPotion set /a Shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot5% == ShieldPotion set slot5=none
if %slot5% == LaunchPad set lp=1
if %lp% == 1 set slot5=none
if %lp% == 1 goto lpescape
if %slot5% == RocketLauncher set /a damag=200
if %slot5% == RocketLauncher set slot5=none
goto se3suc
:slot6u
if %slot6% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot6% == Sniper set /a damag=%RANDOM% %% 250+1
if %slot6% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot6% == SMG set /a damag=%RANDOM% %% 90+20
if %slot6% == M16 set /a damag=%RANDOM% %% 120+40
if %slot6% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot6% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot6% == Bandages set slot6=none
if %slot6% == ShieldPotion set /a Shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot6% == ShieldPotion set slot6=none
if %slot6% == LaunchPad set lp=1
if %lp% == 1 set slot6=none
if %lp% == 1 goto lpescape
if %slot6% == RocketLauncher set /a damag=200
if %slot6% == RocketLauncher set slot6=none
goto se3suc
:se3suc
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        You dealt %damag% damage
echo.
echo.
pause
set /a ohp=%ohp%-%damag%
if %ohp% LSS 1 set winloss=1
if %winloss% == 1 goto pickupw
if %winloss% == 1 set /a kills=%kills%+1
goto se3f

:se32
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        Which Material
echo.
echo        1. Wood (Cost 60)
echo        2. Brick  (Cost 40)
echo        3. Metal (Cost 20)
echo        4. None
set /p build3=
if %build3% == 1 goto buildw
if %build3% == 2 goto buildb
if %build3% == 3 goto buildm
if %build3% == 4 goto se3f
goto se3f

:buildw
if %wood% LSS 60 goto se3f
set /a wood=%wood%-60
goto se3safe

:buildb
if %brick% LSS 40 goto se3f
set /a brick=%brick%-40
goto se3safe

:buildm
if %metal% LSS 20 goto se3f
set /a metal=%metal%-20
goto se3safe

:se3safe
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        You are safe behind your wall, which item do you  want to use?
echo.
echo        1. %slot1%
echo        2. %slot2%
echo        3. %slot3%
echo        4. %slot4%
echo        5. %slot5%
echo        6. %slot6%
set /p itemc=
if %itemc% == 1 goto slot1u
if %itemc% == 2 goto slot2u
if %itemc% == 3 goto slot3u
if %itemc% == 4 goto slot4u
if %itemc% == 5 goto slot5u
if %itemc% == 6 goto slot6u
goto se31
:slot1u
if %slot1% == PickAxe set /a damage=%RANDOM% %% 60+1
goto se3t
:slot2u
if %slot2% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot2% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot2% == SMG set /a damag=%RANDOM% %% 90+20
if %slot2% == M16 set /a damag=%RANDOM% %% 100+40
if %slot2% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot2% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot2% == Bandages set slot2=none
if %slot2% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot2% == ShieldPotion set slot2=none
if %slot2% == LaunchPad set lp=1
if %lp% == 1 set slot2=none
if %lp% == 1 goto lpescape
goto se3t
:slot3u
if %slot3% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot3% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot3% == SMG set /a damag=%RANDOM% %% 90+20
if %slot3% == M16 set /a damag=%RANDOM% %% 100+40
if %slot3% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot3% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot3% == Bandages set slot3=none
if %slot3% == ShieldPotion set /a shield=%sheild%+50
if %shield% GTR 100 set sheild=100
if %slot3% == ShieldPotion set slot3=none
if %slot3% == LaunchPad set lp=1
if %lp% == 1 set slot3=none
if %lp% == 1 goto lpescape
goto se3t
:slot4u
if %slot4% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot4% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot4% == SMG set /a damag=%RANDOM% %% 90+20
if %slot4% == M16 set /a damag=%RANDOM% %% 100+40
if %slot4% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot4% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot4% == Bandages set slot4=none
if %slot4% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot4% == ShieldPotion set slot4=none
if %slot4% == LaunchPad set lp=1
if %lp% == 1 set slot4=none
if %lp% == 1 goto lpescape
goto se3t
:slot5u
if %slot5% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot5% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot5% == SMG set /a damag=%RANDOM% %% 90+20
if %slot5% == M16 set /a damag=%RANDOM% %% 100+40
if %slot5% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot5% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot5% == Bandages set slot5=none
if %slot5% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot5% == ShieldPotion set slot5=none
if %slot5% == LaunchPad set lp=1
if %lp% == 1 set slot5=none
if %lp% == 1 goto lpescape
goto se3t
:slot6u
if %slot6% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot6% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot6% == SMG set /a damag=%RANDOM% %% 90+20
if %slot6% == M16 set /a damag=%RANDOM% %% 100+40
if %slot6% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot6% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot6% == Bandages set slot6=none
if %slot6% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot6% == ShieldPotion set slot6=none
if %slot6% == LaunchPad set lp=1
if %lp% == 1 set slot6=none
if %lp% == 1 goto lpescape
goto se3t







:eventsolo4
set /a loote1=%RANDOM% %% 10+1
if %loote1% == 1 set loote1=SCAR
if %loote1% == 2 set loote1=Sniper
if %loote1% == 3 set loote1=ShieldPotion
if %loote1% == 4 set loote1=ShieldPotion
if %loote1% == 5 set loote1=30wood
if %loote1% == 6 set loote1=30brick
if %loote1% == 7 set loote1=SMG
if %loote1% == 8 set loote1=SMG
if %loote1% == 9 set loote1=Bandages
if %loote1% == 10 set loote1=LaunchPad
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        You come across a %loote1% in a  chest
echo.
echo        1. Take it
echo.
echo        2. Leave it
set /p se1=
if %se1% == 1 goto se21
if %se1% == 2 goto 1v1
goto eventsolo4
:materiale2
if %loote1% == 30brick set /a brick=%brick%+30
if %loote1% == 30wood set /a wood=%wood%+30
if %loote1% == 30metal set /a metal=%metal%+30
goto 1v1
:se21
if %loote1% == 30brick goto materiale2
if %loote1% == 30wood goto materiale2
if %loote1% == 30metal goto materiale2
if %slot2% == none goto equipse22
if %slot3% == none goto equipse23
if %slot4% == none goto equipse24
if %slot5% == none goto equipse25
if %slot6% == none goto equipse26
goto weaponerror
:equipse22
cls
set slot2=%loote1%
goto 1v1
:equipse23
cls
set slot3=%loote1%
goto 1v1
:equipse24
cls
set slot4=%loote1%
goto 1v1
:equipse25
cls
set slot5=%loote1%
goto 1v1
:equipse26
cls
set slot6=%loote1%
goto 1v1

:victorysolo
cls
echo.
echo.
echo.
echo.
echo                             Victory Royal!
echo.
echo               Congratz my dude.
echo.
echo.
echo.
pause
goto menu












:eventsolo5
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        You are at a safe spot, which item do you  want to use?
echo.
echo        1. %slot1%
echo        2. %slot2%
echo        3. %slot3%
echo        4. %slot4%
echo        5. %slot5%
echo        6. %slot6%
echo        7. None
set /p itemc=
if %itemc% == 1 goto slot1u5
if %itemc% == 2 goto slot2u5
if %itemc% == 3 goto slot3u5
if %itemc% == 4 goto slot4u5
if %itemc% == 5 goto slot5u5
if %itemc% == 6 goto slot6u5
if %itemc% == 7 goto 1v1
goto eventsolo5
:slot1u5
if %slot1% == PickAxe set /a damage=%RANDOM% %% 60+1
goto 1v1
:slot2u5
if %slot2% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot2% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot2% == SMG set /a damag=%RANDOM% %% 90+20
if %slot2% == M16 set /a damag=%RANDOM% %% 120+40
if %slot2% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot2% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot2% == Bandages set slot2=none
if %slot2% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot2% == ShieldPotion set slot2=none
goto 1v1
:slot3u5
if %slot3% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot3% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot3% == SMG set /a damag=%RANDOM% %% 90+20
if %slot3% == M16 set /a damag=%RANDOM% %% 120+40
if %slot3% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot3% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot3% == Bandages set slot3=none
if %slot3% == ShieldPotion set /a shield=%sheild%+50
if %shield% GTR 100 set shield=100
if %slot3% == ShieldPotion set slot3=none
goto 1v1
:slot3u5
if %slot3% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot3% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot3% == SMG set /a damag=%RANDOM% %% 90+20
if %slot3% == M16 set /a damag=%RANDOM% %% 120+40
if %slot3% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot3% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot3% == Bandages set slot3=none
if %slot3% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot3% == ShieldPotion set slot3=none
goto 1v1
:slot4u5
if %slot4% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot4% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot4% == SMG set /a damag=%RANDOM% %% 90+20
if %slot4% == M16 set /a damag=%RANDOM% %% 120+40
if %slot4% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot4% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot4% == Bandages set slot4=none
if %slot4% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot4% == ShieldPotion set slot4=none
goto 1v1
:slot5u5
if %slot5% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot5% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot5% == SMG set /a damag=%RANDOM% %% 90+20
if %slot5% == M16 set /a damag=%RANDOM% %% 120+40
if %slot5% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot5% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot5% == Bandages set slot5=none
if %slot5% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot5% == ShieldPotion set slot5=none
goto 1v1
:slot6u5
if %slot6% == Pistol set /a damag=%RANDOM% %% 60+20
if %slot6% == PumpShotgun set /a damag=%RANDOM% %% 120+30
if %slot6% == SMG set /a damag=%RANDOM% %% 90+20
if %slot6% == M16 set /a damag=%RANDOM% %% 120+40
if %slot6% == SCAR set /a damag=%RANDOM% %% 125+50
if %slot6% == Bandages set /a hp=%hp%+60
if %hp% GTR 100 set hp=100
if %slot6% == Bandages set slot6=none
if %slot6% == ShieldPotion set /a shield=%shield%+50
if %shield% GTR 100 set shield=100
if %slot6% == ShieldPotion set slot6=none
goto eventsolo


weapone1

:pickupw
set loote1=%weapone1%
cls
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        You killed the Player and they dropped a %loote1%
echo.
echo        1. Take it
echo.
echo        2. Leave it
set /p se1=
if %se1% == 1 goto se3alt
if %se1% == 2 goto 1v1
goto eventsolo4
:materiale3
if %loote2% == 30brick set /a brick=%brick%+30
if %loote2% == 30wood set /a wood=%wood%+30
if %loote2% == 30metal set /a metal=%metal%+30
goto 1v1
:se3alt
if %loote1% == 30brick goto materiale3
if %loote1% == 30wood goto materiale3
if %loote1% == 30metal goto materiale3
if %slot2% == none goto equipse52
if %slot3% == none goto equipse53
if %slot4% == none goto equipse54
if %slot5% == none goto equipse55
if %slot6% == none goto equipse56
goto weaponerror
:equipse52
cls
set slot2=%weapone1%
goto 1v1
:equipse53
cls
set slot3=%weapone1%
goto 1v1
:equipse54
cls
set slot4=%weapone1%
goto 1v1
:equipse55
cls
set slot5=%weapone1%
goto 1v1
:equipse56
cls
set slot6=%weapone1%
goto 1v1


:lpescape
set lp=0
cls
echo.
echo             HP: %hp%    1. %slot1%     3. %slot3%     5. %slot5%   
echo             Shield: %shield%  2. %slot2%     4. %slot4%     6. %slot6%
echo             Wood: %wood%        Brick: %brick%        Metal: %metal%
echo             Kills: %kills%      Players: %players%
echo.
echo        You used the lauchpad to escape from the area
echo.
echo.
pause
goto eventsolo