extends Control

#var driver = OS.get_video_adapter_driver_info();

# Called when the node enters the scene tree for the first time.
func _ready():
	$Label2.text = "Driver: " + str(OS.get_video_adapter_driver_info()) + "\nCPU: " + str(OS.get_processor_name());
	$Label3.text = "OS: " + str(OS.get_name());
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Label.text = "DrawCalls: " + str(Performance.get_monitor(Performance.RENDER_TOTAL_DRAW_CALLS_IN_FRAME)) + "\nFPS: " + str(Performance.get_monitor(Performance.TIME_FPS));
	pass
