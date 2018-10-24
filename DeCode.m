function message = DeCode(Code, n, d)
   
    A = binary_convert(d); % to use in modular exponentiation 
    p = 1; % to increment arrays later
   
    range = length(Code); % for brevity
    
    for i = 1:range 
        M(i)= double(modular_exp(sym(Code(i)), n, A)); % decoding to get the message
        size(i) = floor(log10(M(i))) + 1; % determining who many digits per block
        x = str2double(regexp(num2str(M(i)),'\d','match')); % to break the integer.....
        % in to individually accessible digits.
        
        if size(i) ~= 6 % if we need to insert a 0
           x = {0, x(1), x(2), x(3), x(4), x(5)}; % insert a 0 if needed
           for g = 1:2:6
            letter = string(x(g))+string(x(g+1)); % looking at the two digit number ex('02')
            value = double(letter) + 65; % using ASCII code in accordance with our key
         
             message(p) = char(value); % putting all the values together in a message
             p = p+1; % increment the array
           end
           
        else
            
          for g = 1:2:6
              
            letter = string(x(g))+string(x(g+1)); % looking at the two digit number
            value = double(letter) + 65; % using ascii code in accordance with our key
         
             message(p) = char(value); % putting together the letters of the message
            
             p = p+1; % increment the array
            
           end
        
        end
        
    end

end
