% Hand-Written Digit Recognition
% copyright © 2013 Dhruv Kohli, 
%                  B.Tech Mathematics and Computing,
%                  Indian Institute Of Technology, Guwahati

function prediction = hdr_lr(imgMatrix)

% Check for invalid image
if(size(imgMatrix,1)!=20||size(imgMatrix,2)!=20)
fprintf("Invalid Image!");
end

if(size(imgMatrix,1)==20&&size(imgMatrix,2)==20)
imgMatrix=double(imgMatrix);
imgMatrix=reshape(imgMatrix,1,400);

% Setting up parameters 
input_layer_size = 400;
num_labels = 10;

% ========= Learning From Given Data To Get Weights ===========
% ======== 1.Loading And Visualizing Some of the Data ========

% Load Data To Train Machine

fprintf('Loading and Visualizing Training Data ...\n');

load('trainData.mat');
% train data is stored in Matrix X and vector y

m = size(X,1); % Number of Rows of X

% Displaying some data to give some insight to train data
rand = randperm(m);
onscreen = X(rand(1:100),:);

displayData(onscreen);

fprintf('Program paused. Press enter to continue.\n');
pause;

% ======= 2.Performing Logistic Regression To Get Weights ======

fprintf('\n Training Machine using Logistic Regression \n');

reg_param = 0.1;

[theta_final] = lrOneVsAll(X, y, num_labels, reg_param);

fprintf('Program paused. Press enter to continue.\n');
pause;

% ======= 3. Predicting the Digit On Image ==========

pred = predictOneVsAll(theta_final, X);

fprintf('\n Accuracy of this system/program : %f\n',mean(double(pred == y))*100);

prediction = predictOneVsAll(theta_final, imgMatrix);

fprintf('\nThe Predicted Digit : %f\n',prediction);

end
end




