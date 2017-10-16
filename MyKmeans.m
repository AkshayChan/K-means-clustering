function [C, idx, SSE] = MyKmeans(X, k, initialCentres, maxIter)
%The k-means clustering algoirthm for the data that gives the SSE at each iteration 

[N D] = size(X);
Dis = zeros(k, N);

idx_prev = zeros(1, N);
C = initialCentres;

for i = 1:maxIter 
    for c = 1:k
        Dis(c, :) = square_dist(X, C(c, :));
    end
    
    [Ds, idx] = min(Dis);
    
    for c = 1:k
        if( sum(idx==c)==0 )
            warn('k-means: cluster %d is empty', c);
        else
            C(c, :) = MyMean(X(idx==c, :));
        end
    end
    
    fprintf('\n[%d] Iteration: ', i)
   
    if(sum(abs(idx-idx_prev))==0)
        break;
    end
    
    idx_prev = idx;
    SSE = giveSSE(X,C,k,idx);
    SSE
    
end

