clear all;

N = [1000,5000,10000];
for j = 1:3
    for i = 1:1:N(j)
        random = rand();
        if random <= 0.5
            value = sqrt(2*random)-1;
        else
            value = 1-sqrt(2-2*random);
        end
        x(i) = value;
    end
    subplot(3,1,j);
    histogram(x, 50);
    title(['N = ' , num2str(N(j))]);
    clear x;
end