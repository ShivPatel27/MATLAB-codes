%{
 || Cubic Spline Interpolation ||

    Pi = E from k=0 to m ( Cik * (x^k) )

    Pi = Ci0 + Cii * x + Ci2 * x^2 + Ci3 * x^3

Therefore:
        P0 = C00 + C01 * x + C02 * x^2 + C03 * x^3
        P1 = C10 + C11 * x + C12 * x^2 + C13 * x^3
        P2 = C20 + C21 * x + C22 * x^2 + C23 * x^3
        ..
        .. till Pi-1

For the polynomials Pi to match at touching points

    Pi(Xi+1) = Pi+1(xi+1) ---> There will be (n-1) iterations
    Pi(xi)=yi             ---> There will be n+1 iterations  } --> (2n
    Pi(xi+1) = yi+1       ---> There will be n-1 iterations  iterations)
    Pi'(xi+1) = Pi+1'(xi+1)--> There will be (n-1) iterations
            [4n-2 iterations are done]

                P0"(X0)=0 & Pn-1"(xn)=0
%}

clc
clear
close all