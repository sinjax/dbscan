function [ sim ] = simnorm( A , distance)
%SIMNORM normalised similarity of m items
%   Use pdist to get the pairwise distance

if nargin < 2
    distance = 'euclidean';
end

dist = squareform(pdist(A,distance));

% normalise
mindist = min(min(dist));
maxdist = max(max(dist));

dist = (dist - mindist) / (maxdist - mindist);

sim = 1 - dist;

end

