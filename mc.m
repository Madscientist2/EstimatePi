% Monte Carlo estimate of pi
close all; clear all; clc

%Define variables to use to estimate the number of points that gets inside a circle that is inscribed in a sqaure
n=1000; %Number of points, the more, the more accurate is the estimate
x=rand(1,n); %To create random numbers between 0-1
y=rand(1,n); %To create random numbers between 0-1
a=0; %To count the points inside the circle 
b=0; %To count the points outside the circle plus the square

for i=1:n
	b=b+1;
	if x(i)^2 + y(i)^2 <=1 %This condition to account for points inside the circile since we assume the cicle has radius=1
		a=a+1;
		plot(x(i),y(i),'ro'); %To plot the points inside the quadrant
		hold on;
	else
		plot(x(i), y(i),'ko') %To plot the points outside the quadrant
	end
end

%We know the area of square= 4*R^2
%Also the area of the circle= Pi*R^2
%Dividing the two area we get: A=Pi/4
%Since we are randomly throwing points to the circle which also gets to the square, we can get an estimate ratio of the area (which I called A above)
ratio=a/b; %Ratio
pi_=4*ratio
%Credit: For more information, please visit http://polymer.bu.edu/java/java/montepi/MontePi.html