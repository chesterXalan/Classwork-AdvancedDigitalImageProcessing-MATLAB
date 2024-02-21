function [Icorr, iMax, jMax, c] = imcorr(I, w, I_original, time_s)
[m, n] = size(I); [m0, n0] = size(w);
Icorr = zeros(m-m0+1, n-n0+1);
vecW = double(w(:));
normW = norm(vecW);
for ii = 1:m-m0+1
    for jj = 1:n-n0+1
        subMat = I(ii:ii+m0-1, jj:jj+n0-1);
        vec = double(subMat(:));
        Icorr(ii, jj) = vec'*vecW / (norm(vec)*normW+eps);
    end
end
c = max(Icorr(:));
[iMax, jMax] = find(Icorr == c);

figure, imshow(I_original)
hold on
bias = 2^time_s; % adjust box
for ii=1:length(iMax)
    plot(bias.*[jMax(ii), jMax(ii)+n0-1], bias.*[iMax(ii), iMax(ii)]);
    plot(bias.*[jMax(ii)+n0-1, jMax(ii)+n0-1], bias.*[iMax(ii), iMax(ii)+m0-1]);
    plot(bias.*[jMax(ii), jMax(ii)+n0-1], bias.*[iMax(ii)+m0-1, iMax(ii)+m0-1]);
    plot(bias.*[jMax(ii), jMax(ii)], bias.*[iMax(ii), iMax(ii)+m0-1]);
end
end
