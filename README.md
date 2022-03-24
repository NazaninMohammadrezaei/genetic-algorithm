# Genetic_Algorithm

# Goal
- The goal is to solve travelling salesman problem with genetic algorithm:
     - Generate 25 random cities in the three dimensional space where 0<x_city<3 , 0<y_city<4 , 0<z_city<5
     - Encode these 25 points with alphabets from B to Z
     - Encode the origin (0,0,0) as A
     - Find the shortest way of starting from (0,0,0), crossing each city one and only one time, coming back to (0,0,0)

- A general view of 25 random cities is plotted:

![View_Of_25_Cities](https://user-images.githubusercontent.com/88426435/139630692-ee0aecab-40e9-4040-8153-583fa2248658.png)

# Process
- We Produce 50 chromosomes as initial parents (InitialParents.m)
     - example of a chromosome : [5 16 3 1 25 20 14...9] 

- Evaluate the generation :
     - chromosome cost : the distance between each two cities in a row + distance of the first city from (0,0,0) + distance of the last city from (0,0,0)

- Produce the next generation (children) with three methods:
     - Reproduction : 10 parents with lowest costs going to the next generation without any change
     - Mutation : Choose 20 parents. Swap two random genes of each parents
     - Cross-over :  Choose 20 parents.Split them from a random point.Substiute one part for another

- Repeat the Loop for 600 iterations and check the reduction of the taken distance over the generations

# Results

![1](https://user-images.githubusercontent.com/88426435/139634288-9ca06e5d-573a-49b7-a988-136a514ddf42.png)
![100](https://user-images.githubusercontent.com/88426435/139634305-4f9653c6-e8d6-4c25-86cd-72480284b8bb.png)
![500](https://user-images.githubusercontent.com/88426435/139634315-bab88e41-10dd-446a-ae70-5d76d84b9deb.png)

- Total distance reduction over generations

![Average_Distance_Over_Trials](https://user-images.githubusercontent.com/88426435/139632840-00ed646e-85c5-4487-adab-e9eeb533caf3.png)

- The best chromosome 

![Capture](https://user-images.githubusercontent.com/88426435/139634281-fbfabda8-6e35-4a96-ba00-d868fbca9348.PNG)

