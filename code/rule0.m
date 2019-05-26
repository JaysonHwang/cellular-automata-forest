
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

% rule0: lightning strike, a tree takes 
% probability p become burning state
function y=rule0(s, p)
    y = s;
    t = y == 0;
    pd = makedist('Binomial', 'N', 1, 'p', p);
    y(find(t)) = random(pd, sum(sum(t)), 1);
end



