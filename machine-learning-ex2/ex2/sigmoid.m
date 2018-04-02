function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.

% You need to return the following variables correctly
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
close;
hold on;
for i=1:rows(z)
  for j=1:columns(z)
    point = 1/(1 + e^(-z(i,j)));
    g(i,j) = point;
    plot(z(i,j) , point);
  end;
end;

hold off;
% =============================================================

end
