function Q = dcm_q(q)
%{ 
    Get Direct Cosine Matrix from Quaternion
	Author: Marissa Palamara
    Date: 16 October 2020

    Args:
        q (double) (vector) = quaternion (q(4) is scalar part)
    Returns:
        Q (double) (3x3 matrix) = Direct Cosine Matrix
%}

q1 = q(1); q2 = q(2); q3 = q(3); q4 = q(4);

Q = [q1^2-q2^2-q3^2+q4^2,   2*(q1*q2+q3*q4),    2*(q1*q3-q2*q4);
    2*(q1*q2-q3*q4),    -q1^2+q2^2-q3^2+q4^2,   2*(q2*q3+q1*q4);
    2*(q1*q3+q2*q4),    2*(q2*q3-q1*q4),    -q1^2-q2^2+q3^2+q4^2];
end