% Feedforward Neural Network

x = data_training(:,1:end-1)';
t = data_training(:,end)';

% squared error
%perf = perform(net,y,t)

target_t = [];
for i=1:8000
    if t(i) == 1
        target_t = [target_t; 1 0];
    else
        target_t = [target_t; 0 1];
    end
end

% FFNN for classification with one hidden layer of size 10.
net = patternnet([36 24], 'trainscg');

net.performFcn = 'crossentropy';
net.performParam.regularization = 0.01;
net.performParam.normalization = 'none';

% train
net = train(net,x,target_t');

view(net)

% targets
y = net(x);



