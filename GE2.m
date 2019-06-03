function [G,x] = GE2(A,b)   %Απαλοιφή Gauss με μερική οδήγηση
    [row,~] = size(A);
    G = [A,b];  %επαυξημενος πινακας
    
    for j = 1 : row - 1
        R = G(j:end,j);
        [~,max_i] = max(abs(R));
        G([j,max_i + j - 1],:) = G([max_i + j - 1,j],:);
        for i = j + 1 : row
            G(i,:) = G(i,:) - (G(i,j)/G(j,j)).*G(j,:);
        end
    end
    
    for i = row : -1 : 1
        S = 0;
        for j = i + 1 : row
           S = S + G(i,j)*x(j,1);
        end
        x(i,1) = (G(i,end) - S)/G(i,i);
    end
    
end