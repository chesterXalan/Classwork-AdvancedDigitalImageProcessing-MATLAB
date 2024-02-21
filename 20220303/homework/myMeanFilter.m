function result = myMeanFilter(img, parm)
[r, c] = size(img);
result = zeros(r, c, 'uint8');
offset = (parm-1) / 2;

for i = 1+offset:r-offset
    for j = 1+offset:c-offset
        mask = img(i-offset:i+offset, j-offset:j+offset);
        value = mean(mean(mask));
        result(i, j) = value;
    end
end
end
