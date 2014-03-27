function [ f ] = compute_traction_forces(T, X, Y, max_iter, iter)

scenario = 'middle-nudge';
N = length(X);
f = zeros(N,2);
force = -5e6;

if iter < max_iter
    switch scenario
        case 'right-nudge'
            indices = X > 2.9 & Y > -0.6 & Y < 0.6;
        case 'middle-nudge'
            indices = X > -1 & X < 1 & Y > 0.8;
        case 'middle-whole-nudge'
            indices = X > -1 & X < 1;
        case 'right-inside-nudge'
            indices = X > 0 & X < 2 & Y > -0.6 & Y < 0.6;
    end
    figure(2)
    clf
    triplot(T,X,Y)
    axis equal;
    hold on
    for i = indices
       f(i,2) = force;
       plot(X(i), Y(i),'*b','LineWidth',2);
    end
    hold off
end

%waitforbuttonpress

end

