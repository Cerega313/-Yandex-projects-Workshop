with 

source as (

    select * from {{ source('staging', 'users_user') }}

),

renamed as (

    select
        id as user_id,
        is_superuser,
        email,
        is_staff,
        is_active,
        date_joined,
        phone,
        created_by_id,
        hide_calls,
        blocked_at,
        blocked_by_id,
        blocked_reason

    from source

)

select * from renamed