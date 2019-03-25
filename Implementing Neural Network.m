% Esma Sert
% 1816091 - 12/02/2019
% Implementing Neural Network in Lab Week 4

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%
%Close all open figures
close all
%Clear the workspace
clear
%Clear the command window
clc
%Load dataset
load iris.dat
%Plot the three species of iris data, setosa, versicolor and virginica figure
gscatter(iris(:,1), iris(:,2), iris(:,5),'rgb','osd');
xlabel('Sepal length');
ylabel('Sepal width');
N = size(iris,1);
title('1: Setosa, 2: Versicolor, 3: Virginica');
%Prepare data for training and testing
%Shuffle iris data
random_iris = iris(randperm(size(iris, 1)), :)
%Transpose data so it can be used as input to the neural network
random_iris = random_iris';
%Split into training, target and testing sets
x = random_iris(1:4, 1:100); %training data
t = random_iris(5, 1:100); %target data
testData = random_iris(1:4, 101:150); %testing data
testTarget = random_iris(5, 101:150); %targets for test data
%Create a two-layer feed-forward network. The network has one hidden layer
% with 10 neurons. The training algorithm 'trainlm' is selected.
net = feedforwardnet(20, 'trainrp');
%Configure the network inputs and outputs to best match input and target
%data
net = configure(net, x, t);
%Evaluate the untrained network using the test data
%y1 is the actual output
y1 = net(testData);

%Calculate network performance of untrained network with random weights
perf1 = perform(net, y1, testTarget);
%Train the neural network (net) with inputs (x) and target (t)
net = train(net,x,t);
%Evaluate the trained network using the test data
% y2 is the actual output
y2 = net(testData);
%Calculate network performance of trained network
perf2 = perform(net,y2, testTarget)
figure
plot(testTarget)
hold on
plot(y2)
ylabel('Iris species');
xlabel('No. of instances');
legend('Predicted Output', 'Actual Output');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%

