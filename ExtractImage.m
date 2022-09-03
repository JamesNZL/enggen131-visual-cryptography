function [extractedImage] = ExtractImage(embeddedImage)
% ExtractImage extracts an embedded black and white image from within a
% colour image
%
% Input: embeddedImage = a 3D array of uint8 values that contains a hidden
%                        black and white image
%
% Output: extractedImage = a 2D array of uint8 values of the hidden black
%                          and white image
%
% Author: jbao577

% 2D array where each element is the sum of the RGB layer values from
% embeddedImage
sumRGB = sum(embeddedImage, 3);

% If the sum of RGB values for an element is odd, the corresponding 
% extractedImage element will equal 0 * 255 = 0
%
% If the sum of the RGB values for an element is even, the corresponding 
% extractedImage element will equal 1 * 255 = 255
extractedImage(:,:) = uint8(~IsEven(sumRGB(:,:))) * 255;

end