Image = imread('Shakeel.jpg');
faceD = vision.CascadeObjectDetector('MergeThreshold', 10);
bbox = step(faceD, Image);
blur = fspecial('disk',10);
for i = 1 : size(bbox,1)
    crop = imcrop(Image,bbox(i,:));
    crop = imfilter(crop,blur);
    Image(bbox(i,2):bbox(i,2)+bbox(i,4),bbox(i,1):bbox(i,1)+bbox(i,3),:) = crop;
end
