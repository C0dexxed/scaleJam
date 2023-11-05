extends Area2D
#Sprite (Face)
#Name
#N#:"Npc's dialogue" P#:"Player's dialogue"
#N#:["Dialogue1", "Dialogue2"] > For same person saying multiple things in a row
#PC#:{"Response1":"ResultingDialogue","Response2":"ResultingDialogue"}
@export var faceImage : Texture2D
@export var npcName : String
var spokenTo = false

#Initial dialogue
@export var dialogueInit = ["N:*NPC words","P:*Player words","C:*Player choice 1:*Player choice 2","P:*Player words",
"N:*NPC words"]

#Dialogue after spoken to
@export var dialogueScnd = ["N:*NPC words","P:*Player words","C:*Player choice 1:*Player choice 2","P:*Player words",
"N:*NPC words"]
	
func interact(dialogue):
	var place = 0
	

func _on_area_entered(area):
	if spokenTo:
		interact(dialogueInit)
	else:
		interact(dialogueScnd)
