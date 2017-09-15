A = [2*ones(4), zeros(4,3);eye(3,4), diag([1 2 3])]
% This line initializes a 7 x 7 matrix that combines the following four blocks:
% (1) a 4 x 4 matrix consisting of all twos, 
% (2) a 4 x 3 matrix consisting of all zeros,
% (3) a 3 x 4 identity matrix, and 
% (4) a 3 x 3 matrix with its diagonal set as [1 2 3].

A(1:3, 2:5)
% This line displays rows 1-3 and columns 2-5 of matrix A as one block.

A(4:end,4) 
% This line displays row 4-7 (end) and column 4 of matrix A as one block.

A(2,3)=7777 
% This line sets the value of matrix A at row 2, column 3 as 7777.

A(1,:)=8888 
% This line sets the values of matrix A at row 1, all columns as 8888.

A 
% This line displays matrix A.

help sum 
% This line displays a help menu describing the sum function with a definition and examples.

help prod
% This line displays a help menu describing the prod function with a definition and examples.

sum(A,1) 
% This line takes the sum of all of the columns and displays them in a 1 x 7 block.

% sum(A) 
% This line takes the sum of all of the columns and displays them in a 1 x 7 block.
% 1 is the default argument, denoting columns, while 2 denotes rows.
 
sum(sum(A)) 
% This lines takes the sum of all of the values in the matrix. First all the columns are summed up, and since % there are no columns left, it sums the one row in the resulting matrix. 

prod(B) 
% Variable B is not defined, so we cannot perform a function on it.

clear all 
% This line clears all values in all of the matrices.

x=-2:0.7:3 
% This line displays all the increments of 0.7 from -2.0 to 3.0 (the highest being 2.9) 

b=-1:-1:5 
% This line initializes a 1 x 0 empty double row vector 

x.^3 
% This line increments all the values in the vector to the power of 3 

x([1.2 4.8 end])
% You cannot take decimal subscript indices.
 
x(b)
% This line initializes a 1 x 0 empty double row vector

x=x([3:end 1:2]) 
% This line shuffles the vector such the the first two elements are placed at the end.

c=(abs(x)-x)/2 
% This line performs the function (abs(vectorvalue@index) ? vectorvalue@index)/2 on all values in the vector.

help find;find(x<0)
% Displays a help menu about the find function; finds the indices in the vector where the value is less than 0.

x<0 
% This create a 1x8 logical array that replaces the indices with a 1 if less than 0 and a 0 otherwise.

x(x<0) 
% This displays the values of the vectors that are less than zero in a filtered vector. 

sqrt(-3:2)
% Performs the square root function on all integers between -3 to 2 and displays them in a vector.  

whos ans
% This line displays statistics about ans: size, name, bytes, class, and attributes.
 
format long
% Changes the format of ans to long rather than double.
 
i *i*pi 
% Multiplies i * i * pi = -1 * pi = -3.141592653589793

z=0.3-i*0.1
% Performs 0.3 ? 0.1i = 0.300000000000000 ? 0.100000000000000i and assigns this value to z. 

i=-3;z=0.3-i*0.1
%  Assigns -3 to i, then performs 0.3 - 0.1 * i = 0.3 ? (-0.3) = 0.6. z is now equal to 0.600000000000000.
