clear;
load('/afs/inf.ed.ac.uk/group/teaching/inf2b/cwk2/d/s1558717/train_data.mat')
load('/afs/inf.ed.ac.uk/group/teaching/inf2b/cwk2/d/s1558717/test_data.mat')
train_x = double(train_x)/256;
train_x = reshape(train_x,size(train_x,1),[]);
[C, idx, SSE] = MyKmeans(train_x, 8, train_x(1:8,:), 10);

num = size(train_x, 1);
confMat = zeros(8);
for i = 1:num
    confMat(train_y(i), idx(i)) = confMat(train_y(i), idx(i))+1;
end

save('result_C.mat','C');
save('result_confusion_matrix.mat','confMat');