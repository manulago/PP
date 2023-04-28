let rec power_mod b e m =
	if m>0
	then if e>0
		then if e mod 2=0
			then power_mod ((b mod m*b mod m)mod m)(e/2)m
			else ((b mod m)*power_mod((b mod m*b mod m)mod m)(e/2)m)mod m
		else 1
	else 0
		
    
let powmod m b e = power_mod b e m


