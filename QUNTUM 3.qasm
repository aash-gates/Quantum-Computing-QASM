OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[4];

h q[0];
measure q[1] -> c[1];
x q[1];
h q[1];
measure q[2] -> c[2];