with 

source as (

    select * from {{ source('staging', 'bids_bid') }}

),

renamed as (

    select
        id as bid_id,
        bid_type,
        quantity,
        created,
        product_id,
        company_id,
        created_by_id,
        modified,
        owner_id,
        address_id,
        is_private,
        can_deliver,
        status,
        group_id,
        external_id,
        source,
        end_date,
        parent_id,
        start_date,
        closed_at,
        season_id,
        owner_delivery,
        owner_delivery_address_id,
        aground_imputs,
        tax_regime,
        bid_tag,
        basis_expiration,
        contract_type,
        expires_at,
        owner_delivery_distance,
        symbol,
        basis,
        futures_price,
        price,
        hedge_ticket,
        is_firm

    from source

)

select * from renamed