///GetTeamColor(Team)
//Returns color of the team



var team1 = argument0;

var retvar = 0;

switch (team1)
{
    case TEAM.PLAYER:
        retvar = c_blue;
        break;
    case TEAM.ENEMY:
    case TEAM.RED:
        retvar = c_red;
        break;
    case TEAM.GREEN:
        retvar = c_green;
        break;
    case TEAM.BLUE:
        retvar = c_blue;
        break;
    case TEAM.PVP:
        retvar = c_yellow;
    break;

}


return retvar;
