function t = exercicio1(func,func_d,x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t = zeros(imax, 1);
t(1) = x0;
erro = zeros(imax, 1);

for k = 1:length(t)-1 
  if k ~= 1
    erro(k) = abs(t(k) - t(k-1))/t(k)
    if erro(k) < es
      break
    endif
  endif
  t(k+1) = t(k) - func(t(k))/func_d(t(k))
endfor
t = t(k); % alterar

%%%%%%%%%%%%%%%%%%%%%%%%%%