function G = resolverSudoku(k,m,G)
%Autor: Fernando Medina Delgado
%Asignatura: Sistema Inteligentes (2018-2019)
%Algoritmo: Backtracking

   c=1;
   while (c<=length(G) && k <= length(G).^2)
       if(G(k) == 0) 
           if (isSafe(k,c,G) == 1)
               G(k) = c;
               if(k+1 <= m)
                   x = G(k+1);
                   G = resolverSudoku(k+1,m,G);
                   if(length(find(~G))~=0)
                       G(k)=0;
                   end
               end
           end
       else
           c=10;
           G = resolverSudoku(k+1,m,G);
       end
       c=c+1;
   end
end


