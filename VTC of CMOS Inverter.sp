*Simulation of CMOS inverter with different values of beta_n/beta_p
M1 2 1 0 0 MOSN W=5U L=1.0U
M2 2 1 3 3 MOSP W=5U L=1.0U
M3 4 1 0 0 MOSN W=3U L=1.0U
M4 4 1 3 3 MOSP W=2U L=1.0U
M5 5 1 0 0 MOSN W=2U L=1.0U
M6 5 1 3 3 MOSP W=4U L=1.0U
VIN 1 0 DC 5.0
VDD 3 0 DC 5.0
.MODEL MOSN NMOS VTO=0.7 KP=110U GAMMA=0.4 LAMBDA=0.04 PHI=0.7
.MODEL MOSP PMOS VTO=-0.7 KP=50U GAMMA=0.57 LAMBDA=0.05 PHI=0.8
.dc VIN 0 5 0.01
.op
.print dc v(2,0) v(4,0) v(5,0)
.END
