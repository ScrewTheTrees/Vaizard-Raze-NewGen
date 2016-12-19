///GetTeamHostility(Team1, Team2)
//0 = Ignore
//1 = hostile
//2 = Friendly


var team1 = argument0;
var team2 = argument1;

var retvar = 0;

switch (team1)
{
    case TEAM.PLAYER:
        if (team2 == TEAM.ENEMY) retvar = 1;
        if (team2 == TEAM.PLAYER) retvar = 2;
        if (team2 == TEAM.NPC) retvar = 2;
    break;
    case TEAM.ENEMY:
        if (team2 == TEAM.ENEMY) retvar = 2;
        if (team2 == TEAM.PLAYER) retvar = 1;
    break;
    case TEAM.RED:
        if (team2 == TEAM.RED) retvar = 2;
        if (team2 == TEAM.GREEN) retvar = 1;
        if (team2 == TEAM.BLUE) retvar = 1;
    break;
    case TEAM.GREEN:
        if (team2 == TEAM.RED) retvar = 1;
        if (team2 == TEAM.GREEN) retvar = 2;
        if (team2 == TEAM.BLUE) retvar = 1;
    break;
    case TEAM.BLUE:
        if (team2 == TEAM.RED) retvar = 1;
        if (team2 == TEAM.GREEN) retvar = 1;
        if (team2 == TEAM.BLUE) retvar = 2;
    break;
    case TEAM.PVP:
        if (team2 == TEAM.PVP) retvar = 1;
    break;

}
