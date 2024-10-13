# lab1 | 一、二阶系统的时域分析

> 本文件夹下，名称中含 "_post" 的 MATLAB 脚本指运行时会运行对应的 Simulink 模型。
> 
> "post" 取自英语中 "after" 的含义，表示仿真运行后的数据处理。

实验报告：[lab1_report.pdf](./lab1_report.pdf)

## 1. 一阶系统

### 单位阶跃响应

- Simulink 模型：[`first_order_step.slx`](./first_order_step.slx)
- MATLAB 代码：[`first_order_step_post.m`](./first_order_step_post.m)

### 单位斜坡响应

- Simulink 模型：[`first_order_ramp.slx`](./first_order_ramp.slx)
- MATLAB 代码：[`first_order_ramp_post.m`](./first_order_ramp_post.m)

### 单位加速度响应

- Simulink 模型：[`first_order_accel.slx`](./first_order_accel.slx)
- MATLAB 代码：[`first_order_accel_post.m`](./first_order_accel_post.m)

## 2. 二阶系统

### [`second_order_main.m`](./second_order_main.m)

调用 [`SecondOrderStep`](./SecondOrderStep.m) 和
[`SecondOrderFImpulse`](./SecondOrderFImpulse.m) 函数，依次绘制：

1. 二阶系统在零阻尼、欠阻尼、临界阻尼、过阻尼下的**单位阶跃响应**
2. 二阶系统在零阻尼、欠阻尼、临界阻尼、过阻尼下的**单位脉冲响应**
3. 欠阻尼二阶系统不同 $\zeta$ 的单位阶跃响应
4. 欠阻尼二阶系统不同 $\omega_n$ 的单位阶跃响应
5. $\zeta \omega_n$ 一定时，欠阻尼二阶系统不同 $\zeta$ 的单位阶跃响应

### 二阶系统对输入信号的跟踪

绘制二阶系统对单位阶跃、单位斜坡、单位加速度信号的跟踪。

- Simulink 模型：[`second_order_follow.slx`](./second_order_follow.slx)
- MATLAB 代码：[`second_order_follow_post.m`](./second_order_follow_post.m)
