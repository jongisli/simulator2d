function [ Fe ] = compute_deformation_gradients(T, X, Y, D0_inv)

N = length(T);
D_deformed = triangle_coordinates(T, X, Y, 0);
Fe = cell(N,1);
for i = 1:N
    Fe{i} = D_deformed{i}*D0_inv{i};
    %Fe{i} = [1 0; 0 1];
end

end

