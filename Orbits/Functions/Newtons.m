function [E, error] = Newtons(M_e,ecc,tolerance)
if M_e < pi
    E = M_e + ecc/2;
elseif M_e > pi
    E = M_e - ecc/2;
end

f_E = E-ecc*sin(E)-M_e;
f_prime = 1-ecc*cos(E);
error = f_E/f_prime;

while abs(error) >= tolerance
    E = E - error;
    f_E = E-ecc*sin(E)-M_e;
    f_prime = 1-ecc*cos(E);
    error = f_E/f_prime;
end
E = E - error;

end