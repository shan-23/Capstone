SELECT *
FROM 
[dbo].[Symptom-severity]
,[dbo].[symptom_precaution]
,[dbo].[dataset]
,[dbo].[symptom_Description]

select distinct(a.Disease),b.Disease,c.Disease
from 
[dbo].[symptom_Description] a
,[dbo].[symptom_precaution] b
, [dbo].[dataset] c

select distinct (a.Disease),distinct (b.Disease),c.Disease
from [dbo].[dataset] a,

---union 
---select distinct (disease)
 [dbo].[symptom_precaution] b

---union
---select distinct (disease)
, [dbo].[symptom_Description]c
---order by 1;
order by 1,2,3

select *
from [dbo].[dataset]
go
drop table if exists stg.Dataset
declare @uniquelet3 varchar(255)
set @uniquelet3 = 'D00'
select  *,
concat(@uniquelet3,ROW_NUMBER()over(order by a.disease )  ) as 'DiseaseId'
iif(concat(@uniquelet3,ROW_NUMBER()over(order by a.disease )  ) =)
from [dbo].[dataset]a


declare @uniquelet223 varchar(255)
set @uniquelet223 = 'D00';
WITH TRIAL_CTE(Disease)
AS 
(
 SELECT DISEASE
 ---concat(@uniquelet223,ROW_NUMBER()over(order by Disease )  ) as Disease_ID

from [dbo].[dataset] a
---where Disease like 'D%'

)


SELECT DISEASE,

---,iif (DISEASE=DISEASE,DISEASE,'noll') as 'getright'
IIF(DISEASE=DISEASE,concat(@uniquelet223,ROW_NUMBER()over(order by Disease )),'noll') as 'getright'

into stg.realdisease
from TRIAL_CTE
GROUP BY DISEASE
ORDER BY 1;



go
drop table if exists stg.Vessel
declare @uniquelet3 varchar(255)
set @uniquelet3 = 'V00'
select distinct bn.ARvessel ,BN.ID,
concat(@uniquelet3,ROW_NUMBER()over(order by bn.ARvessel )  ) as 'VesseldId'


select *
from [dbo].[symptom_Description]

select *
from[dbo].[symptom_precaution]

select *
from [dbo].[Symptom-severity] s
inner join [dbo].[dataset] d


select *
from [dbo].[dataset]
where Symptom like 'w%'

declare @uniquelet8 varchar(255)
set @uniquelet8 = 'V00';

with NETrial_CTE (Reform,SymptId)
as 
(

select Symptom_1 as 'Reform'
,concat(@uniquelet8,ROW_NUMBER()over(order by Symptom_1 )  ) as 'SymptId'
from [dbo].[dataset]
where Symptom_1 != ''
union
select Symptom_2
from [dbo].[dataset]
where Symptom_2 != ''
union 
select Symptom_3
from [dbo].[dataset]
where Symptom_3 != ''
UNION 
select Symptom_4
from [dbo].[dataset]
where Symptom_4 != ''
UNION
select Symptom_5
from [dbo].[dataset]
where Symptom_5 != ''
union 
select Symptom_6
from [dbo].[dataset]
where Symptom_6 != ''
union 
select Symptom_7
from [dbo].[dataset]
where Symptom_7 != ''
union
select Symptom_8
from [dbo].[dataset]
where Symptom_8 != ''
union
select Symptom_9
from [dbo].[dataset]
where Symptom_9 != ''
union 
select Symptom_10
from [dbo].[dataset]
where Symptom_10 != ''
union
select Symptom_11
from [dbo].[dataset]
where Symptom_11 != ''
union
select Symptom_12
from [dbo].[dataset]
where Symptom_12 != ''
union
select Symptom_13
from [dbo].[dataset]
where Symptom_13 != ''
union
select Symptom_14
from [dbo].[dataset]
where Symptom_14 != ''
union
select Symptom_15
from [dbo].[dataset]
where Symptom_15 != ''
union
select Symptom_16
from [dbo].[dataset]
where Symptom_16 != ''
union
select Symptom_17
from [dbo].[dataset]
where Symptom_17 != ''
)



select Reform
--into stg.Reform 
from NETrial_CTE 


declare @uniquelet18 varchar(255)
set @uniquelet18 = 'V00'


select *
,concat(@uniquelet18,ROW_NUMBER()over(order by Reform)  ) as 'SymptId'
---into stg.rt
from [stg].[Reform]


declare @uniquelet228 varchar(255)
set @uniquelet228 = 'V00'
select* 

,concat(@uniquelet228,ROW_NUMBER()over(order by Symptom)  ) as 'SymptId'
--into stg.r
from[dbo].[Symptom-severity]
where Symptom='prognosis' and  Sym

select *
from stg.rt
right join stg.r
on r.SymptId =rt.SymptId
where r.SymptId =rt.SymptId
select* 
from [dbo].[Symptom-severity]
order by Symptom






