Img = imread('E:\BTS\Tae.jpg'); 
BW = im2bw(Img);
 
figure imshow(BW)
BW1 = edge(BW,'sobel'); 
BW2 = edge(BW,'canny'); 
figure;
imshowpair(BW1,BW2,'montage') title('Sobel Canny');
