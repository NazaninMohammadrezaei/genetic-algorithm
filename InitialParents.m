function parents_gen1 = InitialParents(cities_number,parents_number)
% generate the first generation

parents_gen1 = zeros(parents_number,cities_number);
for i=1:parents_number
    % randperm(25,25) generates 25 random numbers from[1,25]
    parents_gen1(i,:) = randperm(25,25);
end

end


