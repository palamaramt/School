%{ 
    Marissa Palamara
    Aircraft Dynamics - ASEN 3128
    Jan 2020

    Rx.m is a function to compute the rotation matrix of a rotation about the aircraft's x axis.
    Args: phi - angle in degrees
    Returns: R - Rotation Matrix
%}

function R = Rx(phi)
    R = [
        1 0 0;
        0 cosd(phi) sind(phi);
        0 -sind(phi) cosd(phi)
    ];
end
