function [a,ecc,e_vec,inc,RA,AOP,TA,h_vec] = orbital_elements(r_vec,v_vec,mu)
%{
Marissa Palamara
ASEN 3200
Orbital Elements Algorithm
%}
r = norm(r_vec);
v = norm(v_vec);
v_r = (r_vec*v_vec')/r;
% Specific Energy
specific_E = v^2/2-mu/r;
% Semi-major Axis
a = -mu/(2*specific_E);
% Angular Momentum
h_vec = cross(r_vec,v_vec);
h = norm(h_vec);
N_vec = cross([0 0 1], h_vec);
N = norm(N_vec);
% Inclination
inc = acosd(h_vec(3)/h);
% Right Ascension
RA = acosd(N_vec(1)/N);
if N_vec(3) < 0
    RA = 360 - RA;
end
% Eccentricity and its vector
e_vec = 1/mu * (((v^2-mu/r).*r_vec) - (r*v_r.*v_vec));
ecc = norm(e_vec);
% Argument of Perigee
AOP = acosd((N_vec*e_vec')/(N*ecc));
if e_vec(3) < 0
    AOP = 360 - AOP;
end
% True Anomaly
TA = acosd((e_vec*r_vec')/(ecc*r));
if v_r < 0
    TA = 360 - TA;
end
fprintf('a = %d km, e = %0.3f, i = %0.3f deg, RA = %0.3f deg, AOP = %0.3f deg, TA = %0.3f deg.\n',a,ecc,inc,RA,AOP,TA);
end

