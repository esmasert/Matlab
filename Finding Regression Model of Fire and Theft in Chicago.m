% Week 2
% ESMA SERT - 1816091
% 31/01/2019
% Finding Regression Model of Fire and Theft in Chicago


table1 = xlsread('FireAndTheftInChicago.xlsx')

x = table1(:,1);

y = table1(:,2);

figure
subplot(2,1,1)
plot(x, 'o')
xlabel('Fires per 1000 housing units')
subplot(2,1,2)
plot(y, 'x')
xlabel('Thefts per 1000 population within the same Zip code in the Chicago metro area')


% Regression Part:

b1 = x\y;

ycalc1 = b1*x;
scatter(x,y)
hold on
plot(x,ycalc1)


xlabel('Fires per 1000 housing units')
ylabel('Thefts per 1000 population')
title('Linear Regression Relation Between Fires and Thefts')
grid on

% finding R squared

Rsq1 = 1 - sum((y - ycalc1).^2)/sum((y - mean(y)).^2)




