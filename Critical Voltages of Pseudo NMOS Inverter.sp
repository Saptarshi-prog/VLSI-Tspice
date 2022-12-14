*Pseudo-NMOS inverter
M1 2 1 0 0 MOSN W=800N L=200N
M2 2 0 3 3 MOSP W=400N L=200N
VIN 1 0 DC 1.8
VDD 3 0 DC 1.8
.MODEL MOSN NMOS VTO=0.5 KP=270U GAMMA=0.3 LAMBDA=0.04 PHI=0.84
.MODEL MOSP PMOS VTO=-0.5 KP=70U GAMMA=0.3 LAMBDA=0.05 PHI=0.84
.dc VIN 0 1.8 0.1
.op
.print dc V(2,0) V(1,0)
.END
