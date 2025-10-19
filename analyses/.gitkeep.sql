{{ config(materialized="table") }}

with a as (
select *
from public.bids_bid
ORDER BY created
limit 100)

select *
from a