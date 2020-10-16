function C = C2(a, type)
%{ 
    C2 Rotation
	Author: Marissa Palamara
    Date: 16 October 2020

    Args: 
        a (double) - angle in deg or rads
        tpye (str) - specify degrees or radians
    Returns:
        C (double) (3x3 matrix): Direct Cosine Matrix

    Ex:
        C = C2(5,'deg')
%}
if type == 'deg'
    C = [cosd(a) 0 -sind(a);
        0 1 0;
        sind(a) 0 cosd(a)];
elseif type == 'rad'
    C = [cos(a) 0 -sin(a);
        0 1 0;
        sin(a) 0 cos(a)];
end
end