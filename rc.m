clc
clear all
Vin=10
c=10e-6
r=1000
T=r*c
t=0:0.002:0.05;
Vout=Vin*(1-exp(-t/T));
plot(t,Vout)
xlabel("time")
ylabel("amplitude")
c1=8e-6
c2=6e-6
T1=r*c1
T2=r*c2
Vout1=Vin*(1-exp(-t/T1));
Vout2=Vin*(1-exp(-t/T2));
hold on
plot(t,Vout1)
plot(t,Vout2)
legend('c=10','c1=8','c2=6')
print('plot','-dpdf')