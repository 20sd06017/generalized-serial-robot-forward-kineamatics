function fk_f= fk_fun (theta, d, a, alpha, i)

Tz_theta = [cosd(theta(i)) -sind(theta(i)) 0 0; sind(theta(i)) cosd(theta(i)) 0 0; 0 0 1 0; 0 0 0 1];

Tz_d = [eye(3),[0 0 d(i)]'];

Tz_d  =[ Tz_d; 0 0 0 1];

Tx_a = [eye(3), [a(i) 0 0 ]'];

Tx_a  = [Tx_a; 0 0 0 1] ;

Tx_alpha = [1 0 0 0; 0 cosd(alpha(i)) -sind(alpha(i)) 0; 0 sind(alpha(i)) cosd(alpha(i)) 0; 0 0 0 1];

fk_f = Tz_theta*Tz_d*Tx_a*Tx_alpha;

end
