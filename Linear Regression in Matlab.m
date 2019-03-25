% ESMA SERT - 1816091
% 31/01/2019
% Linear Regression in Matlab

load accidents
x = hwydata(:,14);  %population of state
y = hwydata(:,4);  %accidents per state

figure

subplot(2,1,1)
plot (x,'o')
xlabel('Population of state')
subplot(2,1,2)
plot(y,'x')
xlabel('Accidents per state')

% Regression Part:

b1 = x\y;

ycalc1 = b1*x;
scatter(x,y)
hold on
plot(x,ycalc1)

xlabel('Population of state')
ylabel('Fatal traffic accidents per state')
title('Linear Regression Relation Between Accidents Population')
grid on

% finding R squared

Rsq1 = 1 - sum((y - ycalc1).^2)/sum((y - mean(y)).^2)


x

X = [ones(length(x),1) x]

b = X\y

yCalc2 = X*b;
plot(x,yCalc2,'--')
legend('Data','Slope','Slope & Intercept','Location','best');
