% _____Author_____
% Nazanin Mohammadrezaii
% _____Homework____
% HW1- sloving traveling salesman problem with Gentic algorithm
% _____Course_____
% Computational intelligence

clear;
clc;
close;

%% initialization
cities_number = 25;
parents_number = 50;
iteration_number = 600;

%% Generate a matrix called cities with the shape of (25,3)
cities = Cities(cities_number);

%% add (0,0,0) to the fisrt row only for plotting a view of the cities
cities_withorigin = [zeros(1,3);cities];
citylabel = ['A';'B';'C';'D';'E';'F';'G';'H';'I';'J';'K';'L';'M';'N';'O';'P';'Q';'R';'S';'T';'U';'V';'W';'X';'Y';'Z']; 
figure(1)
plot3(cities_withorigin(:,1), cities_withorigin(:,2), cities_withorigin(:,3),'r*')
title('A view of 25 cities')
text(cities_withorigin(:,1), cities_withorigin(:,2), cities_withorigin(:,3),citylabel,'VerticalAlignment','top')
grid on;
xlabel('x'); ylabel('y'); zlabel('z');

%% Generate the parents of generation 1 
initialparents = InitialParents(cities_number,parents_number);

%% Evaluate initial parents 
[sorted_parents,distance1] = Evaluation(parents_number,initialparents,cities);

%% Plot the best chromosome in generation 1(before anu children generation)
figure(2)
plot3([0 cities(sorted_parents(1,1),1)],[0 cities(sorted_parents(1,1),2)],[0 cities(sorted_parents(1,1),3)],'b*--')
hold on
plot3(cities(sorted_parents(1,1:25),1), cities(sorted_parents(1,1:25),2), cities(sorted_parents(1,1:25),3),'b*--')
hold on
plot3([cities(sorted_parents(1,25),1) 0],[cities(sorted_parents(1,25),2) 0],[cities(sorted_parents(1,25),3) 0],'b*--')
grid on
xlabel('x'); ylabel('y'); zlabel('z');
str = sprintf("best chromosome before starting the loop | total distance = %.2f",sorted_parents(1,26));
title(str)

%% mean distance of parents in generation 1
mean_distance = mean(distance1);

%% Main loop of genetic algorithm
for i=1:iteration_number 
    % generate the next generation(30 children)
    next_generation = GenerateChildren(sorted_parents(:,1:25));
    % evaluate the children
    [sorted_parents, distance2] = Evaluation(parents_number,next_generation,cities);
    % mean distance of new generation added to distance vector
    new_mean_distance = mean(distance2);
    mean_distance = [mean_distance; new_mean_distance];
    % Plot generation 1,100,500,600(last trial)
    if (i == 1 || i==100 || i==500 || i==600) 
        figure()
        plot3([0 cities(sorted_parents(1,1),1)],[0 cities(sorted_parents(1,1),2)],[0 cities(sorted_parents(1,1),3)],'b*--')
        hold on
        plot3(cities(sorted_parents(1,1:25),1), cities(sorted_parents(1,1:25),2), cities(sorted_parents(1,1:25),3),'b*--')
        hold on
        plot3([cities(sorted_parents(1,25),1) 0],[cities(sorted_parents(1,25),2) 0],[cities(sorted_parents(1,25),3) 0],'b*--')
        grid on
        xlabel('x'); ylabel('y'); zlabel('z');
        str = sprintf("trial %d | total distance = %.2f",i,sorted_parents(1,26));
        title(str)
        
        % Print the best Chromosome of this generation(Its alphabeticlabels,Its cost)
        str = sprintf('trial %d',i);
        disp(str)
        best_chromosome = sorted_parents(1,1:25); 
        lowest_cost = sorted_parents(1,26);
        BestParentSoFar(best_chromosome,lowest_cost)
        
        % Announce the end of trials
        if i == 600
            disp('The latest chromosome is the best choice for the salesman')
        end
 
    end

end


%% Plot change of average distance in each trial
figure()
plot(mean_distance,'m');
grid on
xlabel('Generations');
ylabel('Average Distance');
title('Average distance change over trials');

