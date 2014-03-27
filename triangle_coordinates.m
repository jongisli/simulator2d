function [ D ] = triangle_coordinates(T, X, Y, inv_bool)

N = length(T);
D = cell(N,1);
for h = 1:N
    % Triangles vertex indicies
    i = T(h,1);
    j = T(h,2);
    k = T(h,3);
    % Triangle vectors
    Gji = [X(j) - X(i); Y(j) - Y(i)];
    Gki = [X(k) - X(i); Y(k) - Y(i)];
    
    if inv_bool == 1
        D{h} = inv([Gji Gki]);
    else
        D{h} = [Gji Gki];
    end
    
end

end


% hold on
% plot(X(i), Y(i),'*r','LineWidth',2);
% plot(X(j), Y(j),'*g','LineWidth',2);
% plot(X(k), Y(k),'*y','LineWidth',2);
% 
% waitforbuttonpress
% 
% plot(X(i), Y(i),'*b','LineWidth',2);
% plot(X(j), Y(j),'*b','LineWidth',2);
% plot(X(k), Y(k),'*b','LineWidth',2);
