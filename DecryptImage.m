function [decryptedImage] = DecryptImage(cipherImage, keyImage)
% DecryptImage decrypts a cipher image using the key image
%
% Input: cipherImage = a 2D array of uint8 values containing the B&W cipher
%                      image
%        keyImage = a 2D array of uint8 values containing the B&W key image
%
% Output: decryptedImage = a 2D array of uint8 values containing the
%                          decrypted image
%
% Author: jbao577

% If the corresponding elements of cipherImage and keyImage are equal, the
% matching element of decryptedImage will equal 1 * 255 = 255
%
% If the corresponding elements of cipherImage and keyImage are not equal,
% the matching element of decryptedImage will equal 0 * 255 = 0
decryptedImage(:,:) = uint8(cipherImage(:,:) == keyImage(:,:)) * 255;

end