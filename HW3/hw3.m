t = -1:0.01:1;
r = rectpuls(t, 1);
[y, ty] = nconv(r, t, r, t);
[y, ty] = nconv(y, ty, r, t);

plot(ty, y);
title("Problem 6) c)");
xlabel("t");
ylabel("y(t)");

%{
t = -1:0.01:1;
r = rectpuls(t, 1);
[y, ty] = nconv(r, t, r, t);

plot(ty, y);
title("Problem 6) b)");
xlabel("t");
ylabel("y(t)");

u_step = @(t) (t >= 0);

t = 0:0.01:5;
f = 2 * rectpuls(t - 1.5, 1);
g = 2 * (u_step(t - 1) .* (t - 1)) .* rectpuls(t - 1.5, 1);

figure;
plot(t, f);
grid on;
title("Problem 6) a)");
xlabel("t");
ylabel("f(t)");

figure;
plot(t, g);
grid on;
title("Problem 6) a)");
xlabel("t");
ylabel("g(t)");
hold on;

figure;
[y, ty] = nconv(g, t, f, t);
plot(ty, y);
grid on;
title("Problem 6) a)");
xlabel("t");
ylabel("f(t) * g(t)");

u_step = @(t) (t >= 0);

t = -10:0.01:10;
x_t = exp(t*4) .* u_step(-t);
h_t = u_step(t) - u_step(t-2) + u_step(t-4) - u_step(t-6);
y = conv(x_t, h_t, "same") * 0.01; %normalize step size
ty = linspace(-10, 10, length(y));

subplot(3, 1, 1);
plot(t, x_t);
title("Input Signal x(t)");
xlabel("t");
ylabel("x(t)");
grid on;

subplot(3,1,2);
plot(t, h_t);
title('Impulse Response h(t)');
xlabel("t");
ylabel("h(t)");
grid on;

subplot(3,1,3);
plot(t, y);
title('Convolved Signal y(t)');
xlabel("t");
ylabel("h(t)");
grid on;


t_variable = 2;
x_t = exp(4 * (-t + t_variable)) .* u_step(-(-t + t_variable));
hold off; 
plot(t, h_t); 
hold on; 
plot(t, x_t); 
title("x(-t + 2) vs h(t)");
xlabel("t");
ylabel("x(-t + 2) and h(t)");
grid on;
%}