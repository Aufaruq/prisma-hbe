#include <YSI_Coding\y_hooks>
//body
new PlayerText: HbePrismaAufa[MAX_PLAYERS][56];
stock ShowHbeaufa(playerid) {
    for(new i = 0; i < 56; i++)
    {
        PlayerTextDrawShow(playerid, HbePrismaAufa[playerid][i]);
    }
}
stock UpdateHBE(playerid) {
    if (PlayerData[playerid][pSpawned] && !PlayerData[playerid][pTogHud]) {

        new Float:health, Float:armour, Float:aufalapar, Float:aufahaus, Float:stress;

        GetPlayerHealth(playerid, PlayerData[playerid][pHealth]);
        GetPlayerArmour(playerid, PlayerData[playerid][pArmor]);

        health = PlayerData[playerid][pHealth] * -28.0/100;
        PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][1], 12.0, health);
        PlayerTextDrawShow(playerid, HbePrismaAufa[playerid][1]);

        armour = PlayerData[playerid][pArmor] * -28.0/100;
        PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][16], 12.0, armour);
        PlayerTextDrawShow(playerid, HbePrismaAufa[playerid][16]);

        aufalapar = PlayerData[playerid][pHunger] * -28.0/100;
        PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][25], 12.0, aufalapar);
        PlayerTextDrawShow(playerid, HbePrismaAufa[playerid][25]);

        aufahaus = PlayerData[playerid][pThirst] * -28.0/100;
        PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][43], 12.0, aufahaus);
        PlayerTextDrawShow(playerid, HbePrismaAufa[playerid][43]);

        stress = PlayerData[playerid][pStress] * -28.0/100;
        PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][5], 12.0, stress);
        PlayerTextDrawShow(playerid, HbePrismaAufa[playerid][5]);
        GetPlayerHealth(playerid, PlayerData[playerid][pHealth]);
        GetPlayerArmour(playerid, PlayerData[playerid][pArmor]);
    }
    return 1;
}
 
