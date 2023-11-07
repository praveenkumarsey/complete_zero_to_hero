{{ config(materialized='table', alias='first_model', tags=["nightly", "example"] ) }}

with source_data as (

    select
        1 as id,
        'ass' as name,
        'LON' as state,
        '2020-02-01 00:03:00.000'::timestamp as updated_at
    union all
    select
        2 as id,
        'CALCUT' as name,
        'CT' as state,
        '2020-01-02 00:00:00.000'::timestamp as updated_at
    union all
    select
        3 as id,
        'year' as name,
        'VTI' as state,
        '2020-01-02 00:01:00.000'::timestamp as updated_at
)

select *
from source_data
