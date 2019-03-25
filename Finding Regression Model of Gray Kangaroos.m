% Week 2
% ESMA SERT - 1816091
% 31/01/2019
% Finding Regression Model of Gray Kangaroos


table1 = xlsread('FireAndTheftInChicago.xlsx')

x = table1(:,1);

y = table1(:,2);

figure
subplot(2,1,1)
plot(x, 'o')
xlabel('nasal length (mm ¥10)')
subplot(2,1,2)
plot(y, 'x')
xlabel('nasal width (mm ¥ 10)for a male gray kangaroo from a random sample of such animals.')


% Regression Part:

b1 = x\y;

ycalc1 = b1*x;
scatter(x,y)
hold on
plot(x,ycalc1)


xlabel('nasal length (mm ¥10)')
ylabel('nasal width (mm ¥ 10) ')
title('Linear Regression Relation Between nasal length and width')
grid on

% finding R squared

Rsq1 = 1 - sum((y - ycalc1).^2)/sum((y - mean(y)).^2)





	
