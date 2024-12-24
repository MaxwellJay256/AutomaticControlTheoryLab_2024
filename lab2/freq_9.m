clc; clear; close all;

% 固定 T 和 τ，分别在同一幅图绘制不同 K 时
% G(s) = (K(τs+1))/(s(Ts-1))
% 的 Nyquist 图和 Bode 图
K_1 = [0.5, 1, 2, 4, 8];
T_1 = 1;
tau_1 = 0.5;

figure; hold on;
for i = 1:length(K_1)
    G(i) = tf([K_1(i)*tau_1, K_1(i)], [T_1, -1]);
    nyquist(G(i));
end
legend('K = ' + string(K_1(1)), 'K = ' + string(K_1(2)), 'K = ' + string(K_1(3)), 'K = ' + string(K_1(4)), 'K = ' + string(K_1(5)));
grid on;
title('不同 K 时 Nyquist 图');
saveas(gcf, 'figures_freq/nyquist_9_diff_K.png');

figure; hold on;
for i = 1:length(K_1)
    bode(G(i));
end
legend('K = ' + string(K_1(1)), 'K = ' + string(K_1(2)), 'K = ' + string(K_1(3)), 'K = ' + string(K_1(4)), 'K = ' + string(K_1(5)));
grid on;
title('不同 K 时 Bode 图');
saveas(gcf, 'figures_freq/bode_9_diff_K.png');

% 固定 T 和 K，分别在同一幅图绘制不同 τ 时
% G(s) = (K(τs+1))/(s(Ts-1))
% 的 Nyquist 图和 Bode 图
K_2 = 2;
T_2 = 3;
tau_2 = [0.1, 0.2, 0.5, 1, 2];

figure; hold on;
for i = 1:length(tau_2)
    F(i) = tf([K_2*tau_2(i), K_2], [T_2, -1]);
    nyquist(F(i));
end
legend('τ = ' + string(tau_2(1)), 'τ = ' + string(tau_2(2)), 'τ = ' + string(tau_2(3)), 'τ = ' + string(tau_2(4)), 'τ = ' + string(tau_2(5)));
grid on;
title('不同 τ 时 Nyquist 图');
saveas(gcf, 'figures_freq/nyquist_9_diff_tau.png');

figure; hold on;
for i = 1:length(tau_2)
    bode(F(i));
end
legend('τ = ' + string(tau_2(1)), 'τ = ' + string(tau_2(2)), 'τ = ' + string(tau_2(3)), 'τ = ' + string(tau_2(4)), 'τ = ' + string(tau_2(5)));
grid on;
title('不同 τ 时 Bode 图');
saveas(gcf, 'figures_freq/bode_9_diff_tau.png');
