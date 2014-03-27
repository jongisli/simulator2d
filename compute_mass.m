function [ m ] = compute_mass(T, X, Y, rho, centers)

K = length(X);
N = length(T);
m = zeros(K,1);
for h = 1:N
   i = T(h,1);
   j = T(h,2);
   k = T(h,3);
   
   m(i) = m(i) + compute_partial_mass(i,j,k, centers(h,1), centers(h,2), X, Y);
   m(j) = m(j) + compute_partial_mass(j,i,k, centers(h,1), centers(h,2), X, Y);
   m(k) = m(k) + compute_partial_mass(k,j,i, centers(h,1), centers(h,2), X, Y);
end

m = rho * m;

end

