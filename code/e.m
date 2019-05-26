init
for i = 0:10000
    image(render(s));
    title(['iters count: ', num2str(i)]);
    pause(pausesec);
    s = r(s);
end