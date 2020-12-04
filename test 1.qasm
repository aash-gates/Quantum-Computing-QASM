OPENQASM 2.0;
include "qelib1.inc";

qreg q[6];
creg c[6];

cx q[1],q[0];
cx q[3],q[4];
cx q[2],q[0];
y q[1];
h q[1];
cx q[4],q[0];
y q[1];
z q[4];
cx q[5],q[2];
measure q[0] -> c[0];