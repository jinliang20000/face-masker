function I = addEyeHolesToMask(I,p)
bw1 = roipoly(I,p(37:42,1),p(37:42,2));
bw2 = roipoly(I,p(43:48,1),p(43:48,2));
bw = bw1 | bw2;
bw = imdilate(bw,ones(8));
I = I - 255*repmat(bw,[1 1 3]);
% I = I + 255*repmat(bw,[1 1 3]);
I(I<0) = 0;
I(I>255) = 255;