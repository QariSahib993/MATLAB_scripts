Image = imread('Shakeel.jpg');
one3rd = round(size(rgb2gray(Image),2)/3);
one2nd = one3rd * 2;
gray = rgb2gray(Image);
BW = im2bw(Image);
for i = 1 : 3
    Image(:,one3rd+1:one2nd,i) = gray(:,one3rd+1:one2nd);
end
for i = 1 : size(gray,1)
    for j = one2nd+1 : size(gray,2)
        for p = 1 : 3
            if BW(i,j) == 0
                Image(i,j,p) = 0;
            else
                Image(i,j,p) = 255;
            end
        end
    end
end
