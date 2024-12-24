clc; clear; close all;

% T 固定，分别在同一幅图绘制不同开环增益 K 时 G(s)=K/(s(Ts+1)) 的 Nyquist 图和 Bode 图
T = 1;
K = [1, 2, 4, 8, 16];

figure; hold on;
for i = 1:length(K)
    G(i) = tf(K(i), [T 1]);
    nyquist(G(i));
end
legend('K = ' + string(K(1)), 'K = ' + string(K(2)), 'K = ' + string(K(3)), 'K = ' + string(K(4)), 'K = ' + string(K(5)));
grid on;
title('不同 K 时 Nyquist 图');
saveas(gcf, 'figures_freq/nyquist_8_diff_K.png');

figure; hold on;
for i = 1:length(K)
    bode(G(i));
end
legend('K = ' + string(K(1)), 'K = ' + string(K(2)), 'K = ' + string(K(3)), 'K = ' + string(K(4)), 'K = ' + string(K(5)));
grid on;
title('不同 K 时 Bode 图');
saveas(gcf, 'figures_freq/bode_8_diff_K.png');
