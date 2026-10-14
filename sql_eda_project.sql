-- exploratory data analysis


select *
from layoffs_staging2;

select max(total_laid_off), max(percentage_laid_off)
from layoffs_staging2;

select *
from layoffs_staging2
where percentage_laid_off = 1;

-- company layoffs summary

select company, sum(total_laid_off)
from layoffs_staging2
group by company
order by 2 desc;

-- date range analysis

select min(`date`), max(`date`)
from layoffs_staging2;

select company, sum(total_laid_off)
from layoffs_staging2
group by company
order by 2 desc;

-- industry and country trends


select industry, sum(total_laid_off)
from layoffs_staging2
group by industry
order by 2 desc;

select country, sum(total_laid_off)
from layoffs_staging2
group by country
order by 2 desc;

-- yearly and stage analysis 

select Year(`date`), sum(total_laid_off)
from layoffs_staging2
group by Year(`date`)
order by 1 desc;

select stage, sum(total_laid_off)
from layoffs_staging2
group by stage
order by 1 desc;

-- monthly rolling total

select substring(`date` ,1,7) as `month`, sum(total_laid_off)
from layoffs_staging2
where substring(`date` ,1,7) is not null
group by `month` 
order by 1 asc;

with ROLLING_TOTAL as
(
select substring(`date` ,1,7) as `month`, sum(total_laid_off) total_laid_off
from layoffs_staging2
where substring(`date` ,1,7) is not null
group by `month` 
order by 1 asc
)
select `month`, total_laid_off, sum(total_laid_off) over(order by `month`) as rolling_total
from ROLLING_TOTAL;

-- company ranking by year

select company, sum(total_laid_off)
from layoffs_staging2
group by company
order by 2 desc;

select company, Year(`date`), sum(total_laid_off)
from layoffs_staging2
group by company, Year(`date`)
order by 3 desc;

with company_year (company, years, total_laid_off)as
(
select company, Year(`date`), sum(total_laid_off)
from layoffs_staging2
group by company, Year(`date`)
), company_year_rank as
(
select *, dense_rank() over(partition by years order by total_laid_off desc) as ranking
from company_year
where years is not null
)
select * 
from company_year_rank
where ranking <= 5
;

