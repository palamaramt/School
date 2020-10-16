function [u,phid] = euler_axis_angle(DCM)
%{ 
    C1 Rotation
	Author: Penina Axlerad - CU Boulder Professor - Lecture A-2
    Date: 16 October 2020

    Args: 
        DCM (double): Direct Cosine Matrix
    Returns:
        u (double) (vector): Euler Axis
        phid (double): Principle Angle in Degrees
%}

[evec,eval] = eig(DCM,'vector')
[~,i] = max(real(eval));    % Euler Axis
u = evec(:,i)
[~,i] = max(imag(eval));    % Principle Angle
phi = angle(eval(i));
phid = phi*180/pi;
end