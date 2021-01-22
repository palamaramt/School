%{ 
    Marissa Palamara
    Aircraft Dynamics - ASEN 3128
    Jan 2020

    321.m is a function to compute the conventional 321 Euler Rotation for Aircraft.
    Args:   phi -   angle in degrees of rotation about x axis
            theta - angle in degrees of rotation about y axis
            psi -   angle in degrees of rotation about z axis
    Returns: R - Rotation Matrix
%}

function R = 321(phi,theta,psi)
    R = Rx(phi)*Ry(theta)*Rz(psi);
end