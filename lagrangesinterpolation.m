clc;
clear all;
close all;
fprintf('\n**********************************************************');
n = input('\n Enter no. of data points (n) = ');
for i=1:n
    fprintf('\n X(%d)=',i);
    x(i)=input('');
    fprintf('Y(%d)=',i);
    y(i)=input('');
end
xg=input('\n Enter Xg for which yg is required = ');
yg=0;
for i=1:n
    Lx(i)=1;
    for j=1:n
        if i~=j
            Lx(i)=Lx(i)*(xg-x(j))/(x(i)-x(j));
        end
    end
    yg=yg+Lx(i)*y(i);
end
% Print Lx(i) values
fprintf('\n Lx(i) table>>>');
for i=1:n
    fprintf('\n Lx(%d) = %f',i,Lx(i));
end
fprintf('\n\n Yg = %f at Xg = %f',yg,xg);
