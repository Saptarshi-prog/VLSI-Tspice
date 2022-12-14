*Simulation of MOSFET output Characteristics
M1 2 1 0 0 MOS1 W=3U L=1.0U
VDS 3 0 5
VX 3 2 0
VGS 1 0 1
.MODEL MOS1 NMOS VTO=0.7 KP=110U GAMMA=0.4 LAMBDA=0.04 PHI=0.7
.dc VDS 0 5 0.2 VGS 1 5 1
.PRINT DC I(VX)
.OP
.END
