if (playerExp >= expMax) //Level up
{
	playerExp = 0
	expMax = (30 + (playerLevel * 100) - 20) //Reset max exp
	playerLevel++
}

