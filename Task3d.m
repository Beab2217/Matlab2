figure("Name", "Graphics", "NumberTitle", "off");
subplot(3, 3, 1);
[X,Y] = meshgrid(-2:0.25:2);
Z = -X - Y;
surfc(X,Y,Z);

subplot(3, 3, 2);
F = 7 * sin(sqrt(X.^2+Y.^2))./(sqrt(X.^2+Y.^2));
plot3(X, Y, F);

subplot(3, 3, 3);
Z = (-X).*sin(X) - Y.*cos(Y);
mesh(X, Y, Z);

subplot(3, 3, 4);
Z = 13 * X.* (exp(1) ^(-X.^2 - Y.^2));
surf(X, Y, Z);

subplot(3, 3, 5);
alpha = -pi/2:0.01:pi/2;
betta = -pi/2:0.01:pi/2;
F1 = @(alpha, betta)cosh(alpha).*cos(betta);
F2 = @(alpha, betta)cosh(alpha).*sin(betta);
F3 = @(alpha, betta)sinh(alpha);
fsurf(F1, F2, F3);

subplot(3, 3, 6);
u = 0:0.01:2*pi;
v = -1/2:0.01:1/2;
[u, v] = meshgrid(u, v);
x = (1 + v.*cos(u/2)).*cos(u);
y = (1 + v.*cos(u/2)).*sin(u);
z = v.*sin(u/2);
mesh(x, y, z);

subplot(3, 3, 7);
r = -2:0.01:2;
betta = linspace(0, 2 * pi);
[betta, r] = meshgrid(betta, r);
x = r.*cos(betta);
y = r.*sin(betta);
z = 3./r;
plot3(x, y, z);

subplot(3, 3, 8);
a = 2 * pi;
[X, Y] = meshgrid(-1:0.01:1);
R = sqrt(X.^2+Y.^2);
F = (2*besselj(1, a*R(:))./R(:)).^2;
mesh(X, Y, reshape(F, size(X)));
set(gca, 'ZScale', 'Log');

subplot(3, 3, 9);
[X, Y, Z] = meshgrid(-3:0.1:3);
F =@(X, Y, Z) -(X.^2).*(Z.^3)-9*(Y.^2).*(Z.^3)./80+(X.^2+9/4*Y.^2+Z.^2-1).^3;
fimplicit3(F);
colormap('hot');



