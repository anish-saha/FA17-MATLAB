% Math 98: Introduction to MATLAB Programming
% Assignment 6
% Anish Saha

% Problem 1
load 'stockprice.csv'
M = stockprice;
I = 1:301;
I = I(isnan(M));
M(I) = 1/2*(M(I-1)+M(I+1));
figure;
plot(M);
hold on; 
DM = detrend(M);
plot(DM);
plot(M-DM, ':');
b = 1/15*ones(15, 1);
smooth_DM = filter(b, 1, DM);
plot(smooth_DM, ':')
plot(M-DM, ':');
b = 1/15*ones(15, 1);
smooth_DM = filter(b, 1, DM);
plot(smooth_DM, ':')
legend('Stock Prices', 'Detrended Stock Prices', 'Trend', 'Smooth Detrended Line')
title('Stock Price') 
xlabel('Days')
ylabel('Price')
xlim([1 301]);
csvwrite('pattern.csv', smooth_DM)


% Problem 2 
clear
load 'accidents.mat'
hf1 = figure;
plot(hwydata(:, 14), hwydata(:, 4))
legend('Fatalities Per State')
title('Accidental Fatalities ') 
xlabel('State Population')
ylabel('Fatalities in State')

hf2 = figure;
histogram(hwydata(:, 9), 5)
title('Fatalities per 100K Licensed Drivers') 
xlabel('Number of Fatalties')
ylabel('Number of States')

h3 = figure;
load usapolygon 
patch(uslon, uslat, [1, 9, 8], 'Edgecolor', 'none');
hold on



