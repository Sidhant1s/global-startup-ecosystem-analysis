SELECT round_id, startup_id, startup_name, funding_date, "year", quarter, funding_stage, amount_million_usd,
pre_money_valuation_million_usd, post_money_valuation_million_usd, equity_dilution_pct, lead_investor, 
investor_type, num_investors, sector, country, region, city
FROM startup.funding_rounds;

select city,count(s.region ) as region  ,sector ,revenue_status from startups s group by s.region ,s.city,s.sector , s.revenue_status  order by count(region) desc ;

select s.startup_name,fr.funding_date,fr.year,fr.funding_stage,fr.lead_investor ,fr.investor_type ,fr.pre_money_valuation_million_usd, fr .lead_investor,
fr.investor_type,fr.num_investors from startups s join funding_rounds fr on s.startup_id=fr.startup_id  group by 
s.startup_name,fr.funding_date,fr.year,fr.funding_stage,fr.pre_money_valuation_million_usd, fr .lead_investor,
fr.investor_type,fr.num_investors,fr.lead_investor ,fr.investor_type
 ;

select startup_name,MAX(post_money_valuation_million_usd) as max_valuation  from funding_rounds fr  group by fr.startup_name,post_money_valuation_million_usd  
order by post_money_valuation_million_usd desc;