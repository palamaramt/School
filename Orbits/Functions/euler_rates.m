function [w_p,w_n,w_s] = euler_rates(w_x, w_y, w_z, psi, theta, phi)
%{ 
    Euler Rates from xyz angular velocity
	Author: Marissa Palamara
    Date: 16 October 2020

    Args: 
        w_x (double): angular velocity in x-direction
        w_y (double): angular velocity in y-direction
        w_z (double): angular velocity in z-direction
        psi (double): spin angle in degrees
        theta (double): nutation angle in degrees
        phi (double): precession angle in degrees
    Returns:
        w_p (double): precession rate (deg/s)
        w_n (double): nutation rate (deg/s)
        w_s (double): spin rate (deg/s)
%}
w_p = 1/sind(theta) * (w_x*sind(psi)+w_y*cosd(psi));      % deg/s
w_n = w_x*cosd(psi)-w_y*sind(psi);                        % deg/s
w_s = -1/tand(theta)*(w_z*sind(psi)+w_y*cosd(psi))+w_z;   % deg/s
end