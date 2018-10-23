close all
clear all
i_image=imread('imgs/1.jpg');
if (size(i_image,3)==3)
    i_gray = rgb2gray(i_image);
else
    i_gray=i_image;
end
i_gray_resized = imresize(i_gray,[256,256]);
i_adaptive = adapthisteq(i_gray_resized);
figure(1),imshow(i_gray,[]),title('input image');
figure(2),imshow(i_adaptive,[]),title('Adaptive Equilaized image');
verticalProfile = sum(i_adaptive, 2);
horizontalProfile = sum(i_adaptive, 1);
plot(verticalProfile)
plot(horizontalProfile)