t = -5:0.1:5;
xEven = even(t, @relu);
xOdd = odd(t, @relu);
figure(1);
plot(t, xOdd, 'g');
xlabel("t (seconds)");
ylabel("Odd relu(t)");
title("(c) Odd Component of relu(t)");
grid on;

figure(2);
plot(t, xEven, 'r');
xlabel("t (seconds)");
ylabel("Even relu(t)");
title("(c) Even Component of relu(t)");
grid on;

%{
t = -5:0.1:5;
x1 = arrayfun(@relu, t);
x2 = @(t) x1;
plot(t, x2(t), 'b');
xlabel("t (seconds)");
ylabel("x2(t)");
title("(b) x2(t)");
grid on;

t = -10:0.2:10;
x1 = @(t) exp(-t) .* cos(2*pi*t); 
plot(t, x1(t), 'b');
xlabel("t (seconds)");
ylabel("x1(t)");
title("(a) x1(t)");
grid on;
%}
