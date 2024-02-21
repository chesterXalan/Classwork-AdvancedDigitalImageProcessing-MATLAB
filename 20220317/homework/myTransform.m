function res = myTransform(img, shear, rot_rad)
[R, C] = size(img);
res = zeros(R, C, 'uint8');

shx = shear(1);
shy = shear(2);
tras1 = [1          shy         0
        shx         1           0
        0           0           1];

alfa = rot_rad * pi / 180.0;
tras2 = [cos(alfa)  -sin(alfa)  0
        sin(alfa)   cos(alfa)   0
        0           0           0];

for i = 1:R
    for j = 1:C
        temp = [i; j; 1];
        temp = tras1 * temp;
        temp = tras2 * temp;
        x = uint16(temp(1));
        y = uint16(temp(2));

        if (x <= R) && (y <= C) && (x >= 1) && (y >= 1)
            res(i, j) = img(x, y);
        end
    end
end
end