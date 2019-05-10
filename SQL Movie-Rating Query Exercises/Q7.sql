/*    For each movie that has at least one rating, find the highest number of stars that movie received. Return the movie title and number of stars. Sort by movie title.      */
select title, max(stars)
from Movie join Rating R1 using(mID)
group by title
order by title

