clc; clear; close all;

% T 固定，分别在同一幅图绘制不同阻尼比时二阶振荡环节 G(s)=1/(Ts^2+2Tξs+1) 的N yquist 图和 Bode 图
T = 1;
xi = [0.1, 0.2, 0.5, 1, 2];
figure; hold on;
for i = 1:length(xi)
    G = tf(1, [T^2, 2*T*xi(i), 1]);
    nyquist(G);
end
legend('ξ = ' + string(xi(1)), 'ξ = ' + string(xi(2)), 'ξ = ' + string(xi(3)), 'ξ = ' + string(xi(4)), 'ξ = ' + string(xi(5)));
grid on;
title('不同 ξ 时二阶振荡环节 Nyquist 图');
saveas(gcf, 'figures_freq/nyquist_oscillation_diff_xi.png');

figure; hold on;
for i = 1:length(xi)
    G = tf(1, [T^2, 2*T*xi(i), 1]);
    bode(G);
end
legend('ξ = ' + string(xi(1)), 'ξ = ' + string(xi(2)), 'ξ = ' + string(xi(3)), 'ξ = ' + string(xi(4)), 'ξ = ' + string(xi(5)));
grid on;
title('不同 ξ 时二阶振荡环节 Bode 图');
saveas(gcf, 'figures_freq/bode_oscillation_diff_xi.png');

% 阻尼比固定，分别在同一幅图绘制不同时间常数时G(s)=1/(Ts^2+2Tξs+1)的Nyquist图和Bode图
xi = 1;
T = [1, 2, 4];
figure; hold on;
for i = 1:length(T)
    G = tf(1, [T(i)^2, 2*T(i)*xi, 1]);
    nyquist(G);
end
legend('T = ' + string(T(1)), 'T = ' + string(T(2)), 'T = ' + string(T(3)));
grid on;
title('不同 T 时二阶振荡环节 Nyquist 图');
saveas(gcf, 'figures_freq/nyquist_oscillation_diff_T.png');

figure; hold on;
for i = 1:length(T)
    G = tf(1, [T(i)^2, 2*T(i)*xi, 1]);
    bode(G);
end
legend('T = ' + string(T(1)), 'T = ' + string(T(2)), 'T = ' + string(T(3)));
grid on;
title('不同 T 时二阶振荡环节 Bode 图');
saveas(gcf, 'figures_freq/bode_oscillation_diff_T.png');
