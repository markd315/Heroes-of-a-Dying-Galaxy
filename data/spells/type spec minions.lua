Card = luajava.bindClass("tcg.Card");

local spell = Card:createMinion(0, 'Magic Carp', 'WATER', 3, 2, 1, 'SPLASH.  STEALTH.', 22, 20);
	spell.splash = true;
	spell.stealth = true;
local spell = Card:createMinion(0,'Snorkeler', 'WATER', 5, 16, 1, 'STEALTH', 60, 23);
	spell.stealth = true;
local spell = Card:createMinion(0,'Lesser Nessie', 'WATER', 6, 16, 1, '', 50, 53);
local spell = Card:createMinion(0,'Ice Omen', 'WATER', 8, 120, 0, 'Freezes attackers.', 68, 70);
	spell.onDamageDealt = function() if enemy() and this().controller ~= other().controller then this():freeze(); end end
local spell = Card:createMinion(0,'Platypus', 'WATER', 2, 2, 0, '', 20, 32);
local spell = Card:createMinion(0,'Fisherman', 'WATER', 3, 4, 0, 'Draw a card.', 22, 35);
	spell.onCast = function() this().owner:draw(); end;

local spell = Card:createMinion(0,'Firefly', 'FIRE', 'NORMAL', 1, 1, 0, 'CAMOUFLAGE:NORMAL', 22, 15);

local spell = Card:createMinion(0, '3 Tailed Scorpion', 'NATURE', 1, 1, 0, 'SPLASH.', 16, 8);
	spell.splash = true;

local spell = Card:createMinion(0, 'Backfiring Invention', 'INDUSTRY', 1, 1, 0, 'When drawn, deal 60 INDUSTRY damage to your character', 30, 22);
 	spell.onDrawn = function() this().owner:typedDamage(60, 'INDUSTRY',this().owner); end;