function x = triangularSuperior(A,b)
    [numLinhas, numColunas] = size(A);
    
    A_aumentada = [A b];
    
    
    //transformar em triangular.
    for i=1:1:numColunas-1
        pivo = A_aumentada(i,i);
        
        for j=i+1:1:numLinhas
            termoSubtracao = A_aumentada(j,i)/pivo;
       
            A_aumentada(j,:) = A_aumentada(j,:) - A_aumentada(i,:)*termoSubtracao;
        end
        
    end
    
    x = A_aumentada;


endfunction
