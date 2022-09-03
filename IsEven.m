function [isEven] = IsEven(number)
% IsEven checks whether an input number is even.
%
% Input: number = the number for which to determine its parity
%
% Output: isEven = a logical representing the parity of the input number,
%                  i.e. 1 = even, 0 = odd
%
% Author: jbao577

% Use mod() to calculate the remainder of number / 2, and convert into a
% logical mapped to the desired behaviour of 1 = even, 0 = odd
isEven = logical(1 - mod(number, 2));

end