function cities = Cities(cities_number)
% cities is a (25,3) random matrix 
% referring to each of our 25 cities
    cities = zeros(cities_number,3);
    x = (3-0).*rand(cities_number,1);
    y = (4-0).*rand(cities_number,1);
    z = (5-0).*rand(cities_number,1);
    cities(:,1) = x;
    cities(:,2) = y;
    cities(:,3) = z;
end