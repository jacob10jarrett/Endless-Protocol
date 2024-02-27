if (selectedCard != noone && selectedCard.sprite_index = spr_selectedcard)
{
	selectedCard.hspeed = -18
	array_push(global.selectedCardValues, selectedCard)
	selectedCard = noone
	
}