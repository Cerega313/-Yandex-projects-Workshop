with 

source as (

    select * from {{ source('staging', 'users_user') }}

),

renamed as (

    select
        id as user_id,
        password,
        last_login,
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
        blocked_reason,
        removal_reason,
        last_ip_address,
        is_mobile_phone

    from source

)

select * from renamed