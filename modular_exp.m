function x = modular_exp( b, m, A )
% The function implements the algorithm of modular exponentiation,
% returning the value of x = bˆn mod m, where b, m and n are positive
% integeres. The function’s output is x. Its input parameters are b, m,
% and A which holds the binary representation of n in a vector form.
% For example, if A = [1,0,0,0,1,1], then n = 2ˆ5+2ˆ1+2ˆ0 = 32+2+1=35
    x = 1;
    power = rem(b,m);
    for ii = length(A):-1:1
    if( A(ii) == 1 )
    x = rem( x*power, m);
    end
    power = rem( power*power, m);
    end
end
