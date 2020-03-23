
var path, list;

// file load and decryption

path = working_directory + "savegame"; // file path, please don't change, may not work 

if (file_exists(path)) { // check file in directory
	str = string_load_encrypted(path);
	list = ds_list_create(); // create list for vars
	ds_list_read(list, str); // add vars from string
  
	var iterator = 0;
	
	var dataVersion = list[| iterator];
	iterator++;
	
	if(dataVersion == "1.0") {
		// v1.0 Data format
		// 51 = 50 states + DC in v1.0
		var stateCount = 51;
		for (var i = 0; i < stateCount; i++) {
			objStateData.status[i] = list[| iterator];
			iterator++;
		}
	}
}