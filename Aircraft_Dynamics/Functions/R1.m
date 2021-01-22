%{ 
    Marissa Palamara
    Aircraft Dynamics - ASEN 3128
    Jan 2020

    R1.m is a function to compute the rotation matrix of a rotation about the aircraft's z axis.
    Args: psi - angle in degrees
    Returns: R - Rotation Matrix
%}

function R = R1(psi)
    R = [
        cosd(psi) sind(psi) 0;
        -sind(psi) cosd(psi) 0;
        0 0 1
    ];
end

