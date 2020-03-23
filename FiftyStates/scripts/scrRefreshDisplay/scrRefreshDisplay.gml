/// Destroys existing state objects and recreates them according to the data



// Destroy existing instances
with(objStateButton) {
	instance_destroy()
}

var count = array_length_1d(objStateData.status)

var verticalSpacing = objStateDisplayManager.stateButtonHeight + objStateDisplayManager.stateButtonSpacing;
var horizontalEdgeMargin = 20;
var verticalStart = 100;
var columnSize = 17;

var availableWidth = room_width - 2*horizontalEdgeMargin;
var numColumns = ceil(count/columnSize);
var stateInstance;

for(var i = 0; i < count; i++) {
	var xx = horizontalEdgeMargin + floor(i/columnSize)*floor(availableWidth/numColumns)
	var yy = verticalStart + (i%columnSize)*verticalSpacing
	stateInstance = instance_create_layer(xx, yy, "Instances", objStateButton);	
	stateInstance.index = i;
	stateInstance.name = objStateData.names[i];
	stateInstance.status = objStateData.status[i];
}


// Inform the system we're all done!
objStateDisplayManager.needsRefresh = false;