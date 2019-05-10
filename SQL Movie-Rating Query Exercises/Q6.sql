/*    For all cases where the same reviewer rated the same movie twice and gave it a higher rating the second time, return the reviewer's name and the title of the movie.      */
select R.name, M.title
from Movie M, Rating R1, Reviewer R
where M.mID=R1.mID and R.rID=R1.rID and exists (select * from Rating R2 where R2.rID=R1.rID and R2.mID=R1.mID and R2.ratingDate>R1.ratingDate and R2.stars>R1.stars)