hook OnPlayerConnect(playerid){
	ShowHbeaufa(playerid);
}

 hook OnGameModeInit() {
    
    HbePrismaAufa[playerid][0] = CreatePlayerTextDraw(playerid, 220.000, 397.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][0], 31.000, 43.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][0], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][0], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][0], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][0], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][0], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][0], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][0], 1);

    HbePrismaAufa[playerid][1] = CreatePlayerTextDraw(playerid, 231.000, 432.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][1], 12.000, -28.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][1], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][1], 1167746047);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][1], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][1], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][1], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][1], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][1], 1);

    HbePrismaAufa[playerid][2] = CreatePlayerTextDraw(playerid, 395.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][2], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][2], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][2], 1545149183);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][2], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][2], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][2], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][2], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][2], 1);

    HbePrismaAufa[playerid][3] = CreatePlayerTextDraw(playerid, 397.000, 397.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][3], 31.000, 43.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][3], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][3], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][3], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][3], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][3], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][3], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][3], 1);

    HbePrismaAufa[playerid][4] = CreatePlayerTextDraw(playerid, 402.000, 394.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][4], 0.828, 2.499);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][4], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][4], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][4], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][4], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][4], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][4], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][4], 1);

    HbePrismaAufa[playerid][5] = CreatePlayerTextDraw(playerid, 408.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][5], 12.000, -28.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][5], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][5], 1662260735);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][5], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][5], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][5], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][5], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][5], 1);

    HbePrismaAufa[playerid][6] = CreatePlayerTextDraw(playerid, 425.000, 394.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][6], -0.888, 2.499);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][6], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][6], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][6], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][6], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][6], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][6], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][6], 1);

    HbePrismaAufa[playerid][7] = CreatePlayerTextDraw(playerid, 415.000, 413.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][7], -0.919, 2.697);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][7], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][7], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][7], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][7], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][7], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][7], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][7], 1);

    HbePrismaAufa[playerid][8] = CreatePlayerTextDraw(playerid, 411.000, 413.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][8], 0.958, 2.598);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][8], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][8], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][8], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][8], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][8], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][8], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][8], 1);

    HbePrismaAufa[playerid][9] = CreatePlayerTextDraw(playerid, 397.000, 395.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][9], 32.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][9], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][9], 1545149183);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][9], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][9], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][9], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][9], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][9], 1);

    HbePrismaAufa[playerid][10] = CreatePlayerTextDraw(playerid, 397.000, 439.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][10], 32.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][10], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][10], 1545149183);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][10], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][10], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][10], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][10], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][10], 1);

    HbePrismaAufa[playerid][11] = CreatePlayerTextDraw(playerid, 428.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][11], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][11], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][11], 1545149183);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][11], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][11], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][11], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][11], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][11], 1);

    HbePrismaAufa[playerid][12] = CreatePlayerTextDraw(playerid, 261.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][12], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][12], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][12], -1);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][12], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][12], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][12], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][12], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][12], 1);

    HbePrismaAufa[playerid][13] = CreatePlayerTextDraw(playerid, 218.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][13], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][13], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][13], 1102475263);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][13], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][13], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][13], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][13], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][13], 1);

    HbePrismaAufa[playerid][14] = CreatePlayerTextDraw(playerid, 263.000, 397.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][14], 31.000, 43.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][14], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][14], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][14], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][14], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][14], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][14], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][14], 1);

    HbePrismaAufa[playerid][15] = CreatePlayerTextDraw(playerid, 268.000, 394.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][15], 0.828, 2.499);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][15], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][15], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][15], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][15], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][15], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][15], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][15], 1);

    HbePrismaAufa[playerid][16] = CreatePlayerTextDraw(playerid, 273.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][16], 12.000, -28.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][16], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][16], -1);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][16], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][16], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][16], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][16], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][16], 1);

    HbePrismaAufa[playerid][17] = CreatePlayerTextDraw(playerid, 291.000, 394.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][17], -0.888, 2.499);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][17], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][17], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][17], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][17], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][17], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][17], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][17], 1);

    HbePrismaAufa[playerid][18] = CreatePlayerTextDraw(playerid, 281.000, 413.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][18], -0.919, 2.697);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][18], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][18], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][18], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][18], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][18], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][18], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][18], 1);

    HbePrismaAufa[playerid][19] = CreatePlayerTextDraw(playerid, 277.000, 413.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][19], 0.958, 2.598);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][19], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][19], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][19], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][19], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][19], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][19], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][19], 1);

    HbePrismaAufa[playerid][20] = CreatePlayerTextDraw(playerid, 263.000, 395.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][20], 32.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][20], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][20], -1);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][20], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][20], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][20], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][20], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][20], 1);

    HbePrismaAufa[playerid][21] = CreatePlayerTextDraw(playerid, 263.000, 440.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][21], 32.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][21], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][21], -1);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][21], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][21], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][21], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][21], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][21], 1);

    HbePrismaAufa[playerid][22] = CreatePlayerTextDraw(playerid, 294.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][22], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][22], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][22], -1);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][22], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][22], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][22], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][22], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][22], 1);

    HbePrismaAufa[playerid][23] = CreatePlayerTextDraw(playerid, 305.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][23], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][23], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][23], -677758977);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][23], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][23], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][23], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][23], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][23], 1);

    HbePrismaAufa[playerid][24] = CreatePlayerTextDraw(playerid, 307.000, 397.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][24], 31.000, 43.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][24], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][24], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][24], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][24], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][24], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][24], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][24], 1);

    HbePrismaAufa[playerid][25] = CreatePlayerTextDraw(playerid, 318.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][25], 12.000, -28.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][25], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][25], -930264833);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][25], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][25], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][25], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][25], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][25], 1);

    HbePrismaAufa[playerid][26] = CreatePlayerTextDraw(playerid, 312.000, 394.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][26], 0.828, 2.499);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][26], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][26], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][26], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][26], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][26], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][26], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][26], 1);

    HbePrismaAufa[playerid][27] = CreatePlayerTextDraw(playerid, 225.000, 394.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][27], 0.828, 2.499);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][27], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][27], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][27], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][27], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][27], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][27], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][27], 1);

    HbePrismaAufa[playerid][28] = CreatePlayerTextDraw(playerid, 248.000, 394.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][28], -0.888, 2.499);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][28], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][28], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][28], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][28], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][28], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][28], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][28], 1);

    HbePrismaAufa[playerid][29] = CreatePlayerTextDraw(playerid, 238.000, 413.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][29], -0.919, 2.697);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][29], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][29], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][29], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][29], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][29], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][29], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][29], 1);

    HbePrismaAufa[playerid][30] = CreatePlayerTextDraw(playerid, 234.000, 413.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][30], 0.958, 2.598);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][30], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][30], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][30], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][30], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][30], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][30], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][30], 1);

    HbePrismaAufa[playerid][31] = CreatePlayerTextDraw(playerid, 220.000, 395.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][31], 32.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][31], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][31], 1102475263);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][31], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][31], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][31], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][31], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][31], 1);

    HbePrismaAufa[playerid][32] = CreatePlayerTextDraw(playerid, 220.000, 439.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][32], 32.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][32], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][32], 1102475263);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][32], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][32], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][32], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][32], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][32], 1);

    HbePrismaAufa[playerid][33] = CreatePlayerTextDraw(playerid, 251.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][33], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][33], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][33], 1102475263);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][33], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][33], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][33], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][33], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][33], 1);

    HbePrismaAufa[playerid][34] = CreatePlayerTextDraw(playerid, 335.000, 394.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][34], -0.888, 2.499);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][34], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][34], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][34], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][34], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][34], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][34], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][34], 1);

    HbePrismaAufa[playerid][35] = CreatePlayerTextDraw(playerid, 325.000, 413.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][35], -0.919, 2.697);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][35], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][35], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][35], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][35], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][35], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][35], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][35], 1);

    HbePrismaAufa[playerid][36] = CreatePlayerTextDraw(playerid, 321.000, 413.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][36], 0.958, 2.598);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][36], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][36], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][36], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][36], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][36], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][36], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][36], 1);

    HbePrismaAufa[playerid][37] = CreatePlayerTextDraw(playerid, 307.000, 395.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][37], 32.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][37], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][37], -677758977);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][37], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][37], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][37], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][37], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][37], 1);

    HbePrismaAufa[playerid][38] = CreatePlayerTextDraw(playerid, 307.000, 439.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][38], 32.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][38], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][38], -677758977);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][38], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][38], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][38], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][38], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][38], 1);

    HbePrismaAufa[playerid][39] = CreatePlayerTextDraw(playerid, 338.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][39], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][39], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][39], -677758977);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][39], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][39], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][39], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][39], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][39], 1);

    HbePrismaAufa[playerid][40] = CreatePlayerTextDraw(playerid, 351.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][40], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][40], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][40], 1315431679);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][40], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][40], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][40], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][40], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][40], 1);

    HbePrismaAufa[playerid][41] = CreatePlayerTextDraw(playerid, 353.000, 397.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][41], 31.000, 43.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][41], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][41], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][41], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][41], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][41], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][41], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][41], 1);

    HbePrismaAufa[playerid][42] = CreatePlayerTextDraw(playerid, 358.000, 394.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][42], 0.828, 2.499);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][42], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][42], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][42], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][42], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][42], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][42], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][42], 1);

    HbePrismaAufa[playerid][43] = CreatePlayerTextDraw(playerid, 363.000, 431.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][43], 12.000, -28.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][43], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][43], 1314832383);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][43], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][43], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][43], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][43], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][43], 1);

    HbePrismaAufa[playerid][44] = CreatePlayerTextDraw(playerid, 381.000, 394.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][44], -0.888, 2.499);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][44], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][44], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][44], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][44], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][44], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][44], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][44], 1);

    HbePrismaAufa[playerid][45] = CreatePlayerTextDraw(playerid, 371.000, 413.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][45], -0.919, 2.697);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][45], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][45], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][45], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][45], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][45], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][45], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][45], 1);

    HbePrismaAufa[playerid][46] = CreatePlayerTextDraw(playerid, 367.000, 413.000, "/");
    PlayerTextDrawLetterSize(playerid, HbePrismaAufa[playerid][46], 0.958, 2.598);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][46], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][46], 859257599);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][46], 1);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][46], 1);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][46], 859257599);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][46], 1);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][46], 1);

    HbePrismaAufa[playerid][47] = CreatePlayerTextDraw(playerid, 353.000, 395.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][47], 32.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][47], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][47], 1315431679);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][47], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][47], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][47], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][47], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][47], 1);

    HbePrismaAufa[playerid][48] = CreatePlayerTextDraw(playerid, 353.000, 439.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][48], 32.000, 2.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][48], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][48], 1315431679);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][48], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][48], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][48], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][48], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][48], 1);

    HbePrismaAufa[playerid][49] = CreatePlayerTextDraw(playerid, 384.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][49], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][49], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][49], 1315431679);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][49], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][49], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][49], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][49], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][49], 1);

    HbePrismaAufa[playerid][50] = CreatePlayerTextDraw(playerid, 251.000, 441.000, "LD_SPAC:white");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][50], 2.000, -46.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][50], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][50], 1102475263);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][50], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][50], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][50], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][50], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][50], 1);

    HbePrismaAufa[playerid][51] = CreatePlayerTextDraw(playerid, 233.000, 413.000, "HUD:radar_girlfriend");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][51], 7.000, 8.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][51], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][51], -1);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][51], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][51], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][51], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][51], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][51], 1);

    HbePrismaAufa[playerid][52] = CreatePlayerTextDraw(playerid, 275.000, 413.000, "HUD:radar_tshirt");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][52], 8.000, 8.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][52], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][52], -1);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][52], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][52], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][52], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][52], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][52], 1);

    HbePrismaAufa[playerid][53] = CreatePlayerTextDraw(playerid, 320.000, 413.000, "HUD:radar_pizza");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][53], 7.000, 9.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][53], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][53], -1);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][53], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][53], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][53], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][53], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][53], 1);

    HbePrismaAufa[playerid][54] = CreatePlayerTextDraw(playerid, 364.000, 411.000, "HUD:radar_centre");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][54], 11.000, 9.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][54], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][54], -1);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][54], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][54], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][54], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][54], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][54], 1);

    HbePrismaAufa[playerid][55] = CreatePlayerTextDraw(playerid, 410.000, 413.000, "HUD:radar_waypoint");
    PlayerTextDrawTextSize(playerid, HbePrismaAufa[playerid][55], 6.000, 7.000);
    PlayerTextDrawAlignment(playerid, HbePrismaAufa[playerid][55], 1);
    PlayerTextDrawColor(playerid, HbePrismaAufa[playerid][55], -1);
    PlayerTextDrawSetShadow(playerid, HbePrismaAufa[playerid][55], 0);
    PlayerTextDrawSetOutline(playerid, HbePrismaAufa[playerid][55], 0);
    PlayerTextDrawBackgroundColor(playerid, HbePrismaAufa[playerid][55], 255);
    PlayerTextDrawFont(playerid, HbePrismaAufa[playerid][55], 4);
    PlayerTextDrawSetProportional(playerid, HbePrismaAufa[playerid][55], 1);
 }