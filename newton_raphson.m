clear all;
clc
syms x;
y = input('Enter non-linear equations: ');
a = input('Enter initial guess: ');
e = 0.0001;
N = input('Enter maximum number of steps: ');
step = 1;
g = diff(y,x);
fa = eval(subs(y,x,a));
while abs(fa)> e
    fa = eval(subs(y,x,a));
    ga = eval(subs(g,x,a));
    if ga == 0
        disp('Division by zero.');
        break;
    end   
    b = a - fa/ga;
    fprintf('step=%d\ta=%f\tf(a)=%f\n',step,a,fa);
    a = b;
    
    if step>N
       disp('Not convergent'); 
       break;
    end
    step = step + 1;
end
fprintf('Root is %f\n', a);
