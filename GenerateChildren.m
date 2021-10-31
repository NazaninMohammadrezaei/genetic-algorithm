function children = GenerateChildren(parents)
% given the matrix of parents generate the matrix of children
% among 50 parents I apply reproduction ,cross_over,mutation

children = zeros(50,25);

n_reprod = 10;    %10 reproduction 
n_mutation = 20;   %20 mutation 
n_cross = 20;   %20 cross_over

%10 best chromosomes(first 10 rows of sorted_parents) for reproduction
children(1:n_reprod, :) = parents(1:n_reprod, :);    
%20 random Chromosomes for mutation
city_mut = randperm(25,n_mutation); 
%20 random Chromosomes for cross_over
city_cross = randperm(25,n_cross); 

for i=1:n_mutation
    % Select 2 genes for meutation
    mutation_points = randperm(25, 2);   
    gene1 = parents(city_mut(i), mutation_points(1));
    gene2 = parents(city_mut(i), mutation_points(2));
    % Swap 2 chosen genes
    parents(city_mut(i), mutation_points(2)) = gene1;   
    parents(city_mut(i), mutation_points(1)) = gene2;
    % Add these generated chromosomes to children
    children(10+i,:) = parents(city_mut(i),:); 
end

for i=1:n_cross
   %Select a point for Cross over
   cross_over_point = 1+randperm(23, 1);   
   % flip the chromosome with respect to the cross_over_point
   crossover_child = [parents(city_cross(i), cross_over_point:25) parents(city_cross(i), 1:cross_over_point-1)];   
   %add to children
   children(i+30,:) = crossover_child;
end

end