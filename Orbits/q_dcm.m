function q = q_from_dcm(Q)
%{
    Function from Cutris Book: Appendix D.38
    Calculates the quaternion from the Direction Cosine Matrix
%}

K3 = ...
    [Q(1,1)-Q(2,2)-Q(3,3), Q(2,1)+Q(1,2), Q(3,1)+Q(1,3), Q(2,3)-Q(3,2);
    Q(2,1)+Q(1,2), Q(2,2)-Q(1,1)-Q(3,3), Q(3,2)+Q(2,3), Q(3,1)-Q(1,3);
    Q(3,1)+Q(1,3), Q(3,2)+Q(2,3), Q(3,3)-Q(1,1)-Q(2,2), Q(1,2)-Q(2,1);
    Q(2,3)-Q(3,2), Q(3,1)-Q(1,3), Q(1,2)-Q(2,1), Q(1,1)+Q(2,2)+Q(3,3)]/3;

[eigvec, eigval] = eig(k3);

[x,i] = max(diag(eigval));

q=eigvec(:,1);
end