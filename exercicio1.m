function t = exercicio1(func, func_d, x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t = zeros(imax,1);

t(1)=x0;
erro = zeros(imax,1);

for ii = 1:length(ii)-1
    if ii ~=1
        t(ii+1)=t(ii)-func(t(ii))/func_d(t(ii));
        erro(ii)=abs((t(ii)-t(ii-1))/t(ii));
        if erro<es
            break
        endif
    endif
endfor

t = t(ii); % alterar

%%%%%%%%%%%%%%%%%%%%%%%%%%
endfunction

