function C = C1(a, type)
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
        C = C1(5,'deg')
%}
if type == 'deg'
    C = [1 0 0;
        0 cosd(a) sind(a);
        0 -sind(a) cosd(a)];
elseif type == 'rad'
    C = [1 0 0;
        0 cos(a) sin(a);
        0 -sin(a) cos(a)];
end
end