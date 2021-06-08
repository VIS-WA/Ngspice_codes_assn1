VTC for post layout ckt by Viswanadh 2019112011
.option scale=0.09u
.include TSMC_180nm.txt
.param SUPPLY=1.8
.global gnd vdd

Vdd vdd gnd 'SUPPLY'
vin a gnd 1.8

M0 c b vdd inverter_0/w_n8_n5# CMOSP w=50 l=2
+  ad=250 pd=110 as=250 ps=110
M1 c b gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=100 ps=50
M2 b a vdd inverter_1/w_n8_n5# CMOSP w=50 l=2
+  ad=250 pd=110 as=250 ps=110
M3 b a gnd Gnd CMOSN w=20 l=2
+  ad=100 pd=50 as=100 ps=50
C0 inverter_0/w_n8_n5# b 0.06fF
C1 b vdd 0.54fF
C2 gnd c 0.21fF
C3 b vdd 0.02fF
C4 b c 0.05fF
C5 inverter_0/w_n8_n5# vdd 0.13fF
C6 inverter_0/w_n8_n5# c 0.07fF
C7 vdd c 0.54fF
C8 a inverter_1/w_n8_n5# 0.06fF
C9 a gnd 0.05fF
C10 a b 0.05fF
C11 inverter_1/w_n8_n5# b 0.07fF
C12 b gnd 0.21fF
C13 a vdd 0.02fF
C14 gnd b 0.05fF
C15 inverter_1/w_n8_n5# vdd 0.13fF
C16 gnd Gnd 0.13fF
C17 vdd Gnd 0.03fF
C18 a Gnd 0.12fF
C19 inverter_1/w_n8_n5# Gnd 1.68fF
C20 gnd Gnd 0.13fF
C21 c Gnd 0.07fF
C22 vdd Gnd 0.03fF
C23 b Gnd 0.20fF
C24 inverter_0/w_n8_n5# Gnd 1.68fF

.dc vin 0 1.8 0.01

.control
run
plot v(a) v(b) $deriv(v(b))
set curplottile = "Viswanadh 2019112011"

.endc
