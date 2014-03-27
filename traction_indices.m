function [ indices ] = traction_indices(T,X,Y,scenario)

switch scenario
    case 'right-nudge'
        indices = X > 2.9 & Y > -0.6 & Y < 0.6;
    case 'middle-top-nudge'
        indices = X > -1 & X < 1 & Y > 0.8;
    case 'middle-whole-nudge'
        indices = X > -1 & X < 1;
    case 'right-inside-nudge'
        indices = X > 0 & X < 2 & Y > -0.6 & Y < 0.6;
    case 'right-top-nudge'
        indices = X > 0 & X < 2 & Y > 0.8;
    otherwise
        indices = [];
end
        
figure(2)
clf
triplot(T,X,Y)
axis equal;
for i = indices
   hold on
   plot(X(i), Y(i),'*b','LineWidth',2);
end
hold off

end

