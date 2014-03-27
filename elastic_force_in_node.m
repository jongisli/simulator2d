function [ f ] = elastic_force_in_node(i,j,k,X,Y,P)

ij = [X(j) - X(i); Y(j) - Y(i)];
ik = [X(k) - X(i); Y(k) - Y(i)];
nij = [ij(2); -ij(1)] / norm([ij(2); -ij(1)]);
nik = [ik(2); -ik(1)] / norm([ik(2); -ik(1)]);

% Make sure its the outward normal
if nij'*ik > 0
   nij = -nij;
end
if nik'*ij > 0
   nik = -nik;
end

f = -0.5 * P * nij * norm(ij) - 0.5 * P * nik * norm(ik); 

% Plot to check normals are outward
% hold on
% plot(X(i), Y(i),'*r','LineWidth',2);
% plot(X(j), Y(j),'*g','LineWidth',2);
% plot(X(k), Y(k),'*g','LineWidth',2);
% q1 = quiver(X(i)+ij(1)/2, Y(i)+ij(2)/2, nij(1), nij(2));
% q2 = quiver(X(i)+ik(1)/2, Y(i)+ik(2)/2, nik(1), nik(2));
% 
% waitforbuttonpress
% 
% plot(X(i), Y(i),'*b','LineWidth',2);
% plot(X(j), Y(j),'*b','LineWidth',2);
% plot(X(k), Y(k),'*b','LineWidth',2);
% 
% delete(q1);
% delete(q2);
% 
% hold off
end

