% K-Means clustering Testing;
k = 8; D = 3072;
initialCentres = zeros(k,D);
Centres = zeros(k, D);
SSEvalues = zeros(30,1); 
for i = 1 : 30
    for j = 1 : 8
        initialCentres(j,:) = abs(rand(1,D));
    end
    
    [Centres idx SSEvalues(i)] = MyKmeans(train_x,k,initialCentres,10);
    
end


    
    
    
    


