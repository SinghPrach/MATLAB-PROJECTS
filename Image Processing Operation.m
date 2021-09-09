%	Read a RGB image

RGB = imread('E:\BTS\Tae.jpg'); imshow(RGB)

%	Convert it to gray scale

RGB = imread('E:\BTS\Tae.jpg'); imshow(RGB)
I =rgb2gray(RGB) imshow(I)



%	Convert it to a binary image

RGB = imread('E:\BTS\Tae.jpg'); BW = im2bw(RGB);
 
figure imshow(BW)

%	Find out the edge of the feature in the image


RGB = imread('E:\BTS\Tae.jpg'); BW = im2bw(RGB);
figure imshow(BW); e=edge(BW); array=[];
for i=1:1:1:720
for j=1:1:1:1020
if(e(i,j)==1)
array2=[i,j]; array=vertcat(array,array2);
end
end
end
imshow(e);

%	Find out the pixel location of the edge without using any inbuilt Matlab Functions
RGB = imread('E:\BTS\Tae.jpg'); BW = im2bw(RGB);
figure imshow(BW) e=edge(BW); array=[];
for i=1:1:1:720
for j=1:1:1:1280
if(e(i,j)==1)
array2=[i,j]; array=vertcat(array,array2);
end
end
end
imshow(e); hold on s=size(array); for i=1:1:s(1)
plot(array(i,2),array(i,1),'*g','linewidt',.1); pause(0.1);
 
end
