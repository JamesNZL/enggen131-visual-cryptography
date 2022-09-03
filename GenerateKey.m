function [key] = GenerateKey(indexes, patterns)
% GenerateKey assembles a 2D cell array to act as a key, where each array
% element is a 2x2 uint8 pattern selected at random
%
% Inputs: indexes = a 2D m x n array of random integer values between
%                   1 and 6 inclusive
%         patterns = a 1x6 1D cell array containing 6 patterns
%
% Output: key = a 2D m x n cell array containing patterns to act as a key
%
% Author: jbao577

% Calculate dimensions of input 2D array
[rows, cols] = size(indexes);

% Create empty cell array of matching dimensions
key = cell(rows, cols);

% Loop through each element of the 2D array
for i = 1:rows
    for j = 1:cols
        % Use the index stored in the ith row and the jth column of the
        % indexes array to determine which pattern to store in the
        % corresponding location in the key cell array
        key{i, j} = patterns{indexes(i, j)};
    end
end

end