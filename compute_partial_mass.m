function [ m ] = compute_partial_mass(i,j,k, cx, cy, X,Y)

ij = [X(j) - X(i); Y(j) - Y(i)] / 2;
ik = [X(k) - X(i); Y(k) - Y(i)] / 2;
ic = [cx - X(i); cy - Y(i)];

m = 0.5*abs(det([ij ic])) + 0.5*abs(det([ik ic]));

end

