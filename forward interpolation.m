clc;
 clear all;
 close all;
fprintf('\n************************************************************');
n = input('\nEnter number of data points = ');
h = input('\nEnter step size (h) = ')
x(1) = input('\nx0 = ');
y(1) = input('y0 = ');
for i=2:n
    x(i)=x(i-1)+h;
    fprintf('\nX%d = %f',i,x(i));
    fprintf('\t\tY%d: ',i);
    y(i) = input('');
end
x_reqd = input('\nEnter X for which value of Y is sought: ');
s=(x_reqd-x(1))/h;
for i=1:n
    diff(i,1)=y(i);
end
% Calculate Forward Differance Table
for j=2:n
    for i=1:n-j+1
        diff(i,j)=diff(i+1,j-1)-diff(i,j-1);
    end
end
% Print Forward Differance Table
fprintf('\n\tX\t     Forward Differance Table');
for i=1:n
    fprintf('\n %.4f',x(i));
    for j=1:n-i+1
        fprintf('\t%.4f',diff(i,j));
    end
end
a=y(1);
for i=1:n-1
    term=1;
    for j=1:i
        term=term*(s+j-1)/j;
    end
    a=a+term*diff(1,i+1);
end
fprintf('\n\n\n Value of Y at(X=%f) = %f',x_reqd,a);
