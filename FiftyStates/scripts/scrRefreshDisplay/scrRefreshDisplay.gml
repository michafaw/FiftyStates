/// Destroys existing state objects and recreates them according to the data



// Destroy existing instances
with(objStateButton) {
	instance_destroy()
}

var count = array_length_1d(objStateData.status)

var verticalSpacing = objStateDisplayManager.stateButtonHeight + objStateDisplayManager.stateButtonSpacing;
var leftEdgeMargin = 30;
var rightEdgeMargin = 0;
var verticalStart = 275;
var columnSize = 17;

var availableWidth = room_width - (leftEdgeMargin + rightEdgeMargin)
var numColumns = ceil(count/columnSize);
var stateInstance;

for(var i = 0; i < count; i++) {
	var xx = leftEdgeMargin + floor(i/columnSize)*floor(availableWidth/numColumns)
	var yy = verticalStart + (i%columnSize)*verticalSpacing
	stateInstance = instance_create_layer(xx, yy, "Instances", objStateButton);	
	stateInstance.index = i;
	stateInstance.name = objStateData.names[i];
	stateInstance.status = objStateData.status[i];
}


// Inform the system we're all done!
objStateDisplayManager.needsRefresh = false;