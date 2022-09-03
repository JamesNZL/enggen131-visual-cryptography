r = [3; 5; 1; 3; 1; 6; 5; 6; 5; 4; 2; 3];
p = CreatePatterns();
key = GenerateKey(r,p)
key{1,1} % note curly braces
% should have values
%   0   255
%   0	255