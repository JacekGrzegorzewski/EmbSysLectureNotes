clear all; %!!!!! remember to clear all
clc;

r = sqrt(2/pi);
c = 2*r*r;
i = 1;

N = [1000,10000,100000];
for j = 1:3
    i=1;
    clear X;
while (i <= N(j))
    x = 2*r*rand()-r;
    u = rand();
    g = 1/(2*r);
    if c*u*g <= sqrt(2/pi - x^2)
       X(i) = x;
       i= i+1;
    end
end
subplot(3,1,j);
histogram(X, 50);
title(['N = ' , num2str(N(j))]);


end