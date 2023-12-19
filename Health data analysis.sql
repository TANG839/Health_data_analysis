-- 1. Count & percentage of F vs M that have ocd & -- average obsession score by gender
SELECT

Gender,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as abg_obs_score

FROM health_data.ocd_patient_dataset
GROUP BY 1
ORDER BY 2;

-- 2. Count of patients by ethnicities & their respective average obsession score

select
Ethnicity,
count(`Patient ID`) as patient_count,
avg(`Y-BOCS Score (Obsessions)`) as obs_score
FROM health_data.ocd_patient_dataset
Group by 1
Order by 2;


-- 3.number of people diagnosed with ocd MoM

-- alter Table health_data.ocd_patient_dataset
-- modify `OCD Diagnosis Date` date;               change this column to date format
select
date_format(`OCD Diagnosis Date`, '%Y-%m-01 00:00:00') as month,
count(`Patient ID`) patient_count
FROM health_data.ocd_patient_dataset
group by 1
Order by 1;



-- 4. What is the most common Obsession Type (Count) & it's respective Average Obsession Score

Select
`Obsession Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from health_data.ocd_patient_dataset
group by 1
Order by 2
;



-- 5. What is the most common Compulsion type (Count) & it's respective Average Obsession Score

Select
`Compulsion Type`,
count(`Patient ID`) as patient_count,
round(avg(`Y-BOCS Score (Obsessions)`),2) as obs_score
from health_data.ocd_patient_dataset
group by 1
Order by 2
;




