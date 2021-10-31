function [sorted_parents,distance] = Evaluation(parents_number,parents,cities)

% given a matrix called parents (30,25) each row refers to a chromosome
% we evaluate the parents matrix based on the distances inbetween cities

    distance = zeros(parents_number,1);
    for i=1:parents_number
        cost = 0;
        % cost = sum of euclidean distance between two adjacent cities
        for j=1:24
            dist = DistanceBetweenTwoCities(cities(parents(i,j),:),cities(parents(i,j+1),:));
            cost = cost + dist;
        end
        % the distance of (0,0,0) from the first city
        from_origin = DistanceBetweenTwoCities(cities(parents(i,1),:),[0 0 0]);
        % the distance of last city from (0,0,0)
        To_origin = DistanceBetweenTwoCities(cities(parents(i,25),:),[0 0 0]);
        % add them to cost
        cost = from_origin + cost + To_origin;
        % cost = total distances of each chromosome is being put in a vector called distance 
        distance(i) = cost;
    end
    % sort the parents from the lowest cost to the highest cost
    sorted_parents = sortrows([parents distance],26,'ascend');
end