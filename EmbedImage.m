function [embeddedImage] = EmbedImage(greyscaleImage, colourImage)
% EmbedImage is used to embed a binary image inside another colour image
% (i.e. a 3D array of uint8 values representing an RGB image)
%
% Inputs: greyscaleImage = a 2D array of uint8 values of the B&W image
%         colourImage = a 3D array of uint8 values of the colour image
%
% Output: embeddedImage = a 3D array of uint8 values that contains a hidden
%                         black and white image
%
% Author: jbao577

% Find dimensions of greyscale image
[rows, cols] = size(greyscaleImage);

% Initially, set embeddedImage to be exactly the same as colourImage
embeddedImage = colourImage;

% 2D array of the sum of the RGB layer values for each pixel in colourImage
sumRGB = sum(colourImage, 3);

% Loop through all rows and columns of the greyscale image
for i = 1:rows
    for j = 1:cols
        %% Check if the red pixel in the colour image needs to be altered
        % Check if the pixel is black, AND the sum of RGB values is odd
        isPixelBlackAndSumOdd = greyscaleImage(i, j) == 0 && ~IsEven(sumRGB(i, j));
        % Check if the pixel is white, AND the sum of RGB values is even
        isPixelWhiteAndSumEven = greyscaleImage(i, j) == 255 && IsEven(sumRGB(i, j));
        
        if (isPixelBlackAndSumOdd || isPixelWhiteAndSumEven)
            % If the red pixel needs to be altered, use AlterByOne() and
            % store the result in embeddedImage
            embeddedImage(i, j, 1) = AlterByOne(colourImage(i, j, 1));
        end
    end
end

end