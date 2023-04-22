clc;
clf(figure(1));
clf(figure(2));
clf(figure(3));
clf(figure(4));
clf(figure(5));
clf(figure(6));
t = 0:0.001:40;
%% plot  e_x e_y e_z  (without input constraint)
figure(1);
subplot(3,1,1);
plot(t,out.p1x1,'b','LineWidth', 2);
hold on;
plot(t,out.p1x,'r--','LineWidth', 2);
hold on;
plot(t,out.p1x3,'k:','LineWidth', 2);
hold on;
handle =legend('Exponential predefined time stability','Predefined time stability','Exponential stability');
set(handle,'Interpreter','latex', 'FontSize',10);
ylabel('$$e_x$$/m','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([0 8 -110 110]);
grid on;

subplot(3,1,2)
plot(t,out.p1y1,'b','LineWidth', 2);
hold on;
plot(t,out.p1y,'r--','LineWidth', 2);
hold on;
plot(t,out.p1y3,'k:','LineWidth', 2);
hold on;
ylabel('$$e_y$$/m','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([0 8 -110 110]);
grid on;

subplot(3,1,3)
plot(t,out.p1z1,'b','LineWidth', 2);
hold on;
plot(t,out.p1z,'r--','LineWidth', 2);
hold on;
plot(t,out.p1z3,'k:','LineWidth', 2);
hold on;
xlabel('t/s','fontSize',20);
ylabel('$$e_z$$/m','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([0 8 -110 110]);
grid on;
%% plot U (without input constraint)
figure(2);
subplot(3,1,1)
plot(t,out.u5,'b','LineWidth', 2);
hold on;
plot(t,out.u2,'r--','LineWidth', 2);
hold on;
plot(t,out.u11,'k:','LineWidth', 2);
hold on;
handle =legend('Exponential predefined time stability','Predefined time stability','Exponential stability');
set(handle,'Interpreter','latex', 'FontSize',10);
ylabel('$$u_1$$(m/s$$^2$$)','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([-0.05 8 -200 300]);
grid on;

subplot(3,1,2)
plot(t,out.u3,'b','LineWidth', 2);
hold on;
plot(t,out.u,'r--','LineWidth', 2);
hold on;
plot(t,out.u9,'k:','LineWidth', 2);
hold on;
ylabel('$$u_2$$(rad/s)','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([-0.05 8 -20 30]);
grid on;

subplot(3,1,3)
plot(t,out.u4,'b','LineWidth', 2);
hold on;
plot(t,out.u1,'r--','LineWidth', 2);
hold on;
plot(t,out.u10,'k:','LineWidth', 2);
hold on;
xlabel('t/s','fontSize',20);
ylabel('$$u_3$$(rad/s)','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([-0.05 8 -30 20]);
grid on;
%% plot  3D trajectory tracking (with input constraint)
figure(3);
plot3(out.x5,out.y5,out.z5,'b','LineWidth', 3);
hold on;
plot3(out.x2,out.y2,out.z2,'r--','LineWidth', 3);
hold on;
plot3(out.x4,out.y4,out.z4,'k:','LineWidth', 3);
hold on;
plot3(out.xr5,out.yr5,out.zr5,'g-.','LineWidth', 3);
hold on;
plot3(out.xr5(1),out.yr5(1),out.zr5(1),'k>','MarkerSize',10);
plot3(out.x5(1),out.y5(1),out.z5(1),'b>','MarkerSize',10);
handle =legend('Exponential predefined time stability','Predefined time stability','Exponential stability','Reference');
set(handle,'Interpreter','latex', 'FontSize',10)
xlabel('x/m','fontSize',15);
ylabel('y/m','fontSize',15);
zlabel('z/m','fontSize',15);
set(gca,'fontSize',15);
grid on;

%% plot e_x e_y e_z (with input constraint)
figure(4);
subplot(3,1,1);
plot(t,out.p1x5,'b','LineWidth', 2);
hold on;
plot(t,out.p1x2,'r--','LineWidth', 2);
hold on;
plot(t,out.p1x4,'k:','LineWidth', 2);
hold on;
handle =legend('Exponential predefined time stability','Predefined time stability','Exponential stability');
set(handle,'Interpreter','latex', 'FontSize',10)
ylabel('$$e_x$$/m','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([0 40 -110 110]);
grid on;

subplot(3,1,2);
plot(t,out.p1y5,'b','LineWidth', 2);
hold on;
plot(t,out.p1y2,'r--','LineWidth', 2);
hold on;
plot(t,out.p1y4,'k:','LineWidth', 2);
hold on;
ylabel('$$e_y$$/m','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([0 40 -180 90]);
grid on;

subplot(3,1,3);
plot(t,out.p1z5,'b','LineWidth', 2);
hold on;
plot(t,out.p1z2,'r--','LineWidth', 2);
hold on;
plot(t,out.p1z4,'k:','LineWidth', 2);
hold on;
xlabel('t/s','fontSize',20);
ylabel('$$e_z$$/m','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([0 40 -50 110]);
grid on;
%% plot U (with input constraint)
figure(5);
subplot(3,1,1);
plot(t,out.u17,'b','LineWidth', 2);
hold on;
plot(t,out.u8,'r--','LineWidth', 2);
hold on;
plot(t,out.u14,'k:','LineWidth', 2);
hold on;
handle =legend('Exponential predefined time stability','Predefined time stability','Exponential stability');
set(handle,'Interpreter','latex', 'FontSize',10)
ylabel('$$u_1/(m/s^2)$$','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([-0 40 -20 25]);
grid on;

subplot(3,1,2);
plot(t,out.u15,'b','LineWidth', 2);
hold on;
plot(t,out.u6,'r--','LineWidth', 2);
hold on;
plot(t,out.u12,'k:','LineWidth', 2);
hold on;
ylabel('$$u_2$$/(rad/s)','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([-0 40 -2 2.4]);
grid on;

subplot(3,1,3);
plot(t,out.u16,'b','LineWidth', 2);
hold on;
plot(t,out.u7,'r--','LineWidth', 2);
hold on;
plot(t,out.u13,'k:','LineWidth', 2);
hold on;
xlabel('t/s','fontSize',20);
ylabel('$$u_3$$(rad/s)','Interpreter','latex','fontSize',20);
set(gca,'fontSize',15);
axis([-0 40 -2 2.4]);
grid on;
%% plot UAV state (with input constraint)
psi=out.psi5;
for i = 1:1:40001       
    if out.psi5(i)>pi
        psi(i)=out.psi5(i)-2*pi;
        if psi(i)>pi
            psi(i)=psi(i)-2*pi;
        end
    end
end
figure(6);
subplot(3,1,1);
plot(t,psi,'b','LineWidth', 2);
handle=legend('yaw  $\psi$');
ylabel('$$\psi$$(rad/s)','Interpreter','latex','fontSize',15);
set(handle,'Interpreter','latex', 'FontSize',15)
hold on;
set(gca,'fontSize',15);
axis([0 40 -5 5]);
grid on;

subplot(3,1,2);
plot(t,out.gamma5,'r','LineWidth', 2);
handle=legend('pitch  $\gamma$');
set(handle,'Interpreter','latex', 'FontSize',15)
hold on;
ylabel('$$\gamma$$(rad/s)','Interpreter','latex','fontSize',15);
set(gca,'fontSize',15);
axis([0 40 -1.5 1]);
grid on;

subplot(3,1,3);
plot(t,out.v5,'k','LineWidth', 2);
handle=legend('airspeed  $v$');
set(handle,'Interpreter','latex', 'FontSize',15)
xlabel('t/s','fontSize',15);
ylabel('$$v$$(m/s)','Interpreter','latex','fontSize',15);
set(gca,'fontSize',15);
axis([0 40 8 40]);
grid on;