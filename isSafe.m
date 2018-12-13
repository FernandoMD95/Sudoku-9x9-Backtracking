function r = isSafe(k,c,G)
%Autor: Fernando Medina Delgado
%Asignatura: Sistema Inteligentes (2018-2019)
%Algoritmo: Backtracking

    r=1;
    %---REVISAR FILA---
    %Hacia la izquierda
    if mod(k,9) == 0 %SI EL RESTO ES 0 LA POSICION k SE ENCUENTRA EN LA COLUMNA RESULTANTE
        col = floor(k/9);
    else            %SI NO SE SUMA 1 PARA CORREGIR LA COLUMNA
        col = floor(k/9)+1;
    end
    q=k;
    q = q-9;
    col = col-1;
    while(col >=1 && r==1)
        if(G(q)==c)
            r=0;
        end
        q = q-9;
        col = col-1;
    end
    %Hacia la derecha
    if mod(k,9) == 0 
        col = floor(k/9);%SI EL RESTO ES 0 LA POSICION k SE ENCUENTRA EN LA COLUMNA RESULTANTE
    else
        col = floor(k/9)+1;%SI NO SE SUMA 1 PARA CORREGIR LA COLUMNA
    end
    q=k;
    q = q+9;
    col = col+1;
    while(col<=9 && r==1)
        if(G(q)==c)
            r=0;
        end
        q = q+9;
        col = col+1;
    end
    %---REVISAR COLUMNA---
    %Hacia arriba
    if mod(k,9) == 0 %SI EL RESTO ES 0 LA POSICION k SE ENCUENTRA EN LA FILA 9
        row = 9;
    else
        row = mod(k,9);
    end
    q=k;
    q = q-1;
    row = row-1;
    while(row >=1 && r==1)
        if(G(q)==c)
            r=0;
        end
        q = q-1;
        row = row-1;
    end
    %Hacia abajo
    if mod(k,9) == 0 %SI EL RESTO ES 0 LA POSICION k SE ENCUENTRA EN LA FILA 9
        row = 9;
    else
        row = mod(k,9);
    end
    q=k;
    q = q+1;
    row = row+1;
    while(row <=9 && r==1)
        if(G(q)==c)
            r=0;
        end
        q = q+1;
        row = row+1;
    end
    
    if (r==1)
        q=k;
        %---REVISAR CUADRANTE---
        if mod(k,9) == 0 %SI EL RESTO ES 0 LA POSICION k SE ENCUENTRA EN LA COLUMNA RESULTANTE
            col = floor(k/9);
        else            %SI NO SE SUMA 1 PARA CORREGIR LA COLUMNA
            col = floor(k/9)+1;
        end
        %Si la posicion k está en la primera fila del cuadrante
        if(mod(k,3) == 1)
            %Si la posicion k esta en la posicion(1,1) del cuadrante
            if(col==1 || col==4 || col==7)
                if(G(k+1) == c || G(k+2) == c || G(k+9) == c || G(k+10) == c || G(k+11) == c || G(k+18) == c || G(k+19) == c || G(k+20) == c)
                    r=0;
                end
            end
            %Si la posicion k esta en la posicion(1,2) del cuadrante
            if(col==2 || col==5 || col==8)
                if(G(k-9) == c || G(k-8) == c || G(k-7) == c || G(k+1) == c || G(k+2) == c || G(k+9) == c || G(k+10) == c || G(k+11) == c)
                    r=0;
                end
            end
            %Si la posicion k esta en la posicion(1,3) del cuadrante
            if(col==3 || col==6 || col==9)
                if(G(k-18) == c || G(k-17) == c || G(k-16) == c || G(k-9) == c || G(k-8) == c || G(k-7) == c || G(k+1) == c || G(k+2) == c)
                    r=0;
                end
            end


        %Si la posicion k está en la segunda fila del cuadrante
        elseif(mod(k,3) == 2)
            %Si la posicion k esta en la posicion(2,1) del cuadrante
            if(col==1 || col==4 || col==7)
                if(G(k-1) == c || G(k+1) == c || G(k+8) == c || G(k+9) == c || G(k+10) == c || G(k+17) == c || G(k+18) == c || G(k+19) == c)
                    r=0;
                end  
            end
            %Si la posicion k esta en la posicion(2,2) del cuadrante
            if(col==2 || col==5 || col==8)
                if(G(k-10) == c || G(k-9) == c || G(k-9) == c || G(k-1) == c || G(k+1) == c || G(k+8) == c || G(k+9) == c || G(k+10) == c)
                    r=0;
                end  
            end
            %Si la posicion k esta en la posicion(2,3) del cuadrante
            if(col==3 || col==6 || col==9)
                if(G(k-19) == c || G(k-18) == c || G(k-17) == c || G(k-10) == c || G(k-9) == c || G(k-8) == c || G(k-1) == c || G(k+1) == c)
                    r=0;
                end 
            end
        %Si la posicion k está en la tercera fila del cuadrante
        else
            %Si la posicion k esta en la posicion(3,1) del cuadrante
            if(col==1 || col==4 || col==7)
                if(G(k-2) == c || G(k-1) == c || G(k+7) == c || G(k+8) == c || G(k+9) == c || G(k+16) == c || G(k+17) == c || G(k+18) == c)
                    r=0;
                end
            end
            %Si la posicion k esta en la posicion(3,2) del cuadrante
            if(col==2 || col==5 || col==8)
                if(G(k-11) == c || G(k-10) == c || G(k-9) == c || G(k-2) == c || G(k-1) == c || G(k+7) == c || G(k+8) == c || G(k+9) == c)
                    r=0;
                end 
            end
            %Si la posicion k esta en la posicion(3,3) del cuadrante
            if(col==3 || col==6 || col==9)
                if(G(k-20) == c || G(k-19) == c || G(k-18) == c || G(k-11) == c || G(k-10) == c || G(k-9) == c || G(k-2) == c || G(k-1) == c)
                    r=0;
                end  
            end
        end
     end
end