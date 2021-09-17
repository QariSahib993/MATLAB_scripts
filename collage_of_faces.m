image = imread('Shakeel.jpg');
faceD = vision.cascadeobjectdetector('mergethreshold',10);
bbox = step(faceD, image);
for i = 1 : step (bbox,1)
    crop{i} = imcrop(image, bbox(i,:));
    crop{i} = imresize (crop{i}, [200 200]);
end
collage = crop{i};
for i = 2 :size (bbox,1)
    collage = [image,crop{i}];
end
imshow(collage);
