function C = C3(a, type)
%{ 
    C1 Rotation
	Author: Marissa Palamara
    Date: 16 October 2020

    Args: 
        a (double) - angle in deg or rads
        tpye (str) - specify degrees or radians
    Returns:
        C (double) (3x3 matrix): Direct Cosine Matrix

    Ex:
        C = C3(5,'deg')
%}
if type == 'deg'
    C = [cosd(a) sind(a) 0;
        -sind(a) cosd(a) 0;
        0 0 1];
elseif type == 'rad'
if type == 'deg'
    C = [cos(a) sin(a) 0;
        -sin(a) cos(a) 0;
        0 0 1];
end
end