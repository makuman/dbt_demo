WITH BIKE AS (
    SELECT 
    distinct
    START_STATIO_ID as station_id,
    start_station_name as station_name,
    start_lat as station_lat,
    start_lng as start_station_lng

    FROM {{ref('stg_bike')}}
    where RIDE_ID != '"bikeid"'

)

select * from BIKE