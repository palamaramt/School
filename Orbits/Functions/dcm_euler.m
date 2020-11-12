function [psi, theta, phi] = dcm_euler(Q)
%{ 
    Get Euler Rotation Angles from DCM
	Author: Marissa Palamara
    Date: 16 October 2020
    
    Args:
        Q (double) (3x3 matrix): Direct Cosine Matrix
    Returns:
        psi (double): spin angle in degrees
        theta (double): nutation angle in degrees
        phi (double): precession angle in degrees
%}
psi = atan2d(Q(3,1), -Q(3,2));
theta = acosd(Q(3,3));
phi = atand2d(Q(1,3), Q(2,3));

end
