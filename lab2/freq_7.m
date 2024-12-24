clc; clear; close all;

% K 固定，分别在同一幅图绘制不同时间常数 T 时
% G(s) = K / (s(Ts+1))
% 的 Nyquist 图和 Bode 图
K = 1;
T = [1, 2, 4, 8, 16];

figure; hold on;
for i = 1:length(T)
    G(i) = tf(K, [T(i) 1]);
    nyquist(G(i));
end
legend('T = ' + string(T(1)), 'T = ' + string(T(2)), 'T = ' + string(T(3)), 'T = ' + string(T(4)), 'T = ' + string(T(5)));
grid on;
title('不同 T 时 Nyquist 图');
saveas(gcf, 'figures_freq/nyquist_7_diff_T.png');

figure; hold on;
for i = 1:length(T)
    bode(G(i));
end
legend('T = ' + string(T(1)), 'T = ' + string(T(2)), 'T = ' + string(T(3)), 'T = ' + string(T(4)), 'T = ' + string(T(5)));
grid on;
title('不同 T 时 Bode 图');
saveas(gcf, 'figures_freq/bode_7_diff_T.png');
