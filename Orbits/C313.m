function [Q] = C313(psi,theta,phi,type)
%{ 
    Classical Euler Angle Rotation - 313
	Author: Marissa Palamara
    Date: 16 October 2020

    Args: 
        phi (double) - precession angle in deg or rads
        theta (double) - nutation angle in deg or rads
        psi (double) - spin angle in deg or rads
        tpye (str) - specify degrees or radians
    Returns:
        Q (double) (3x3 matrix): Direct Cosine Matrix

    Ex:
        Q = C313(5,10,15,'deg')
%}

if type == 'deg'
    R3_psi = [ cosd(psi) sind(psi) 0;
        -sind(psi) cosd(psi) 0;
        0 0 1];
    R1_theta = [1 0 0;
        0 cosd(theta) sind(theta);
        0 -sind(theta) cosd(theta)];
    R3_phi = [cosd(phi) sind(phi) 0;
        -sind(phi) cosd(phi) 0;
        0 0 1];
    Q = R3_psi * R1_theta * R3_phi;
elseif type == 'rad'
        R3_psi = [ cos(psi) sin(psi) 0;
        -sin(psi) cos(psi) 0;
        0 0 1];
    R1_theta = [1 0 0;
        0 cos(theta) sin(theta);
        0 -sin(theta) cos(theta)];
    R3_phi = [cos(phi) sin(phi) 0;
        -sin(phi) cos(phi) 0;
        0 0 1];
    Q = R3_psi * R1_theta * R3_phi;
end

end

