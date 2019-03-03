close all
clear all
clc

options=optimset('GradObj', 'on','MaxIter',10);
initialtheta=[0;0];
[optTheta,functionVal,exitFlag,output,grad,hessian]=fminunc(@costFunction,initialtheta,options)

function [jval,gradient]=costFunction(theta)
jval=(theta(1)-5)^2+(theta(2)-5)^2;
gradient=zeros(2,1);
gradient(1)=2*(theta(1)-5);
gradient(2)=2*(theta(2)-5);
end
