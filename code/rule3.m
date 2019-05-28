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
%
% rule3: delimit, edge's block are always land
% so that fire can't spread across map's edge

function y = rule3(x)
    y = x;
    y(:, 1) = 2;
    y(:, end) = 2;
    y(1, :) = 2;
    y(end, :) = 2;
end