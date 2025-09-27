clc
clear
close all

X=rescale(rgb2gray(imread('Interpolation_IMG.png')));
figure();
imshow(X);

%{

row_size=size(X,1);
col_size=size(X,2);
t=linspace(1,row_size,row_size*d);
m=numel(t);
r1=1:1:row_size;
result=zeros(numel(t),numel(t));
f_result=1:1:m;
p=1;

for x=1:row_size
    r=X(x,:);
    if p==m
        break;
    else
    for y=1:m
        for k = 1:m
            l = t(k);
            f= 0;
            for i = 1:row_size
                L = 1;
                for j = 1:row_size
                    if i ~= j
                        L= L*(l-r1(j))/(r1(i)-r1(j));
                    end
                end
                f = f + r(i) * L;
            end
            f_result(k)=f;
        end
        result(p,y)=f_result(1,y);
        
    end
    p=p+1;
    end
end

figure;
imshow(result);
%f_star=f(1)+((x-th(1))/(th(2)-th(1)))*(f(2)-f(1));
%}




