function [nta_1,nta_2,nta_3] = im_predefined(t,t_f,bta1,bta2,k1,k2,p1x,p1y,p1z,p2x,p2y,p2z,z2x,z2y,z2z)
%x
f1x= bta1/(t_f-t)*(1-exp(-(abs(p1x))))*sign(p1x); 
if f1x==0                    
    df1x_dp=bta1/(t_f-t);
else
    df1x_dp= - (bta1*abs(p1x)*(exp(-abs(p1x)) - 1))/(p1x^2*(t - t_f)) + (bta1*sign(p1x)*(exp(-abs(p1x)) - 1))/(p1x*(t - t_f)) - (bta1*exp(-abs(p1x))*abs(p1x)*sign(p1x))/(p1x*(t - t_f));
end
df1x_dt=-(bta1*sign(p1x)*(exp(-abs(p1x)) - 1))/(t - t_f)^2;
sigma2x=p2x+f1x;
f2x = bta2/(t_f-t)*(1-exp(-(abs(sigma2x))))*sign(sigma2x);
%y
f1y= bta1/(t_f-t)*(1-exp(-(abs(p1y))))*sign(p1y);
if f1y==0
    df1y_dp = bta1/(t_f-t);
else
    df1y_dp =  - (bta1*abs(p1y)*(exp(-abs(p1y)) - 1))/(p1y^2*(t - t_f)) + (bta1*sign(p1y)*(exp(-abs(p1y)) - 1))/(p1y*(t - t_f)) - (bta1*exp(-abs(p1y))*abs(p1y)*sign(p1y))/(p1y*(t - t_f));
end
df1y_dt=-(bta1*sign(p1y)*(exp(-abs(p1y)) - 1))/(t - t_f)^2;
sigma2y=p2y+f1y;
f2y = bta2/(t_f-t)*(1-exp(-(abs(sigma2y))))*sign(sigma2y);
%z
f1z= bta1/(t_f-t)*(1-exp(-(abs(p1z))))*sign(p1z);
if f1z==0
    df1z_dp = bta1/(t_f-t);
else
    df1z_dp =  - (bta1*abs(p1z)*(exp(-abs(p1z)) - 1))/(p1z^2*(t - t_f)) + (bta1*sign(p1z)*(exp(-abs(p1z)) - 1))/(p1z*(t - t_f)) - (bta1*exp(-abs(p1z))*abs(p1z)*sign(p1z))/(p1z*(t - t_f));
end
df1z_dt=-(bta1*sign(p1z)*(exp(-abs(p1z)) - 1))/(t - t_f)^2;
sigma2z=p2z+f1z;
f2z = bta2/(t_f-t)*(1-exp(-(abs(sigma2z))))*sign(sigma2z);

nta_1 = -p1x - df1x_dt-p2x*df1x_dp-f2x-z2x+sign(sigma2x);
nta_2 = -p1y - df1y_dt-p2y*df1y_dp-f2y-z2y+sign(sigma2y);
nta_3 = -p1z - df1z_dt-p2z*df1z_dp-f2z-z2z+sign(sigma2z); 
end
