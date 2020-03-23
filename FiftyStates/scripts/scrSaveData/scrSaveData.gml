

var dataVersion = "1.0"


var list, path;
list = ds_list_create();
var iterator = 0;


list[| iterator] = dataVersion;
iterator++;

var stateCount = array_length_1d(objStateData.status);
for (var i = 0; i < stateCount; i++) {
	list[| iterator] = objStateData.status[i];
	iterator++;
}


// file save and encryption
str = ds_list_write(list); // write your variables in string

path = working_directory + "savegame"; // file path
if (file_exists(path)) { // check file in directory
	file_delete(path); // delete old file
}

string_save_encrypted(str, path); // encrypt string and save to file