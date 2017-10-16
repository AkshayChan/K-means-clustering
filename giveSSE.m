function SSE = giveSSE(X,C,k,idx)
    
    SSE = 0;
    [N D] = size(X);
    for c = 1:k
        for n = 1:N
            if(idx(n) == c)
                SSE = SSE + norm(X(n,:) - C(c,:)).^2;
            end
        end
    end
    
    SSE = SSE/N;
end
    
    