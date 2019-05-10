/*    Some reviewers didn't provide a date with their rating. Find the names of all reviewers who have ratings with a NULL value for the date.    */
select name
from Reviewer join Rating using(rID)
where ratingDate is null;

