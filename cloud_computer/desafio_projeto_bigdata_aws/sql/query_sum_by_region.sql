select region,
	sum(population)
from "population-db-us"."population"
where region='Sul'
group by region;
