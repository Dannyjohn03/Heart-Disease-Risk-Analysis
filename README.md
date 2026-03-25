# Heart-Disease-Risk-Analysis

This project demonstrates how data analytics can transform raw health data into actionable insights for improving cardiovascular outcomes.

## 🩺 Introduction

Cardiovascular diseases remain one of the leading causes of morbidity and mortality globally. Early identification of at-risk individuals is essential for prevention, timely intervention, and improved health outcomes.
This project presents a data-driven analysis of heart disease risk factors using a structured dataset. By leveraging SQL for data processing and Power BI for visualization, the study aims to uncover patterns in demographic and clinical variables associated with heart disease.

## 🎯 Objectives

- To determine the prevalence of heart disease in the dataset
- To compare heart disease distribution across demographic groups
- To assess the relationship between clinical indicators and heart disease
- To identify high-risk population segments using relative risk analysis
- To present findings through an interactive Power BI dashboard

## 📂 Dataset Overview

**Source**: [Heart disease dataset](https://www.kaggle.com/datasets/neurocipher/heartdisease) from Kaggle.

- [Data](Data): Contains the CSV file of the dataset used
- [SQL](SQL): Contains the queries used to analyse and transform the dataset
- [Power BI](Power BI): Contains the .pbix file of the dashboard
- [Dashboard](Dashboard): Contains the pdf file of the dashboard.

### Key Features

- **Demographics**: Age, Sex
- **Clinical Measurements**: Cholesterol, Resting Blood Pressure, Maximum Heart Rate, Number of vessels coloured by fluoroscopic angiography
- **Diagnostic Indicators**: Chest Pain Type, Rest ECG, ST Slope, ST depression, Full Blood Sugar Over 120, Thallium Stress Test
- **Symptoms**: Exercise-induced angina
- **Target Variable**: Presence of Heart Disease (1 = Yes, 0 = No)

Each row represents an individual patient record

## 🛠 Methodology Overview

1. **Data Preparation**
   - Data type validation and correction
   - Standardization of categorical variable (e.g. sex, angina, chest pain type)
  
2. **Feature Engineering**: Created new variables
   - Age Groups: <40, 40-49, 50-59, 60+
   - Cholesterol Status: Normal vs High
   - BP Status: Normal vs High
  
3. **Exploratory Analysis**
   - Calculated:
      - Total Patients
      - Disease Prevalence
      - Average Clinical Values
   - Compared:
      - Age Groups
      - Sex
      - Symptoms
        
  4. **Data Modelling and Visualization**: The cleand and aggregated data wass imported into Power BI.

     **Key Steps:**
     - Creation of DAX measures (Prevalence, Relative Risk Index, etc)
     - Development of Dashboard
     - Use of slicers for dynamic filtering
     - Implementation of Conditional Formatting for clarity
    
  5. **KEY METRICS**

     - Heart Disease Prevalence
     - Disease rate by Group
     - Relative Risk Index
     - Risk Category

## 📈 Results and Findings

  - Significant proportion of patients have heart disease
  - Indicates a high disease burden

### 👥 Demographic Insights
  - Risk increases with age, with the higest rate observed in individuals aged 60 and above
  - Males show a higher prevalence compared to females, suggesting possible lifestyle and biological influences

### 🧪 Clinical Risk Factors
  - **Cholesterol**: Elevated cholesterol levels are associated with increased heart risk. Cholesterol level increases with age.
  - **Blood Pressure**: Higher resting blood pressures corresponds with increased prevalence and heart disease risk.

### 🫀 Symptoms and Diagnostics

  - **Exercise-induced angina**: It is a strong indicator of Heart disease.
  - **Chest Pain Type**: Asymptomatic chest pain is associated with increased risk of heart disease.
  - **ST Depression & EKG Results**: Elevated ST depression (oldpeak) and abnormal EKG results have increased heart disease risk.

### 🔥 Relative Risk Analysis (RRI)

RRI compares group risk to overall population

**Findings**
- High-risk Groups: Older males (60+) have the highest risk
- Moderate-risk Groups: Middle-aged individuals (40-59)
- Low-risk Groups: Young people (<40) showed less-than-average risk of heart disease.

### 🧩 Heatmap Insights
- Age + Sex combinations highlight priority populations
- Useful for targeted screening

## 💡 Discussions

The findings align with existing clinical knowledge that:
  - Age and sex are major determinants of cardiovascular risk
  - Lifestyle-related factors (BP, Cholesterol) significantly influence disease outcomes
  - Relative Risk Index adds deeper insight

## 🏥 Implications

### Clinical

- Prioritize early screening for older adults, especially males
- Regular monitoring of BP and cholesterol level is critical

### Public Health

- Preventive strategies should focus on modifiable risk factors
- Resource allocation can be optimized by targeting high-risk populations

## ⚠️ Limitations

- Dataset size is relatively small
- No longitudinal data
- Variables are limited

## ✅ Conclusion

- Data analytics can identify heart disease patterns
- SQL + Power BI enable:
  - Efficient analysis
  - Clear Visualization
- Supports evidence-based decision making

## 🚀 Recommendations

- Use larger datasets
- Add predictive modelling
- Include lifestyle variables

## 🛠 Tools Used

- SQL: Data Cleaning & Transformation
- Power BI: Visualization
- DAX: Advanced Metrics

## Author

Ogunleye Daniel Ayodeji
