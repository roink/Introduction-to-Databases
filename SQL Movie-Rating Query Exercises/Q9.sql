/*    Find the difference between the average rating of movies released before 1980 and the average rating of movies released after 1980. (Make sure to calculate the average rating for each movie, then the average of those averages for movies before 1980 and movies after. Don't just calculate the overall average rating before and after 1980.)        */
select max(H)-min(H)
from(
    select avg(spread) as H
    from(
        select title, year, (avg(stars)) as spread
        from Movie join Rating R1 using(mID)
        group by mID) as S
    group by year<1980)
