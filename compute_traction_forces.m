function [ f ] = compute_traction_forces(indices, max_iter, iter, N)

f = zeros(N,2);
force = -5e6;

if iter < max_iter
    for i = indices
       f(i,2) = force;
    end
end

%waitforbuttonpress

end

