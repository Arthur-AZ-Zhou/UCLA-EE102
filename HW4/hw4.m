k = -10:1:10;
c_k = zeros(1, length(k));

for i = 1:length(k)
    c_k(i) = abs(c(k(i)))^2;
end

stem(k, c_k);
title("Power Spectrum for x3(t) where |k| <= 10");
xlabel("k");
ylabel("|c_k|^2");
grid on;

%{
Comments:
Apart from k = 0, the power is zero at all multiples of 4 which corresponds
to our answer for Problem 1). As for |k| <= 5, you can't really tell much
about this graph as we don't see enough of k yet. For |k| <= 10 and 20, it
gets far more obvious that the higher frequencies at both extremes have a
lower power. It should be noted that the odd frequencies take far slower to
decay while non-multiples-of-four decay fast.
%}




%{
%For only x3(t):
t = -10:0.01:10;

plot(t, x3(t));
title("Problem 2) Plot of Function x3(t)");
xlabel("t");
ylabel("x3(t)");
grid on;
%}