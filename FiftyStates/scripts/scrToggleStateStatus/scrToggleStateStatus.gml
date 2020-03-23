/// scrToggleStateStatus(stateIndex)

var stateIndex = argument0;

var count = array_length_1d(objStateData.status);

if(stateIndex < 0 || stateIndex >= count) {
	show_debug_message("Invalid state index in scrToggleStateStatus!");
	return;
}


if(objStateData.status[stateIndex] == 0)
	objStateData.status[stateIndex] = 1;
else
	objStateData.status[stateIndex] = 0;
	
	

scrSetNeedsRefreshDisplay();
scrSaveData();