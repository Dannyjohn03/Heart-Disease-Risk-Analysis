-- Create a View
CREATE VIEW vw_heart_disease_analytics__ AS

WITH cleaned_data AS (
    SELECT
        -- Demographic Data
        Age,
        Sex,

        -- Standardized Clinical Features
        Chest_pain_type,
        BP,
        Cholesterol,
        FBS_over_120,
        EKG_results,
        Exercise_angina,
        Max_HR,
        ST_depression AS oldpeak,
        Slope_of_ST,
        Thallium,

        -- Target Variable
        Heart_Disease

    FROM Heart_Disease_Prediction
    
),

engineered_features AS (
    SELECT
        *,

        -- Age Grouping
        CASE 
            WHEN Age < 40 THEN '<40'
            WHEN Age BETWEEN 40 AND 49 THEN '40-49'
            WHEN Age BETWEEN 50 AND 59 THEN '50-59'
            ELSE '60+'
         END AS Age_Group,

        -- Blood Pressure Risk
        CASE 
            WHEN BP < 120 THEN 'Normal'
            WHEN BP BETWEEN 120 AND 129 THEN 'Elevated'
            WHEN BP BETWEEN 130 AND 139 THEN 'Stage 1'
            WHEN BP BETWEEN 140 AND 179 THEN 'Stage 2'
            ELSE 'Crisis'
        END AS BP_Status,

        -- Cholesterol Status
        CASE 
            WHEN cholesterol >= 240 THEN 'High'
            ELSE 'Normal'
        END AS Cholesterol_Status,

        -- Presence of Disease
        CASE
            WHEN Heart_Disease = 'Presence' THEN 1
            ELSE 0
        END AS Heart_dx_count

    FROM cleaned_data
),


final_analytics AS (
    SELECT

        -- Demographic data
        Age_Group,
        Sex,

        -- Clinical data
        Chest_pain_type,
        Heart_Disease,
        BP_Status,
        Cholesterol_Status,

        -- Patiets and cases
        COUNT(*) AS total_patients,
        SUM(Heart_dx_count) AS heart_disease_cases,

        --Rates and Averages
        ROUND(AVG(CAST(Age AS INT)), 2) AS avg_age,
        ROUND(AVG(Heart_dx_count)* 100, 2) AS heart_disease_rate_pct,
        ROUND(AVG(CAST(Cholesterol AS INT)), 2) AS avg_cholesterol,
        ROUND(AVG(CAST(BP AS INT)), 2) AS average_bp,
        ROUND(AVG(CAST(Max_HR AS INT)), 2) AS average_max_heart_rate,
        ROUND(AVG(oldpeak), 2) AS average_oldpeak

        FROM engineered_features
        GROUP BY
            Age_Group,
            Sex,
            Chest_pain_type,
            Heart_Disease,
            BP_Status,
            Cholesterol_Status

)

SELECT *
FROM final_analytics;