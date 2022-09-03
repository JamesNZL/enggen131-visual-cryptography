function [cipherArray] = EncryptImage(image, keyArray)
% EncryptImage encrypts a plain image using a key array of patterns to
% obtain an encrypted cipher array of patterns
%
% Inputs: image = a 2D array of uint8 values containing the black and white
%                 image plain image to encrypt
%         keyArray = a 2D cell array of 2x2 patterns to act as a key array
%
% Output: cipherArray = a 2D cell array of 2x2 patterns, which is the
%                       cipher array of patterns
%
% Author: jbao577

% Find the dimensions of input image
[rows, cols] = size(image);

% Initially, set cipherArray to be equal to keyArray
cipherArray = keyArray;

% Now, loop through all pixels in image
for i = 1:rows
    for j = 1:cols
        % If the pixel value is dark, we need to store the complement of
        % the corresponding pattern
        if (image(i, j) < 128)
            cipherArray{i, j} = ImageComplement(keyArray{i, j});
        end
    end
end

end