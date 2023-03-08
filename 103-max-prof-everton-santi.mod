# Problema: um fabrica produz pacotes de pregos e arames (x[1] e x[2])
# Prego: custa 3 e demora 2 minutos
# Arame: custa 5 e demora 5 minutos
# Demanda minima: 100 pct de pregos e 300 rolos de arame
# Demanda maxima: 1350 pct de pregos e 600 rolos de arame
# Horas semanais de trabalho de 40 (2400 minutos)
## Quantas unidades de cada produto deve ser produzida para a
## empresa maximizar o lucro? 

# N itens
param n;
# C eh total de horas
param C;
# p eh o lucro gerado
# l eh minimo
# u eh o maximo
param p{1..n};
param l{1..n};
param u{1..n};
# t tempo producao item
param t{1..n};

# Variavel de decisao. Quanto de cada produto sera produzido.
# Resposta do solver
var x{1..n} >= 0;

# Funcao a ser otimizada
maximize objetivo:
			sum{i in 1..n} p[i] * x[i];

# Tempo de producao deve ser menor que tempo disponivel
subj to tempo: sum{i in 1..n} t[i] * x[i] <= C;

# Total produzido deve respeitar minimo e maximo
subj to producao{i in 1..n}: l[i] <= x[i] <= u[i];

