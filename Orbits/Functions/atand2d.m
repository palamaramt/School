function t = atand2d(y,x)
%{ 
    Function from Cutris Book: Appendix D.19
    t (double) - angle in degrees
%}

if x == 0
    if y == 0
        t = 0;
    elseif y > 0
        t = 90;
    else
        t = 270;
    end
elseif x > 0
    if y >= 0
        t = atand(y/x);
    else
        t = atand(y/x) + 360;
    end
elseif x < 0
    if y == 0
        t = 180;
    else
        t = atand(y/x) + 180;
    end
end
end