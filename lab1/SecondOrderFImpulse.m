function [c, t] = SecondOrderFImpulse(omega, zeta)
    num = [0 0 omega^2];
    den = [1 2*zeta*omega 0];
    g = tf(num, den);
    sys = feedback(g, 1, -1);
    [c, t] = impulse(sys, 0:0.05:5);