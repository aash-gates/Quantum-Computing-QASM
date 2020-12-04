OPENQASM 2.0;
include "qelib1.inc";

qreg q[5];
creg c[5];

rx(pi/2) q[0];
z q[1];
h q[2];
ry(pi/2) q[3];
measure q[4] -> c[4];
y q[0];
rx(pi/2) q[1];
rx(pi/2) q[3];
y q[0];
swap q[1],q[3];
z q[1];
measure q[3] -> c[3];
cx q[2],q[4];
measure q[1] -> c[1];
rz(pi/2) q[2];
rx(pi/2) q[4];
ry(pi/2) q[4];