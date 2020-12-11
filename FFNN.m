% Feedforward Neural Network
% We will combine training and testing in the same variable


x = [data_training(:,1:end-1); data_testing(:,1:end-1)]';
t = [data_training(:,end); data_testing(:,end)]';


target_t = [];
for i=1:10000
if t(i) == 1
target_t = [target_t; 1 0]; % stable
else
target_t = [target_t; 0 1]; % unstable
end
end


% FFNN for classification with one hidden layer of size 10.
net = patternnet([36 24], 'trainscg');

% performance function (loss function)
net.performFcn = 'crossentropy';
net.performParam.regularization = 0.01;
net.performParam.normalization = 'none';

% training, testing and validation are 0.7, 0.15 and 0.15.
net.divideFcn= 'divideind'; % divide the data manually
net.divideParam.trainInd= 1:6400; % training data indices 80% from training
net.divideParam.valInd= 6400:8000; % validation data indices 20% from training
net.divideParam.testInd= 8001:10000;  % testing data indices from testing dataset

% train
net = train(net,x,target_t');
            
view(net)

% targets
y = net(x);
            
            
            
