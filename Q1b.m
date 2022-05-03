
t = linspace(-5,4,1000);

y1 = -1*exp(-1.*t);
y2 = 2*exp(2.*t)-exp(-1.*t);
y3 = -2*exp(2.*t)-exp(-1.*t);

hold on
plot(t,y1)
plot(t,y2)
plot(t,y3)
xlim([-5;4]);
ylim([-200;200]);
hold off

grid on
legend('$a= a_0 = -1$','$a=1$','$a=-3$','interpreter','latex')
xlabel('$t$','interpreter','latex')
ylabel('$y$','interpreter','latex')
title('Differences in behaviour of a linear first order DE','interpreter','latex')