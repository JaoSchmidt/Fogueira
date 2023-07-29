extends ColorRect

#@export_file var dialogPath = ""
#@export var textSpeed: float = 0.05 
 
#var dialog

#var phraseNum = 0
#var finished = false

#func _ready():
	$Timer.wait_time=textSpeed
	dialog = getDialog()
	nextPhrase()

#func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		if finished:
			nextPhrase()
		else:
			$Text.visible_characters = len($Text.text)

#func getDialog() -> Array:
	var file = FileAccess.open(dialogPath, FileAccess.READ)
	assert(FileAccess.file_exists(dialogPath), "File path does not exist")
	var json = file.get_as_text()
	var output = JSON.parse_string(json)
	
	if typeof(output) == TYPE_ARRAY:
		return output
	else:
		return []
 
#func nextPhrase() -> void:
	if phraseNum >= len(dialog):
		queue_free()
		return
	
	finished = false
	
	$Name.bbcode_text = dialog[phraseNum]["Name"]
	$Text.bbcode_text = dialog[phraseNum]["Text"]
	
	$Text.visible_characters = 0
	

	var img = dialog[phraseNum]["Name"] + dialog[phraseNum]["Emotion"] + ".png"
	$Portrait.texture = load(img)
	
	while $Text.visible_characters < len($Text.text):
		$Text.visible_characters += 1
		
		$Timer.start()
		await $Timer.timeout
	
	finished = true
	phraseNum += 1
	return
	
