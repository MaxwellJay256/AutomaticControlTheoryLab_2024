function [c, t] = SecondOrderStep(omega, zeta)
    num = [0 0 omega^2]; % 传递函数分子
    den = [1 2*zeta*omega omega^2]; % 传递函数分母
    sys = tf(num, den);
    [c, t] = step(sys, [0:0.05:5]);
end
