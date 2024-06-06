{{ config(materialized='table') }}


SELECT * FROM {{ ref('int_main') }} WHERE release_date IS NOT NULL AND EXTRACT( YEAR FROM release_date) > 1980 