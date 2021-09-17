image = imread('Shakeel.jpg');
Image2 = imread('Ahmed.jpg');
image = im2double(image);
Image2 = im2double(Image2);
formula = Image2 - image;
iter = 40;
formula = formula ./ iter
for i = 1 : iter
    image = image + formula;
    [im,map] = rgb2ind(image,256);
    if i == 1
        imwrite(im,map,'Animated.gif','DelayTime',0.01,'LoopCount',1);
    else
        imwrite(im,map,'animated.gif','DelayTime',0.01,'WriteMode','Append');
    end
end
