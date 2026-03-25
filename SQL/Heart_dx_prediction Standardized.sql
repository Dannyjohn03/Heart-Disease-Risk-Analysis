-- Standardize categrical variables

-- Sex
UPDATE Heart_Disease_Prediction
SET Sex = CASE
    WHEN Sex = 0 THEN 'Female'
    ELSE 'Male'
END

-- Chest Pain Type
UPDATE Heart_Disease_Prediction
SET Chest_pain_type = CASE 
    WHEN Chest_pain_type = 1 THEN 'Typical Angina'
    WHEN Chest_pain_type = 2 THEN 'Atypical Angina'
    WHEN Chest_pain_type = 3 THEN 'Non-anginal pain'
    ELSE 'Asymptomatic'
END

-- Fasting Blood Sugar
UPDATE Heart_Disease_Prediction
SET FBS_over_120 = CASE 
    WHEN FBS_over_120 = 0 THEN '<120'
    ELSE '>120'
END

-- Resting Electrocardiogram
UPDATE Heart_Disease_Prediction
SET EKG_results = CASE 
    WHEN EKG_results = 0 THEN 'Normal'
    WHEN EKG_results = 1 THEN 'STT Abnormality'
    ELSE 'LVH'
END

-- Thallium Stress Test
UPDATE Heart_Disease_Prediction
SET Thallium = CASE 
    WHEN Thallium = 3 THEN 'Normal'
    WHEN Thallium = 6 THEN 'Moderate Ischemia'
    ELSE 'Clinically Significant'
END

