function p = predictOneVsAlp(all_theta, X)
%PREDICT Predict the label for a trained one-vs-all classifier. The labels
%are in the range 1..K, where K = size(all_theta, 1).
%  p = PREDICTONEVSALp(all_theta, X) will return a vector of predictions
%  for each example in the matrix X. Note that X contains the examples in
%  rows. all_theta is a matrix where the i-th row is a trained logistic
%  regression theta vector for the i-th class. You should set p to a vector
%  of values from 1..K (e.g., p = [1; 3; 1; 2] predicts classes 1, 3, 1, 2
%  for 4 examples)

m = size(X, 1);
num_labels = size(all_theta, 1);
disp('num_labels:');
disp(num_labels);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);
disp('p size:');
disp(size(p));

% Add ones to the X data matrix
X = [ones(m, 1) X];
disp('X has size');
disp(size(X));

disp('All_thetha has size');
disp(size(all_theta));
% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters (one-vs-all).
%               You should set p to a vector of predictions (from 1 to
%               num_labels).
%
% Hint: This code can be done all vectorized using the max function.
%       In particular, the max function can also return the index of the
%       max element, for more information see 'help max'. If your examples
%       are in rows, then, you can use max(A, [], 2) to obtain the max
%       for each row.
%

% Такой колхоз ппц

for i=1:m
  max = -1;
  maxI = -1;
  for j=1:num_labels
    temp = sigmoid(X(i,:) * all_theta(j,:)');
    if temp >= max
      max = temp;
      maxI = j;
    endif
  end
  p(i) = maxI;
end
% disp(p(4800:4810));

% =========================================================================


end
