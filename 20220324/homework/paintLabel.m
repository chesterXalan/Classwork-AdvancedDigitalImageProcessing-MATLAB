function [labeled_red, labeled_color] = paintLabel(labeled, numObjects)
[R, C] = size(labeled);
labeled_red = zeros(R, C, 3, 'uint8');
labeled_color = zeros(R, C, 3, 'uint8');

color1 = randperm(255, numObjects);
color2 = randperm(255, numObjects);
color3 = randperm(255, numObjects);

for n = 1:numObjects
    for i = 1:R
        for j = 1:C
            if labeled(i, j) == n
                labeled_red(i, j, 1) = 255;
                labeled_color(i, j, 1) = color1(n);
                labeled_color(i, j, 2) = color2(n);
                labeled_color(i, j, 3) = color3(n);
            end
        end
    end
end
end