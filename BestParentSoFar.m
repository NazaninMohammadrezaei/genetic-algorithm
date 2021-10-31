function BestParentSoFar(best_chromosome,lowest_cost)
    % Best Chromosome (Its labels,Its cost)
    
    % exclude A which represents the origin(0,0,0)from labels 
    citylabel_excluded_origin = ['B';'C';'D';'E';'F';'G';'H';'I';'J';'K';'L';'M';'N';'O';'P';'Q';'R';'S';'T';'U';'V';'W';'X';'Y';'Z']; 
    best_chromosome_labels = '';
    for i=1:25
        best_chromosome_labels = append(best_chromosome_labels,citylabel_excluded_origin(best_chromosome(1,i)));
    end

    % add A in both sides of our chromosome as (0,0,0)
    disp('The best chromosome :')
    disp(append('A',best_chromosome_labels,'A'))
    disp('With lowest distance :')
    disp(lowest_cost)
end

