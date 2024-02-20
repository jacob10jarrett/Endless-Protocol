// Reduce enemy's health
with(other) {
    health -= 35;
    hit = true; // Set the hit flag to true
    alarm[0] = 5; // Start an alarm to end the flash effect
}

// Destroy the bullet
instance_destroy();