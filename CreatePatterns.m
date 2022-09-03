function [patterns] = CreatePatterns()
% CreatePatterns creates a 1D cell array containing 6 special 2x2 patterns
% of uint8 values to be used for key generation
%
% Input: none
%
% Output: patterns = a 1x6 cell array of 2x2 uint8 arrays, each
%                    representing a pattern for key generation
%
% Author: jbao577

% Define 'master' patterns, from which complements can be derived
pattern1 = uint8([255, 255; 0, 0]);
pattern3 = uint8([0, 255; 0, 255]);
pattern5 = uint8([0, 255; 255, 0]);

% Store master and complements-of-master patterns in output cell array
patterns = {pattern1, ImageComplement(pattern1), pattern3, ...
    ImageComplement(pattern3), pattern5, ImageComplement(pattern5)};

end