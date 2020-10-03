clear
clc
%��������Ϊ������vlfeat���߰�ʵ�ֻ���SIFT������ƥ��
image1=imread('EGaudi_2.jpg');
img1=single(rgb2gray(image1));
image2=imread('EGaudi_2.jpg');
img2=single(rgb2gray(image2));
%��ȡ�������������
[f1,d1]=vl_sift(img1);
[f2,d2]=vl_sift(img2);
[matches,scores]=vl_ubcmatch(d1,d2);
[dump,scoreid]=sort(scores);
%�������ͼƬ
new_pic=zeros(size(img1,1),size(img1,2)+size(img2,2),3);
new_pic(:,1:size(img1,2),:)=image1;
new_pic(1:size(img2,1),(size(img1,2)+1):end,:)=image2;
new_pic=uint8(new_pic);
figure(1);
image(new_pic);
axis image
mv=f2;
m=size(img1,2);
mv(1,:)=mv(1,:)+size(img1,2);
vl_plotframe(f1(:,end-200:end),'color','c','linewidth',1);
vl_plotframe(mv(:,end-200:end),'color','g','linewidth',1);
title('������');
figure(2);
image(new_pic);
axis image
hold on
plot_rate=0.1;
for i=1:fix(plot_rate*size(matches,2))%fixΪȡ������
    id=scoreid(i);
    line([f1(1,matches(1,id)) mv(1,matches(2,id))],...
        [f1(2,matches(1,id)) mv(2,matches(2,id))],'linewidth',1,'color','r');
end
hold off      
title('����ƥ��');
