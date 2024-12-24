clc; clear; close all;

% 定义参数 K 和 T
K = 1;
T = 1;

% 定义传递函数
G1 = tf(K, [T 1]);  % 一阶惯性环节 G(s) = K / (Ts + 1)
G2 = tf(K, [T -1]); % 非最小相位惯性环节 G(s) = K / (Ts - 1)

% 绘制 Nyquist 图
% figure;
% nyquist(G1);
% hold on;
% nyquist(G2);
% axis([-2 2 -1 1]);
% legend('G(s) = K / (Ts + 1)', 'G(s) = K / (Ts - 1)');
% title('惯性环节 Nyquist 图');
% grid on;
% saveas(gcf, 'figures_freq/nyquist_inertial.png');

% 绘制 Bode 图
% figure;
% bode(G1);
% hold on;
% bode(G2);
% legend('G(s) = K / (Ts + 1)', 'G(s) = K / (Ts - 1)');
% title('惯性环节 Bode 图');
% grid on;
% saveas(gcf, 'figures_freq/bode_inertial.png');

% 固定 K，分别在同一幅图绘制不同 T 时一阶惯性环节 G(s) = K/(Ts+1) 的 Nyquist 图和 Bode 图
% K = 1;
% T = [1, 10, 100];
% figure; hold on;
% for i = 1: length(T)
%     G = tf(K, [T(i) 1]);
%     nyquist(G);
%     hold on;
% end
% legend('T = ' + string(T(1)), 'T = ' + string(T(2)), 'T = ' + string(T(3)));
% grid on;
% axis([-2 2 -1 1]);
% title('不同 T 时一阶惯性环节 Nyquist 图');
% saveas(gcf, 'figures_freq/nyquist_inertial_diff_T.png');

% figure; hold on;
% for i = 1: length(T)
%     G = tf(K, [T(i) 1]);
%     bode(G);
%     hold on;
% end
% legend('T = ' + string(T(1)), 'T = ' + string(T(2)), 'T = ' + string(T(3)));
% grid on;
% title('不同 T 时一阶惯性环节 Bode 图');
% saveas(gcf, 'figures_freq/bode_inertial_diff_T.png');

% 固定 T，分别在同一幅图绘制不同K时一阶惯性环节 G(s)=K/(Ts+1) 的 Nyquist 图和 Bode 图
K = [1, 2, 4];
T = 1;
figure; hold on;
for i = 1: length(K)
    G = tf(K(i), [T 1]);
    nyquist(G);
    hold on;
end
legend('K = ' + string(K(1)), 'K = ' + string(K(2)), 'K = ' + string(K(3)));
grid on;
title('不同 K 时一阶惯性环节 Nyquist 图');
saveas(gcf, 'figures_freq/nyquist_inertial_diff_K.png');

figure; hold on;
for i = 1: length(K)
    G = tf(K(i), [T 1]);
    bode(G);
    hold on;
end
legend('K = ' + string(K(1)), 'K = ' + string(K(2)), 'K = ' + string(K(3)));
grid on;
title('不同 K 时一阶惯性环节 Bode 图');
saveas(gcf, 'figures_freq/bode_inertial_diff_K.png');

