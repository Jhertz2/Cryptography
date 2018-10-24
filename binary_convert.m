% Part 2: Converting D to a binary representation
function A = binary_convert(d)        
        i = double(ceil(log2(d))); % to create the max size of the array (neccessary binary digits)
        
        A = zeros(1, i);
        z = 1; % to increment our array
        temp = d; % to be used for a boolean comparison
        while (z ~= (length(A) + 1) )
            
            
            i = i-1;
            
            
            if (temp-2^i < 0) % if the number is too large, we don't include its binary value
                A(z) = 0; % set binary place to a 0
                
            end
            if(temp-2^i >= 0) % if number is not too large, we do include its binary value
                A(z) = 1; % set binary place to a 1
                temp = temp - 2^i; % move on to the next lowest value
            end
            z = z +1;
        end
end