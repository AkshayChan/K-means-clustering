function [mean] = MyMean(X)
    [M N] = size(X);
    mean = zeros(1, N);
    for i=1:N
        for j= 1:M
            mean(i) = mean(i) + X(j,i);
        end
        mean(i) = mean(i)/M;
    end
end

