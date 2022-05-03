x = linspace(-200,200,500);

y1 = 1./(x+100)+1;
y2 = ones(1,length(x));
y3 = 1./(x-100)+1;


hold on

plot(x,y1)
plot(x,y2)
plot(x,y3)
legend('$c = 100$','$y=1$','$c=-100$','interpreter','latex')

hold off

grid on
xlabel('$x$','interpreter','latex')
ylabel('$y$','interpreter','latex')
title('Small changes in initial condition; $y = \frac{1}{x+c} + 1$','interpreter','latex')

