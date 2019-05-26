% p1 is the probability to strike
% p2 is the probability to born trees
function y=makerule(p1, p2)
    y = @(x) rule2(rule1(rule0(x, p1)), p2);
end