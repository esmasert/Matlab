% Esma Sert - 1816091
% Downloading MNIST data for use in MATLAB

train_images = loadMNISTImages('.\train-images.idx3-ubyte');
train_labels = loadMNISTLabels('.\train-labels.idx1-ubyte');

LISTfirst_image=zeros(0)
LISTfirst_label=zeros(0)

for i = 1:20
    
    first_image = reshape(train_images(:,i),28,28);
    first_label = train_labels(i,:);
    
    LISTfirst_image=[LISTfirst_image,first_image]
    LISTfirst_label=[LISTfirst_label,first_label]
    
    %imshow(first_image), title(['label: ' num2str(first_label)])
    
    imshow(LISTfirst_image(i)), title(['label: ' num2str(LISTfirst_label(i))])


end

%Trying to get 1000 data and train and test them

% perm = randperm(10000,20);
% for i = 1:20
%  subplot(4,5,i);
%  %%imshow(LISTfirst_image.Files{perm(i)});
%  figure
%  imshow(LISTfirst_image.Files{perm(i)}), title(['label: ' num2str(LISTfirst_label)])
% end


% imshow(LISTfirst_image), title(['label: ' num2str(LISTfirst_label)])



