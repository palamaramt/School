%{ 
    Marissa Palamara
    Aircraft Dynamics - ASEN 3128
    Jan 2020

    Ry.m is a function to compute the rotation matrix of a rotation about the aircraft's y axis.
    Args: theta - angle in degrees
    Returns: R - Rotation Matrix
%}

function R = Ry(theta)
    R = [
        cosd(theta) 0 -sind(theta);
        0 1 0;
        sind(theta) 0 cosd(theta)
    ];
end
