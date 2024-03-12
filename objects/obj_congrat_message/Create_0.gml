message = ""; 
charIndex = 0;
typeSpeed = room_speed * 0.05; 
timer = 0; 

congratMessages[0] = "Outstanding  Performance,  Agent!";
congratMessages[1] = "Mission  Accomplished  with  Excellence!";
congratMessages[2] = "Your  Skills  Are  Unmatched!";
congratMessages[3] = "A  job  well  done!";

selectedCongratMessage = congratMessages[irandom(array_length_1d(congratMessages) - 1)];