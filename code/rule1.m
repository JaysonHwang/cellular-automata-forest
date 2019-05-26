% tree -> 0, burn -> 1, empty -> 2, t.b.c.-> 3
% numbering: 
% left -> #1, 
% up -> #2, 
% right -> #3, 
% down -> #4, 
% center -> #5
% rule: 
%
% case1:
% if one of #1, #2, #3, #4 is 1 (burning)
% then #5 (center) will be 1 (burning)
%
% case2:
% if #5 is 1 (burning)
% then #5 will be 2 (empty)
% 
% case3:
% if #5 is 2 (empty)
% then #5 will take a posibility become 0
% i.e. #5 will be t.b.c.
% state 't.b.c.' is for next stage evaluate

% rule1: spread, tree burns if its neibour burns.
function y=rule1(s)
    y = s;

    ly = y(:,[end,1:end-1]); % left neighbour  #1
    uy = y([end,1:end-1],:); % up neighbour    #2
    ry = y(:,[2:end,1]);     % right neighbour #3
    dy = y([2:end,1],:);     % down neighbour  #4
    y;                       % center          #5

    case1 = (ly == 1 | uy == 1 | ry == 1 | dy == 1) & y == 0;
    case2 = y == 1;
    case3 = y == 2;
     
    y(case1) = 1; % to ignite
    y(case2) = 2; % burn to the ground
end