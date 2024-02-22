//Prevent memory leaks
if (ds_exists(global.playlist, ds_type_list)) {
    ds_list_destroy(global.playlist);
}




