# quantidade de alimentos
param na >= 0;
# quantidade de nutrientes
param nn >= 0;
# conjuntos N e M
set NA = 1..na;
set NN = 1..nn;
#vetor nutrientes
param nutri{NN, NA} >=0;
# vetor de minimos nutricionais
param minimos{NN} >=0; 
# vetor de custo
param c{NA} >= 0;
# variavel do problema (alimentos)
var x{NA} >= 0;

minimize objetivo: sum {i in NA} c[i]*x[i];
		
subj to r1 {i in NN}: 
	sum {j in NA} nutri[i, j] * x[j] >= minimos[i];   




