function cypher_text = EnCode(M, n, e) 
    key = ["00","01","02","03","04","05","06","07","08","09","10","11","12"........
        "13","14","15","16","17","18","19","20","21","22","23","24","25"];
    block_size = 6;
    
    M_new = double(M); % using ascii code to compare 
    
    long = length(M_new);
    
    for i = 1:long
        if (M_new(i)<90 && M_new(i) > 64)
            
            M_new(i) = M_new(i) - 65; % if capital
            
        end
        if(M_new(i)>96 && M_new(i) < 123)
            
            M_new(i) = M_new(i)- 97; % if lower case
        end
    end
    
    M_text = ones(1, 1);
    g = 1;
    for i = 1:3:(long)
            if(i+1 < long && i <long)
                
                M_text(g) = strcat(key(M_new(i)+1), key(M_new(i+1)+1), key(M_new(i+2)+1));
            end
            
            if(i > long) 
                break;
            end
            
            if(i+1>long) % adding x's
                M_text(g) = strcat(key(M_new(i)+1), key(24), key(24));
                break
            end
            
            if(i+2 > long) % adding x's
                M_text(g) = strcat(key(M_new(i)+1), key(M_new(i+1) + 1), key(24));
            
            end
            
            g = g + 1;
            
            
    end
    
    A = binary_convert(e);
    
    for i = 1:length(M_text)
        M_i = M_text(i);
       
        cypher_text(i) = modular_exp(M_i, n, A);
    end
    
    
end
    
    