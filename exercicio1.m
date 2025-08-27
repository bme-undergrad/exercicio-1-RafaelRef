function t = exercicio1(func, func_d, x0)

% nao alterar: inicio
es = 0.001;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t = zeros(20,1);

t(1)=0.1;
erro = zeros (length(t),1);

for k=1:imax

    if k>=1:
        t(k+1)=t(k)-func(t(k))/func_d(t(k));
        erro(k)=abs((t(k)-t(k-1))/t(k))

    if erro<es:
        break
endfor
resultadudo=t(find(t,1,'last'))

t = 0; % alterar

%%%%%%%%%%%%%%%%%%%%%%%%%%
endfunction