function [image] = PatternsToImage(cellArray)
% PatternsToImage takes a cell array of 2x2 uint8 patterns and converts it
% to a single 2D uint8 array for use as a greyscale image
%
% Input: cellArray = a 2D m x n cell array of 2x2 patterns
%
% Output: image = a 2D array of uint8 values with the pixels assembled into
%                 a single image, of dimensions 2m x 2n
%
% Author: jbao577

% Find dimensions of input cell array
[rows, cols] = size(cellArray);

% Create empty 2D array with twice as many rows and columns of type uint8
image = zeros(2*rows, 2*cols, 'uint8');

% Loop through each row and column of input cell array
for cellRow = 1:rows
    for cellCol = 1:cols
        % Now, loop through rows and cols [1, 2] for each 2x2 pattern
        for imgRow = 1:2
            for imgCol = 1:2
                % Extract the pattern stored as the {cellRow, cellCol}
                % element of cellArray, then extract the single pixel
                % stored in (imgRow, imgCol) and store it in its
                % corresponding location in image
                %
                % e.g. the pixel (3, 4) of image comes from pixel (1, 2) of
                % pattern {2, 2} of cellArray
                image((2*cellRow)-(2-imgRow), (2*cellCol)-(2-imgCol)) = cellArray{cellRow, cellCol}(imgRow, imgCol);
            end
        end
    end
end

end