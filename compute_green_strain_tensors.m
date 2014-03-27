function [ Ee ] = compute_green_strain_tensors(Fe)

N = length(Fe);
Ee = cell(N,1);
I = eye(2);
for i=1:N
    Ee{i} = 0.5*(Fe{i}'*Fe{i} - I);
end

end
