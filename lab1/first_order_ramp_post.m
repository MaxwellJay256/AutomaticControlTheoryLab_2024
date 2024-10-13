% -------------------------------------------------------------------
%  MATLAB version: 23.2.0.2365128 (R2023b)
%  一阶系统匀速响应
% -------------------------------------------------------------------
clc; clear;

name = 'first_order_ramp';

% 打印 Simulink 模型框图
open_system(name);
print(append('-s', name), '-dpng', append(name, '_model.png'));
out = sim(name); % 运行模型
close_system(name);

% 打印响应曲线
figure, hold on;
plot(out.t, out.r, 'b');
plot(out.t, out.c(:,1), 'r', out.t, out.c(:,2), 'g', out.t, out.c(:,3), 'm');
legend({'Ramp', 'T=2', 'T=5', 'T=10'});
title('一阶系统单位斜坡响应');
saveas(gcf, strcat(name, '.png'));
hold off;
