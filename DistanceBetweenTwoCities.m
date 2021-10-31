function distance = DistanceBetweenTwoCities(city1,city2)
    % DistanceBetweenTwoCities calculates the distance between city1 and city2
    % city1 and city2 are (1,3) vectors in 3 dimentional space 

    distance = sqrt(sum((city1-city2).^2));
end