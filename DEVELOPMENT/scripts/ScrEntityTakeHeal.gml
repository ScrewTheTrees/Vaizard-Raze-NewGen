///ScrEntityTakeHeal(health);

//Entity step takes care of overhealing by rapidly reducing health until at max again.

if (ownerID=global.playerID)
{
    var dmg = argument0;
        
    healthCurrent +=dmg;
}
