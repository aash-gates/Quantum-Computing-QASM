OPENQASM 2.0;
include "qelib1.inc";
qreg q[4];
creg c[4];
h q[3];
cu1 (pi / 2) q[2], q[3];
h q[2];
cu1 (pi / 4) q[1], q[3];
cu1 (pi / 2) q[1], q[2];
h q[1];
cu1 (pi / 8) q[0], q[3];
cu1 (pi / 4) q[0], q[2];
cu1 (pi / 2) q[0], q[1];
h q[0];
swap q[0], q[3];
swap q[1], q[2];
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
measure q[3] -> c[3];