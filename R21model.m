function wahoo = R21model()
clear all; close all;
wahoo = 100;

%Specific Aim 1
%direction of flow: alveolar -> tissue -> blood
PO2_A0 = 100;                           %initial alveolar PO2
PO2_T0 = 70;                            %initial tissue PO2
PO2_B0 = 40;                            %inital blood PO2

PO2_init = [PO2_A0 PO2_T0 PO2_B0];      %initialized PO2

tspan = [0, 0.3]; 
[t0, y0]  = ode23s(@fo, tspan, PO2_init); %ode23 solver
figure;
plot(t0,y0); %graph of PO2 in alveoli, tissue, and blood over 0.3 seconds
legend("PO2_A", "PO2_T", "PO2-B")
title("Partial Pressure of Oxygen vs. Time in Alveoli, Tissue, and Blood")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")

%Specific Aim 2
%zi = 0
HB4i = 1.7 * 10^(-3);                   %initial hemoglobin 
PO2_init = [PO2_A0 PO2_T0 PO2_B0 HB4i]; %initialized PO2 + HB4
tspan = [0, 1];
[t1, y1] = ode23s(@f1, tspan, PO2_init); %ode23 solver
figure;
plot(t1,y1(:,1));                       %graph of PO2 in alveoli w/ zi = 0
title("Partial Pressure of Oxygen vs. Time in Alveoli for a Normal Lung (zi = 0)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t1,y1(:,2));                       %graph of PO2 in tissue w/ zi = 0
title("Partial Pressure of Oxygen vs. Time in Tissue for a Normal Lung (zi = 0)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t1,y1(:,3));                       %graph of PO2 in blood w/ zi = 0
title("Partial Pressure of Oxygen vs. Time in Blood for a Normal Lung (zi = 0)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")

%zi = 20
[t2, y2] = ode23s(@f2, tspan, PO2_init); %ode23 solver
figure;
plot(t2,y2(:,1));                       %graph of PO2 in alveoli w/ zi = 20
title("Partial Pressure of Oxygen vs. Time in Alveoli with Low Risk BPD (zi = 20)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t2,y2(:,2));                       %graph of PO2 in tissue w/ zi = 20
title("Partial Pressure of Oxygen vs. Time in Tissue with Low Risk BPD (zi = 20)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t2,y2(:,3));                       %graph of PO2 in blood w/ zi = 20
title("Partial Pressure of Oxygen vs. Time in Blood with Low Risk BPD (zi = 20)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")

%zi = 100
[t3, y3] = ode23s(@f3, tspan, PO2_init); %ode23 solver
figure;
plot(t3,y3(:,1));                       %graph of PO2 in alveoli w/ zi = 100
title("Partial Pressure of Oxygen vs. Time in Alveoli with High Risk BPD (zi = 100)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t3,y3(:,2));                       %graph of PO2 in tissue w/ zi = 100
title("Partial Pressure of Oxygen vs. Time in Tissue with High Risk BPD (zi = 100)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t3,y3(:,3));                       %graph of PO2 in blood w/ zi = 100
title("Partial Pressure of Oxygen vs. Time in Blood with High Risk BPD (zi = 100)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")

%Specific Aim 3
%Caffeine - zi = 80
[t4, y4] = ode23s(@f4, tspan, PO2_init); %ode23 solver
figure;
plot(t4,y4(:,1));                       %graph of PO2 in alveoli w/ zi = 80 
title("Partial Pressure of Oxygen vs. Time in Alveoli Treated with Caffeine (zi = 80)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t4,y4(:,2));                       %graph of PO2 in tissue w/ zi = 80
title("Partial Pressure of Oxygen vs. Time in Tissue Treated with Caffeine (zi = 80)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t4,y4(:,3));                       %graph of PO2 in blood w/ zi = 80
title("Partial Pressure of Oxygen vs. Time in Blood Treated with Caffeine (zi = 80)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")

%Vitamin A - zi = 10
[t5, y5] = ode23s(@f5, tspan, PO2_init); %ode23 solver
figure;
plot(t5,y5(:,1));                       %graph of PO2 in alveoli w/ zi = 10
title("Partial Pressure of Oxygen vs. Time in Alveoli Treated with Vitamin A (zi = 10)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t5,y5(:,2));                       %graph of PO2 in tissue w/ zi = 10
title("Partial Pressure of Oxygen vs. Time in Tissue Treated with Vitamin A (zi = 10)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t5,y5(:,3));                       %graph of PO2 in blood w/ zi = 10
title("Partial Pressure of Oxygen vs. Time in Blood Treated with Vitamin A (zi = 10)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")

%Nitric Oxide - zi = 50
[t6, y6] = ode23s(@f6, tspan, PO2_init); %ode23 solver
figure;
plot(t6,y6(:,1));                       %graph of PO2 in alveoli w/ zi = 50 
title("Partial Pressure of Oxygen vs. Time in Alveoli Treated with NO (zi = 50)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t6,y6(:,2));                       %graph of PO2 in tissue w/ zi = 50
title("Partial Pressure of Oxygen vs. Time in Tissue Treated with NO (zi = 50)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")
figure;
plot(t6,y6(:,3));                       %graph of PO2 in blood w/ zi = 50
title("Partial Pressure of Oxygen vs. Time in Blood Treated with NO (zi = 50)")
xlabel("Time (sec)")
ylabel("Partial Pressure of Oxygen (mmHg)")

function dydt = fo(t, y)    % specific aim 1
DO2_TB = 6.7 * 10^(-12);    % diffusion from tissue to blood
DO2_TA = 2.4 * 10^(-12);    % diffusion from tissue to alveoli
SigO2_A = 5.2 * 10^(-6);    % concentration of O2
SigO2_B = 1.2 * 10^(-6);    % concentration of O2
SigO2_T = 1.2 * 10^(-6);    % concentration of O2
V_B0 = 7.5 * 10^(-9);       %
V_T0 = 4.2 * 10^(-8);       %
V_A0 = 1.9 * 10^(-7);       %
N = 1.2 * 10^(-7);          %

dydt = [
%alveolar
(DO2_TA / (SigO2_A*V_A0)) * (y(2) - y(1))
%tissue
(DO2_TB / (SigO2_T*V_T0)) * (y(3) - y(2)) + (DO2_TA / (SigO2_T*V_T0)) * (y(1) - y(2))
%blood
(DO2_TB / (SigO2_B*V_B0)) * (y(2) - y(3))
];

return;

function dydt = f1(t, y)    % specific aim 2 - zi = 0
DO2_TB = 6.7 * 10^(-12);
DO2_TA = 2.4 * 10^(-12);
SigO2_A = 5.2 * 10^(-6);
SigO2_B = 1.2 * 10^(-6);
SigO2_T = 1.2 * 10^(-6);
V_B0 = 7.5 * 10^(-9);
V_T0 = 4.2 * 10^(-8);
V_A0 = 1.9 * 10^(-7);
N = 1.2 * 10^(-7);

zi = 0;
mvta = 1;
mvtb = 0.4;
m = 3.6;
k_plus = 5 * 10^(-4);
k_minus = 9;
THb = 2.2 * 10^(-3);
PO2m_B = 95;
V_Bz = V_B0 / (1 + mvtb*zi);
V_Az = V_A0 / (1 + mvta*zi);
V_Tz = V_T0 + V_B0 - V_Bz + V_A0 - V_Az;

dydt = [
    %alveolar
    (DO2_TA / (SigO2_A*V_Az)) * (y(2) - y(1))
    %tissue
    (DO2_TB / (SigO2_T*V_Tz)) * (y(3) - y(2)) + (DO2_TA / (SigO2_T*V_T0)) * (y(1) - y(2))
    %blood
    (DO2_TB / (SigO2_B*V_Bz)) * (y(2) - y(3)) + (m/SigO2_B)*(k_minus*y(4) - k_plus*(THb-y(4))*PO2m_B)
    %hemoglobin
    (k_plus*(THb - y(4))*(PO2m_B) - k_minus*y(4))
    ];

return;

function dydt = f2(t, y)     % specific aim 2 - zi = 20
DO2_TB = 6.7 * 10^(-12);
DO2_TA = 2.4 * 10^(-12);
SigO2_A = 5.2 * 10^(-6);
SigO2_B = 1.2 * 10^(-6);
SigO2_T = 1.2 * 10^(-6);
V_B0 = 7.5 * 10^(-9);
V_T0 = 4.2 * 10^(-8);
V_A0 = 1.9 * 10^(-7);
N = 1.2 * 10^(-7);

zi = 20;
mvta = 1;
mvtb = 0.4;
m = 3.6;
k_plus = 5 * 10^(-4);
k_minus = 9;
THb = 2.2 * 10^(-3);
PO2m_B = 95;
V_Bz = V_B0 / (1 + mvtb*zi);
V_Az = V_A0 / (1 + mvta*zi);
V_Tz = V_T0 + V_B0 - V_Bz + V_A0 - V_Az;

dydt = [
    %alveolar
    (DO2_TA / (SigO2_A*V_Az)) * (y(2) - y(1))
    %tissue
    (DO2_TB / (SigO2_T*V_Tz)) * (y(3) - y(2)) + (DO2_TA / (SigO2_T*V_T0)) * (y(1) - y(2))
    %blood
    (DO2_TB / (SigO2_B*V_Bz)) * (y(2) - y(3)) + (m/SigO2_B)*(k_minus*y(4) - k_plus*(THb-y(4))*PO2m_B)
    %hemoglobin
    (k_plus*(THb - y(4))*(PO2m_B) - k_minus*y(4))
    ];

return;

function dydt = f3(t, y)     % specific aim 2 - zi = 100
DO2_TB = 6.7 * 10^(-12);
DO2_TA = 2.4 * 10^(-12);
SigO2_A = 5.2 * 10^(-6);
SigO2_B = 1.2 * 10^(-6);
SigO2_T = 1.2 * 10^(-6);
V_B0 = 7.5 * 10^(-9);
V_T0 = 4.2 * 10^(-8);
V_A0 = 1.9 * 10^(-7);
N = 1.2 * 10^(-7);

zi = 100;
mvta = 1;
mvtb = 0.4;
m = 3.6;
k_plus = 5 * 10^(-4);
k_minus = 9;
THb = 2.2 * 10^(-3);
PO2m_B = 95;
V_Bz = V_B0 / (1 + mvtb*zi);
V_Az = V_A0 / (1 + mvta*zi);
V_Tz = V_T0 + V_B0 - V_Bz + V_A0 - V_Az;

dydt = [
    %alveolar
    (DO2_TA / (SigO2_A*V_Az)) * (y(2) - y(1))
    %tissue
    (DO2_TB / (SigO2_T*V_Tz)) * (y(3) - y(2)) + (DO2_TA / (SigO2_T*V_T0)) * (y(1) - y(2))
    %blood
    (DO2_TB / (SigO2_B*V_Bz)) * (y(2) - y(3)) + (m/SigO2_B)*(k_minus*y(4) - k_plus*(THb-y(4))*PO2m_B)
    %hemoglobin
    (k_plus*(THb - y(4))*(PO2m_B) - k_minus*y(4))
    ];

return;

function dydt = f4(t, y)     % specific aim 3 - zi = 80
DO2_TB = 6.7 * 10^(-12);
DO2_TA = 2.4 * 10^(-12);
SigO2_A = 5.2 * 10^(-6);
SigO2_B = 1.2 * 10^(-6);
SigO2_T = 1.2 * 10^(-6);
V_B0 = 7.5 * 10^(-9);
V_T0 = 4.2 * 10^(-8);
V_A0 = 1.9 * 10^(-7);
N = 1.2 * 10^(-7);

zi = 80;
mvta = 1;
mvtb = 0.4;
m = 3.6;
k_plus = 5 * 10^(-4);
k_minus = 9;
THb = 2.2 * 10^(-3);
PO2m_B = 95;
V_Bz = V_B0 / (1 + mvtb*zi);
V_Az = V_A0 / (1 + mvta*zi);
V_Tz = V_T0 + V_B0 - V_Bz + V_A0 - V_Az;

dydt = [
    %alveolar
    (DO2_TA / (SigO2_A*V_Az)) * (y(2) - y(1))
    %tissue
    (DO2_TB / (SigO2_T*V_Tz)) * (y(3) - y(2)) + (DO2_TA / (SigO2_T*V_T0)) * (y(1) - y(2))
    %blood
    (DO2_TB / (SigO2_B*V_Bz)) * (y(2) - y(3)) + (m/SigO2_B)*(k_minus*y(4) - k_plus*(THb-y(4))*PO2m_B)
    %hemoglobin
    (k_plus*(THb - y(4))*(PO2m_B) - k_minus*y(4))
    ];

return;

function dydt = f5(t, y)     % specific aim 3 - zi = 10
DO2_TB = 6.7 * 10^(-12);
DO2_TA = 2.4 * 10^(-12);
SigO2_A = 5.2 * 10^(-6);
SigO2_B = 1.2 * 10^(-6);
SigO2_T = 1.2 * 10^(-6);
V_B0 = 7.5 * 10^(-9);
V_T0 = 4.2 * 10^(-8);
V_A0 = 1.9 * 10^(-7);
N = 1.2 * 10^(-7);

zi = 10;
mvta = 1;
mvtb = 0.4;
m = 3.6;
k_plus = 5 * 10^(-4);
k_minus = 9;
THb = 2.2 * 10^(-3);
PO2m_B = 95;
V_Bz = V_B0 / (1 + mvtb*zi);
V_Az = V_A0 / (1 + mvta*zi);
V_Tz = V_T0 + V_B0 - V_Bz + V_A0 - V_Az;

dydt = [
    %alveolar
    (DO2_TA / (SigO2_A*V_Az)) * (y(2) - y(1))
    %tissue
    (DO2_TB / (SigO2_T*V_Tz)) * (y(3) - y(2)) + (DO2_TA / (SigO2_T*V_T0)) * (y(1) - y(2))
    %blood
    (DO2_TB / (SigO2_B*V_Bz)) * (y(2) - y(3)) + (m/SigO2_B)*(k_minus*y(4) - k_plus*(THb-y(4))*PO2m_B)
    %hemoglobin
    (k_plus*(THb - y(4))*(PO2m_B) - k_minus*y(4))
    ];

return;

function dydt = f6(t, y)     % specific aim 3 - zi = 50
DO2_TB = 6.7 * 10^(-12);
DO2_TA = 2.4 * 10^(-12);
SigO2_A = 5.2 * 10^(-6);
SigO2_B = 1.2 * 10^(-6);
SigO2_T = 1.2 * 10^(-6);
V_B0 = 7.5 * 10^(-9);
V_T0 = 4.2 * 10^(-8);
V_A0 = 1.9 * 10^(-7);
N = 1.2 * 10^(-7);

zi = 50;
mvta = 1;
mvtb = 0.4;
m = 3.6;
k_plus = 5 * 10^(-4);
k_minus = 9;
THb = 2.2 * 10^(-3);
PO2m_B = 95;
V_Bz = V_B0 / (1 + mvtb*zi);
V_Az = V_A0 / (1 + mvta*zi);
V_Tz = V_T0 + V_B0 - V_Bz + V_A0 - V_Az;

dydt = [
    %alveolar
    (DO2_TA / (SigO2_A*V_Az)) * (y(2) - y(1))
    %tissue
    (DO2_TB / (SigO2_T*V_Tz)) * (y(3) - y(2)) + (DO2_TA / (SigO2_T*V_T0)) * (y(1) - y(2))
    %blood
    (DO2_TB / (SigO2_B*V_Bz)) * (y(2) - y(3)) + (m/SigO2_B)*(k_minus*y(4) - k_plus*(THb-y(4))*PO2m_B)
    %hemoglobin
    (k_plus*(THb - y(4))*(PO2m_B) - k_minus*y(4))
    ];

return;