clc;clear;close all;
%Load into theWorkspacethe matrices contained in the filematricesPr9.mat.
% This file can be found in the folderData Sets
load matricesPr9.mat
%3 Create a function "adalineOutput(X,w)”
%4Use your functionadalineOutputt compute the predictions of an ADA-LINE 
% with weight vector
w=[-2;5];
yhat=adalineOutput(X(1:4),w);
display(yhat);
%5 Create a function "adalineLearning(X,y,w_ini,gamma,goal_error)”
%6Use your functionadalineLearningwith learning rategamma=0.2 and 
% goal error of 2
x1=[-1,-1;-1,2;0,0;1,0;1,-1;3,0];
y1=[1;3;2;2;2;3];
w_ini=[0;0;0];
gamma=0.2;
goal_error=2;
W_values=adalineLearning(x1,y1,w_ini,gamma,goal_error);
display(W_values);
%7 download the Excel file "Concrete\_Data.xls"
%8 Concrete_Data.xlsin a matrix you will call "dataC”.
dataC=xlsread('Concrete_Data.xlsx');
%9 Form matrices "X_concrete” and “y_concrete”
X_concrete=dataC(:,1:8);
y_concrete=dataC(:,9);
%10 Use your functionadalineLearningon this data, 
% with learning rategamma= 0.000001 and a goal error of 8200
gamma1=0.000001;
goal_error1=82000;
I=1:9;
w_inio(I,1)=0.005;
display(w_inio);
W_values1=adalineLearning(X_concrete,y_concrete,w_inio,gamma1,goal_error1);
% 11 Use your functionadalineLearningon the matrixXand the vectorythatyou 
% loaded in numeral 2, with learning rate gamma=0.01 and a goal errorof 21
gamma2=0.01;
goal_error2=21;
w_ini2=[0.1;0.1];
W_values2=adalineLearning(X,y,w_ini2,gamma2,goal_error2);
%12 Plot the data together with the models given by the weightvectors 
% num-ber 1, 75, 149 and 373 (contained inW_values) and arrange them 
% in a 2×3array usingsubplot
%w1
x_plot=linspace(-2,2,100);
x_plot=x_plot.';
w1=W_values2(1,:);
w1=w1.';
display(w1);
a1=subplot(2,2,1);
yhat_plot=adalineOutput(x_plot,w1);
scatter(X,y);
hold on;
plotw1=plot(a1,x_plot,yhat_plot);
title(a1,' plot W1 ')
%hold off;
%w75
w75=W_values2(75,:);
w75=w75.';
display(w75);
a2=subplot(2,2,2);
yhat_plot1=adalineOutput(x_plot,w75);
scatter(X,y);
hold on;
plotw75=plot(a2,x_plot,yhat_plot1);
title(a2,' plot W75 ')
%hold off;
%w149
w149=W_values2(149,:);
w149=w149.';
display(w149);
a3=subplot(2,2,3);
yhat_plot2=adalineOutput(x_plot,w149);
scatter(X,y);
hold on;
plotw149=plot(a3,x_plot,yhat_plot2);
title(a3,' plot W149 ')
hold off;
%w373
w373=W_values2(373,:);
w373=w373.';
display(w373);
a4=subplot(2,2,4);
yhat_plot3=adalineOutput(x_plot,w373);
scatter(X,y);
hold on;
plotw373=plot(a4,x_plot,yhat_plot3);
title(a4,' plot w373')



















