{{ config(materialized="table") }}

with a as (
  select * from public.users_profile
),
u as (
  select * from {{ ref('stg_users_user') }}
)

select a.*
from a
left join u
  on a.user_id = u.id 

