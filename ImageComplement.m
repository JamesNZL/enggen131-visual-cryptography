function [complement] = ImageComplement(original)
% ImageComplement takes an image and swaps black for white, and white for
% black
%
% Input: original = original image to invert
%
% Output: complement = completment of original image
%
% Author: jbao577

% Calculate the complement (inverse) of each original pixel and store in
% complement
complement(:,:) = 255 - original(:,:);

end