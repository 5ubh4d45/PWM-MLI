d = 0:0.01:1;
f = 0:5:200;

[D,F] = meshgrid(d,f);

V = 235;

L = 0.05;

I = D.* (1-D).* (V ./ (F/L));

surf(D, F, I)