I = imread('equestrian.jpg');

imshow(I)

whos I

figure
imhist(I)

I2 = histeq(I);
figure
imshow(I2)

figure
imhist(I2)

imfinfo('equestrian.jpg')

I3=imnoise(I2)

imshow(I3)

