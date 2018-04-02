function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);

num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% добавляем bias node
X = [ones(size(X,1),1) X];


% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Этот код становится достаточно понятным, если посмотреть на картинку нейронной сетки, которая в пдфке этого задания
% Сначала мы считаем a2, т.е. скрытый слой, перемножая X и theta1
% Потом итоговые значения слоя - a2=g(x*theta1), т.е. значения сигмоиды
% И так для каждого слоя, но при этом количество узлов меняется

z2 = X * Theta1';
a2 = sigmoid(z2);
% disp('a2 size');
a2 = [ones(size(a2,1),1) a2];
% disp(size(a2));

z3 = a2 * Theta2';
a3 = sigmoid(z3);
% после этого a3 имеет размер 5000 Х 10, т.е. каждвый пример хранит 10 вероятностей чисел
% мы выбираем максимальную из вероятностей и назначаем индекс этой максимальной вероятности(т.к. мы угадываем каоке число на картинке)
% в итоге в p имеет размер 5000 X 1, где каждая строка - индекс максимальной вероятности предсказывания числа
% В нашем случае индекс совпадает с числом, которое мы предполагаем изображено на пикче
[values p] = max(a3,[],2);
% =========================================================================


end
