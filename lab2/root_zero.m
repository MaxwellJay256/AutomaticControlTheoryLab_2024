% File: root_zero.m
function sys = root_zero(z)
    num = [1, -z];
    den = [1 2 2 0];
    sys = tf(num, den);
end