//Prevent memory leaks
if (ds_exists(playlist, ds_type_list)) {
    ds_list_destroy(playlist);
}




