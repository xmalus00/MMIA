clc
clear all
close all

reading = csvread('ntc.csv');
AD = reading(:,2);
temperature = reading(:,1);

ADval = 1023.*(AD./(AD+10));

figure
plot(ADval,temperature,'o');
hold on

 p=polyfit(ADval,temperature,10);

ad2=0:1023;
t2 = round(polyval(p,ad2),1);


plot(ad2,t2,'r');

hold on
xlabel('ADC value') 
ylabel('Temperature [°C]') 

dlmwrite('data.dlm', t2*10,',');






