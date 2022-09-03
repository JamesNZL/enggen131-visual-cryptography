function [cellArray] = ImageToPatterns(image)
% ImageToPatterns converts an image back into a cell array of 2x2 uint8
% patterns to facilitate pattern manipulation
%
% Input: image = a 2D array of uint8 values containing an image made up of
%                lots of black and white pixels
%
% Output: cellArray = a 2D cell array of 2x2 patterns extracted from the
%                     image
%
% Example call:
%   cellArray = ImageToPatterns(uint8([0 0 0 255; 255 255 255 0]))
%   This would return the 1x2 cell array {[0 0; 255 255]} {[0 255; 255 0]}
%
% Author: jbao577

% Find dimensions of input image
[rows, cols] = size(image);

% Create empty 2D cell array with half as many rows and columns
cellArray = cell(rows/2, cols/2);

% Loop through each row and column of cell array
for cellRow = 1:rows/2
    for cellCol = 1:cols/2
        % Extract pixels in groups of 4 (to make up a 2x2 pattern) from
        % image and store in the corresponding location in cellArray
        %
        % e.g. the pattern (2, 2) of cellArray consists of pixels (3, 3),
        % (3, 4), (4, 3), and (4, 4) of image
        cellArray{cellRow, cellCol} = image(2*cellRow-1:2*cellRow, 2*cellCol-1:2*cellCol);
    end
end

end