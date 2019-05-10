/*    Find the titles of all movies that have no ratings.   */
select title
from Movie

except

select title
from Movie join Rating using(mID);
