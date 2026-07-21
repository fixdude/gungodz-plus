function Weapon(spr/*:sprite*/, goldspr/*:sprite*/, auto/*:bool*/, reload/*:int*/ = 6, press/*:function*/ = noone, hold/*:function*/ = noone, release/*:function*/ = noone, cost/*:int*/ = 1, goldshake/*:number*/ = 3) constructor
{
	sprite_index = spr;
	gold_sprite = goldspr;
	image_speed = 0.1;
	self.auto = auto;
	self.reload = reload;
	self.cost = cost;
	self.press = press;
	self.hold = hold;
	self.released = release;
	self.goldshake = goldshake;
	self.snd = noone;
}

#macro wepDefaults global.__wepDefaults
wepDefaults = {
	Pistol: new Weapon(sprPistol, sprPistolGold, false, 6, function(player/*:Player*/, gold/*:bool*/)
	{
		with (player)
		{
			gunanim = 3;
			sound_play(sndPistol, shootemt);
			
			with (instance_create(x, y, Bullet))
			{
				direction = other.angle;
				zspeed = 0;
				scrBulletMove();
			}
		}
			
		scrFogFlash(2);
		return true;
	}),
	Shotgun: new Weapon(sprShotgun, sprShotgunGold, false, 30, function(player/*:Player*/, gold/*:bool*/)
	{
		scrShake(2);
			
		with (player)
		{
			gunanim = 5;
			sound_play(sndShotgun, shootemt);
			
			repeat (8)
			{
				with (instance_create(x, y, Bullet))
				{
					direction = (other.angle + random(14)) - 7;
					zspeed = random(6) - 3;
					scrBulletMove();
				}
			}
		}
			
		scrFogFlash(2);
		return true;
	}),
	Minigun: new Weapon(sprMinigun, sprMinigunGold, false, 5, function(player/*:Player*/)
	{
		if (sound_isplaying(snd))
			sound_stop(snd);
		sound_stop(sndMinigunEnd);
		sound_play(sndMinigunStart, player.shootemt);
	}, function(player, gold)
	{
		scrShake(1);
		
		with (player)
		{
			if (gunanim < 1)
				gunanim = 4;
			
			if (!sound_isplaying(other.snd))
				other.snd = sound_loop(sndMinigun, shootemt);
			with (instance_create(x, y, Bullet))
			{
				direction = (other.angle + random(3)) - 1.5;
				zspeed = random(3) - 1.5;
				scrBulletMove();
			}
		}
			
		scrFogFlash();
		return true;
	}, function(player)
	{
		if (sound_isplaying(snd))
			sound_stop(snd);
		sound_play(sndMinigunEnd, player.shootemt);
	}, 1),
	Bazooka: new Weapon(sprBazooka, sprBazookaGold, false, 50, noone, function(player/*:Player*/, gold/*:bool*/)
	{
		scrShake(1);
			
		with (player)
		{
			gunanim = 5;
			sound_play(sndBazooka);
			
			with (instance_create(x + lengthdir_x(10, angle), y + lengthdir_y(10, angle), Rocket))
			{
				direction = other.angle;
				image_angle = direction;
				zspeed = 0;
				speed = 2;
			}
		}
			
		scrFogFlash();
		return true;
	}),
	Knife: new Weapon(sprKnifeWeapon, sprKnifeWeaponGold, false, 0, function(player/*:Player*/, gold/*:bool*/)
	{
		with (player)
		{
			gunanim = 4;
			with (instance_create(x, y, Knife))
				image_angle = other.angle;
		}
		return true;
	}, noone, noone, 0, 0)
};

wepDefaults.Minigun.snd = noone;

function scrFogFlash(time = 2)
{
	with (Player)
	{
		fog = false;
		alarm[1] = time fmt;
	}
}

function scrWeps()
{
	weapons = array_create(Weapons.Length, noone);
	
	weapons[Weapons.Pistol] = wepDefaults.Pistol;
	weapons[Weapons.Shotgun] = wepDefaults.Shotgun;
	weapons[Weapons.Minigun] = wepDefaults.Minigun;
	weapons[Weapons.Bazooka] = wepDefaults.Bazooka;
	weapons[Weapons.Knife] = wepDefaults.Knife;
	ammo = UberCont.p_ammo;
	ammo[Weapons.Knife] = 1;
}