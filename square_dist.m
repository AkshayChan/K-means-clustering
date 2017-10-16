function [ sq_dist] = square_dist(U, v)
%Compute 1*M row vector of square distances for M*N and 1*N data U and v,
%respectively

sq_dist = sum(bsxfun(@minus, U, v).^2, 2)';

end

