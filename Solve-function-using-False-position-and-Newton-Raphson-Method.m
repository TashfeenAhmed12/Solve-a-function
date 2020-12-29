a) False postion Method

xin1=2;
xin2=3;
tol=10^-4;
error=tol +1;
a= xin1;
b=xin2;
i=1;
max_iterations=100;
c=zeros(1,2);
c(1)=0;
while error >= tol
    i=i +1;
    if i>=max_iterations
        break
    end
    f_a=2.718281828459046^a +a^3 -9*a -1;
    f_b=2.718281828459046^b +b^3 -9*b -1;
    c(i)=b -f_b*(b-a)/(f_b-f_a);
    if f_a*f_b <0
        b=c(i);
    else
        a=c(i);
    end
    error=abs(c(i)-c(i-1));
    r=[c(end) error]
end

b) Newton Raphson Method

xin1=2;
xin2=0;
tol=10^-4;

max_iterations=100;
error=1;
i=1;
x=zeros(1,2);
x(1)=xin1;
while error >= tol
    i= i+1;
    if i >= max_iterations
        break
    end
    f_val_nr=2.718281828459046^x(i-1)+x(i-1)^3-9*x(i-1)-1;
    df_nr=2.718281828459046^(i-1)+3*x(i-1)^2-9;
    x(i)=x(i-1) -f_val_nr/df_nr;
    error=abs(x(i) - x(i-1));
    r = [x(end) error]
end
