clear all; %!!!!! remember to clear all
clc;

R_lim = 100;
R_lims = [10,100,1000]
N_step = 5;
N_lim = 10;
grid on;
hold on;
figure ;
for j = 1:1:3
R_lim = R_lims(j);

clear theta_hat;
clear MSE;
clear t;

for N = 1:1:N_lim
    for R = 1:R_lim
        theta_hat(R) = mean(rand(1,N*N_step)-0.5);
    end
    MSE(N) = (sum(theta_hat.^2))/R_lim;
end
%

subplot(3,1,j);
hold on;
grid on;


t =N_step:N_step:N_lim*N_step;
scatter(t,MSE);
%legend(,'Interpreter','latex') % R2018b and later
%plot as points!!!

%legend('$\text{Var}\hat{\theta}_N$','Interpreter','latex') % R2018b and later
plot(t,1/12*(1./t));

l= legend(['$MSE_R(\hat{\theta}_N)$'],['$Var(\hat{\theta}_N)$']);
set(l,'Interpreter','Latex');
title(['R = ' , num2str(R_lims(j))]);
end