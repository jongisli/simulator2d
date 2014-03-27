function [ Pe ] = compute_1st_piola_kirchoff_stress_tensors(Fe,Se)

N = length(Fe);
Pe = cell(N,1);
for i=1:N
    Pe{i} = Fe{i}*Se{i};
end

end

