function [r_x,v_x,r_xbar,v_xbar] = peri_to_geo(ecc,r_p,inc,RA,AOP,mu)
%{
Marissa Palamara
Get perifocal and geocentric equatorial frame
ASEN 3200
%}
% semi-major axis
a = -r_p/(ecc-1);
% angular momentum
h = sqrt(mu*a*(1-ecc^2));
% true anomaly
TA = acosd((1/ecc)*(h^2/(mu*r_p)-1));
% perifocal plane
r_xbar = ((h^2/mu)*(1/(1+ecc*cosd(TA)))).*[cosd(TA),sind(TA),0];
v_xbar = (mu/h).*[-sind(TA),ecc+cosd(TA),0];
% transformation matrix
Q_Xx = C3(AOP)*C1(inc)*C3(RA);
% geocentric equatorial frame
r_x = Q_Xx*r_xbar';
v_x = Q_Xx*v_xbar';

for i = 1:3
    fprintf('r_xbar = %0.2f km, v_xbar = %0.2f km/s, r_x = %0.2f km, v_x = %0.2f km/s.\n',r_xbar(i),v_xbar(i),r_x(i),v_x(i))
end
end