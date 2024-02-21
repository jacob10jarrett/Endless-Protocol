health -= 50;

// Set hit flag
hit = true;

alarm[0] = 5; 
with(other) {
    health -= 50;
    hit = true; // Set the hit flag to true
    alarm[0] = 5; // Start an alarm to end the flash effect
	
		
}
if (health <= 0) {
    instance_destroy();
}




