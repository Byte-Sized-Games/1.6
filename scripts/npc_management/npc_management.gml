//CREATION CODE
mode= 0
//mode is what form of npc is in effect - cutcene, scripted, etc


//CREATE
if (!global.events=0) mode=global.events
//this code determines how far the story is and will do different functions accordingly
//0 = wandering, 1+ = scripted events
if (mode=0) mode+=1