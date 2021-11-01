# Genetic_Algorithm
- The goal is to solve travelling salesman problem with genetic algorithm:
     - Generate 25 random cities in the three dimensional space where 0<x_city<3 , 0<y_city<4 , 0<z_city<5
     - Encode these 25 points with alphabets from B to Z
     - Encode the origin (0,0,0) as A
     - Find the shortest way of starting from (0,0,0), crossing each city one and only one time, coming back to (0,0,0)

- A general view of 25 random cities is plotted:

![View_Of_25_Cities](https://user-images.githubusercontent.com/88426435/139630692-ee0aecab-40e9-4040-8153-583fa2248658.png)

- We Produce 50 chromosomes as initial parents (InitialParents.m)
     - example of a chromosome : [5 16 3 1 25 20 14...9] 

- Evaluate the generation :
     - chromosome cost : the distance between each two cities in a row + distance of the first city from (0,0,0) + distance of the last city from (0,0,0)

- Produce the next generation (children) with three methods:
     - Reproduction : 10 parents with lowest costs going to the next generation without any change
     - Mutation : Choose 20 parents. Swap two random genes of each parents
     - Cross-over :  Choose 20 parents.Split them from a random point.Substiute one part for another

- Repeat the Loop for 600 iterations and check the reduction of the taken distance over the generations







