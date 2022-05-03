tspan = [0,300];

y0 = [20e6; 1; 0];

k1 = 0.3/(20e6);

k2 = 0.1;

%define a function f of t and y.
f = @(t,y) [-k1*y(1)*y(2); k1*y(1)*y(2)-k2*y(2); k2*y(2)];

% numerically solves an ode y'=f(t,y) over the time interval tspan, with initial condition y0.
[t,y] = ode45(f,tspan,y0);
plot(t,y)
grid on;
xlabel('Time (days), $t$','interpreter','latex');
ylabel('Population','interpreter','latex');
legend('S','I','R');
title('Spread of Supercooties2025','interpreter','latex');

max(y(:,2)) % peak number of infected people
max(y(:,3)) % number of people who caught it in the end