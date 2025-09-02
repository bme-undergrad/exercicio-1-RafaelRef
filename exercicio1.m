function t = exercicio1(func, func_d, x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t = zeros(imax,1);

t(1)=x0;
erro = zeros (imax,1);

for k=1:imax

    if k=˜1
        t(k+1)=t(k)-func(t(k))/func_d(t(k));
        erro(k)=abs((t(k)-t(k-1))/t(k));

    if erro<es
        break
endfor

t = t(k); % alterar

%%%%%%%%%%%%%%%%%%%%%%%%%%
endfunction

