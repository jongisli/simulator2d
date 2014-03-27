function [ Se ] = compute_2nd_piola_kirchoff_stress_tensors(Ee, lambda, muj)

N = length(Ee);
Se = cell(N,1);
I = eye(2);
for i=1:N
    Se{i} = lambda*trace(Ee{i})*I + 2*muj*Ee{i};
end

end

