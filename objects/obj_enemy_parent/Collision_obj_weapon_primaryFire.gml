health -= 50;

// Set hit flag
hit = true;

with(other) {
    health -= 50;
    hit = true; // Set the hit flag to true
	
		
}
if (health <= 0) {
    instance_destroy();
}




