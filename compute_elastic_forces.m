function [ f ] = compute_elastic_forces(T, X, Y, Pe)

K = length(X);
N = length(T);
f = zeros(K,2);
for h=1:N
   % Triangles vertex indicies
   i = T(h,1);
   j = T(h,2);
   k = T(h,3);
   % Create outward unit normals
   f(i,:) = f(i,:) + elastic_force_in_node(i,j,k,X,Y,Pe{h})';
   f(j,:) = f(j,:) + elastic_force_in_node(j,i,k,X,Y,Pe{h})';
   f(k,:) = f(k,:) + elastic_force_in_node(k,j,i,X,Y,Pe{h})';
end

end

