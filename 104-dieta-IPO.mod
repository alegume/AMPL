# Eh importante usar o >= 0
var x{1..3} >= 0;

minimize objetivo:
		20*x[1] + 10*x[2] + 16*x[3];
		
subj to m1: 2*x[1] + 3*x[2] + 7*x[3] >=10;
subj to m2: 4*x[1] + 2*x[2] + x[3] >=15;
subj to m3: x[1] + 8*x[2] +x[3] >= 10;
subj to m4: 3*x[1] + x[2] +x[3] >= 8;




