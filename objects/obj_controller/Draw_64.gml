// Render all currently existing menu instances here; looping through them in the order that they were created
// and added into said instance list. This means that the earliest created menu will be rendered below the next
// menu, and so on until the list has all been rendered.
var _length = ds_list_size(global.menuInstances);
for (var i = 0; i < _length; i++){
	with(global.menuInstances[| i]) {draw_gui();}
}

// Display all singleton struct that contain a Draw GUI event; rendering them to the screen when and how they
// would if they were standard GML objects. The order here is important and determines what will be drawn on
// top of what, and vice versa.
with(TEXTBOX_HANDLER)	{draw_gui();}
with(CONTROL_INFO)		{draw_gui();}

// FOR DEBUGGING
with(DEBUGGER) {draw_gui();}
