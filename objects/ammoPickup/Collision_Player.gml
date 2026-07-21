other.ammo[index] += add_ammo;
instance_destroy();
sound_play(sndPickupAmmo);
with StatCont
	itm++;
