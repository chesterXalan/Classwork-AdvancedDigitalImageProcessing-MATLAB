function result = myHybridMedianFilter(img)
[r, c] = size(img);
result = zeros(r, c, 'uint8');
img = padarray(img, [1 1], 'replicate');

for i = 2:r+1
    for j = 2:c+1
        mask = img(i-1:i+1, j-1:j+1); % 3x3 matrix
        m1 = [mask(1, 2) mask(2, :) mask(3, 2)];
        m2 = [mask(1, 1), mask(1, 3) mask(2, 2) mask(3, 1) mask(3, 3)];
        m3 = mask(2, 2);

        mean_value = myMedian([myMedian(m1) myMedian(m2) m3]);
        result(i-1, j-1) = mean_value;
    end
end
end