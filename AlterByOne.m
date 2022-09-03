function [output] = AlterByOne(input)
% AlterByOne adds 1 to a uint8 value in the range 0 to 255 inclusive
% (unless the value is 255, in which case it subtracts 1)
%
% Input: input = uint8 value to alter by 1
%
% Output: output = altered uint8 value
%
% Author: jbao577

% If input == 255, output will be input - 1 + 0
% If input < 255, output will be input - 0 + 1
output = input - uint8(input == 255) + uint8(input < 255);

end