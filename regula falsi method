clear all;
clc
syms x;
y = input('Enter non-linear equations: ');
a = input('Enter a value : ');
b = input('Enter b value: ');
e = 0.0001;
fa = eval(subs(y,x,a));
fb = eval(subs(y,x,b));
if fa*fb > 0 
    disp('Given initial values do not bracket the root.');
else
    c = a - (a-b) * fa/(fa-fb);
    fc = eval(subs(y,x,c));
    fprintf('\n\na\t\tb\t\tc\t\tf(c)\n');
    while abs(fc)>e
        fprintf('%f\t%f\t%f\t%f\n',a,b,c,fc);
        if fa*fc< 0
            b =c;
            fb = eval(subs(y,x,b));
        else
            a =c;
            fa = eval(subs(y,x,a));
        end
        c = a - (a-b) * fa/(fa-fb);
        fc = eval(subs(y,x,c));
    end
    fprintf('\nRoot is: %f\n', c);
end
