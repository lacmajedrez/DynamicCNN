% prepare the segmentation problem
clear 
close all

vec = @(x) x(:);

I = imread('coloredChips.png');
I = I(1:300,101:450,:);
subplot(2,2,1)
imagesc(I);
axis off;
load imgSeg
subplot(2,2,2)
imagesc(imgSeg);
axis off;


disp('The image we want to segment');

pause

RGB = [vec(I(:,:,1)), vec(I(:,:,2)), vec(I(:,:,3))];

i1 = imgSeg==1;
i2 = imgSeg==2;
i3 = imgSeg==3;

figure(2)
plot3(RGB(i1,1),RGB(i1,2),RGB(i1,3),'.r')
hold on
plot3(RGB(i2,1),RGB(i2,2),RGB(i2,3),'.b')
hold on
plot3(RGB(i3,1),RGB(i3,2),RGB(i3,3),'.g')

hold off

