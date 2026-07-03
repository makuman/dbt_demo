WITH CTE AS (
    SELECT 
    T.*,
    w.*
    FROM {{ref('trip_fact')}} t
    LEFT JOIN {{ ref('daily_weather') }} w
    on t.TRIP_DATE = w.daily_weather

    limit 10
)

select 
* 
from CTE