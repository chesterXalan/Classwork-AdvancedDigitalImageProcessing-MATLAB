function med = myMedian(mat)
mat = sort(mat);
id = length(mat)/2;

if mod(length(mat), 2) ~= 0 % odd
    id = ceil(id);
    med = mat(id);
else % even
    id = [id id+1];
    med = (mat(id(1))+mat(id(2))) / 2;
end
end