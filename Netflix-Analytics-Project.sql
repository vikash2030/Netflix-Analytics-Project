CREATE DATABASE NAP;


USE NAP;


# Execute the query: 

SELECT AVG(imdbAverageRating)
FROM df_movies
WHERE releaseYear > 2010;    


# List all movies of the 'Action' genre.
SELECT title
FROM df_movies
WHERE genre_1 = 'Action' OR genre_2 = 'Action' OR genre_3 = 'Action' OR genre_4 = 'Action' OR genre_5 = 'Action' OR genre_6 = 'Action';        
            
            
 # Find the top 5 countries with the most movies available.
 
SELECT country, COUNT(*) AS movie_count
FROM df_countries
GROUP BY country
ORDER BY movie_count DESC

      
            
CREATE VIEW genre_popularity AS
    SELECT g.genre, COUNT(m.imdbId) AS movie_count
    FROM df_genres g
    JOIN df_movies m ON g.imdbId = m.imdbId
    GROUP BY g.genre
    ORDER BY movie_count DESC;     

SELECT *
FROM genre_popularity
LIMIT 5;





CREATE VIEW ratings_trend AS
SELECT releaseYear, AVG(imdbAverageRating) AS average_rating
FROM df_movies
GROUP BY releaseYear
ORDER BY releaseYear;

SELECT *
FROM ratings_trend




CREATE VIEW release_year_distribution AS
SELECT releaseYear, COUNT(*) AS movie_count
FROM df_movies
GROUP BY releaseYear
ORDER BY releaseYear;


SELECT *
FROM release_year_distribution
LIMIT 5;

          
            


