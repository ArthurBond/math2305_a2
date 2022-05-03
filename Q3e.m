tspan = [0: 0.01: 400];

y0 = [20e6; 1; 0; 0];

k1 = 0.3/(20e6);

k2 = 0.1;

k3 = 0.1;

%define a function f of t and y. 
f = @(t,y) [-k1*y(1)*y(2); k1*y(1)*y(2)-(k2+k3)*y(2); k2*(y(2)+y(4)); k3*y(2)-k2*y(4)];

% numerically solves an ode y'=f(t,y) over the time interval tspan, with initial condition y0.
[t,y] = ode45(f,tspan,y0);
plot(t,y)
% ylim([0; 14e5])
grid on;
xlabel('Time (days), $t$','interpreter','latex');
ylabel('Population','interpreter','latex');
legend('S','I','R', 'Q');
% title('Evolution of Pop. Infected with Supercooties2025; $\frac{dI}{dt}= k_1SI - k_2I$','interpreter','latex');
% title('Evolution of People Who Recovered from Supercooties2025; $\frac{dR}{dt}= k_2I$','interpreter','latex');
title('Susceptibles, Infected, Removed, and Quarantined People','interpreter','latex');

max(y(:,2)) % peak number of infected people
max(y(:,3)) % number of people who caught it in the end
max(y(:,4)) % peak number of people quarantined