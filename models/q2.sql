{{
    config(
        materialized='incremental'
    )
}}
select * from msba6330.lab7.weather

{% if is_incremental() %}

  where date_day > (select max(date_day) from {{ this }})

{% endif %}