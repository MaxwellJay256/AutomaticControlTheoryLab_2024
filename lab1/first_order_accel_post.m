% -------------------------------------------------------------------
%  MATLAB version: 23.2.0.2365128 (R2023b)
%  一阶系统匀加速响应
% -------------------------------------------------------------------
clc; clear;

name = 'first_order_accel';

% 打印 Simulink 模型框图
open_system(name);
print(append('-s', name), '-dpng', append(name, '_model.png'));
out = sim(name); % 运行模型
close_system(name);

% 打印响应曲线
figure, hold on;
plot(out.t, out.r, 'b');
plot(out.t, out.c, 'r');
legend({'Acceleration', 'Response'});
title('一阶系统单位加速度响应');
saveas(gcf, strcat(name, '.png'));
hold off;
