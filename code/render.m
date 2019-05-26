% tree -> 0, burn -> 1, empty -> 2, t.b.c.-> 3
function yrgb=render(x)

    green = [112 161 101];
    land=[199 156 89];
    fire = [255 43 32];
    
    r = x;
    g = x;
    b = x;
    
    r(x==0) = green(1);
    g(x==0) = green(2);
    b(x==0) = green(3);
    
    r(x==1) = fire(1);
    g(x==1) = fire(2);
    b(x==1) = fire(3);
    
    r(x==2) = land(1);
    g(x==2) = land(2);
    b(x==2) = land(3);
    
    yrgb(:,:,1) = r;
    yrgb(:,:,2) = g;
    yrgb(:,:,3) = b;
    yrgb = uint8(yrgb);
    
end