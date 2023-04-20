//** Creation of Staging tables to cleanse data 
----- Create a cte  and a staging table in order to create a unique I.D for eaach disease 
----- in the dataset/Symptom Severity and Symptom precaution tables
***//

 ---- Creating a unique Disease I.D and Cleansing the Symptom Description Table-----


declare @uniquelet223 varchar(255)
set @uniquelet223 = 'D00';
WITH TRIAL_CTE(Disease,Description)
AS 
(
 SELECT distinct(DISEASE),Description
---concat(@uniquelet223,ROW_NUMBER()over(order by Disease )  ) as Disease_ID

from dbo.symptom_Description a
---where Disease like 'D%'

)


SELECT DISEASE,Description,

---iif (DISEASE=DISEASE,DISEASE,'noll') as 'getright',
IIF(DISEASE=DISEASE,concat(@uniquelet223,ROW_NUMBER()over(order by Disease )),'null')  as Disease_ID

into stg.Symptom
from TRIAL_CTE
GROUP BY DISEASE,Description
ORDER BY 1;

------ merged the new table connected with the dataset table in order to properly record each ID without 
---- id being expanded 

-------- Cleaning of the Symptom Severity Table --------

delete from [dbo].[Symptom-severity] where Symptom='prognosis';
delete from [dbo].[Symptom-severity] where Symptom='fluid_overload ' and weight=4;


update [dbo].[Symptom-severity]
set
Symptom = 'foul_smell_of urine'
where 
Symptom='foul_smell_ofurine'

update [dbo].[Symptom-severity]
set
Symptom = 'dischromic _patches'
where 
Symptom='dischromic_patches'
update [dbo].[Symptom-severity]
set
Symptom = 'spotting_ urination'
where 
Symptom='spotting_urination'

-------- Adding a new record to account for the N/A records in the dataset
insert into [dbo].[Symptom-severity] (Symptom,weight)
values('0',0)

select *
from dbo.[Symptom-severity] 
order by 1

-------- CLEANING OF THE  Symptom- Severity Table ---------

-------- INCORRECT SPELLING OF  Dimorphic hemorrhoids(piles)

update dbo.dataset
set
Disease = 'Dimorphic hemorrhoids(piles)'
where 
Disease='Dimorphic hemmorhoids(piles)'

-------- Create a unique ID for disease in the dataset table 
select
iif(b.Disease=a.Disease,a.Disease_ID,'null') as 'Disease_id',
      
	  b.Disease
       ,b.Symptom_1
       ,b.Symptom_2
       ,b.Symptom_3
	   ,b.Symptom_4
	   ,b.Symptom_5
	   ,b.Symptom_6
	   ,b.Symptom_7
	   ,b.Symptom_8
	   ,b.Symptom_9
	   ,b.Symptom_10
	   ,b.Symptom_11
	   ,b.Symptom_12
	   ,b.Symptom_13
	   ,b.Symptom_14
	   ,b.Symptom_15
	   ,b.Symptom_16
	   ,b.Symptom_17
into stg.D_dataset

from dbo.dataset b
inner join stg.Symptom a
on a.DISEASE=b.Disease
order by b.Disease

------- Taking out leading space out of the dataset 


update 
 stg.D_dataset
 set Symptom_1=LTRIM((Symptom_1))

 update 
 stg.D_dataset
 set Symptom_2=LTRIM((Symptom_2))
 update 
 stg.D_dataset
 set Symptom_3=LTRIM((Symptom_3))

 update 
 stg.D_dataset
 set Symptom_4=LTRIM((Symptom_4))

 update 
 stg.D_dataset
 set Symptom_5=LTRIM((Symptom_5))

 update 
 stg.D_dataset
 set Symptom_6=LTRIM((Symptom_6))

 update 
 stg.D_dataset
 set Symptom_7=LTRIM((Symptom_7))

 update 
 stg.D_dataset
 set Symptom_8=LTRIM((Symptom_8))

 update 
 stg.D_dataset
 set Symptom_9=LTRIM((Symptom_9))

 update 
 stg.D_dataset
 set Symptom_10=LTRIM((Symptom_10))

 update 
 stg.D_dataset
 set Symptom_11=LTRIM((Symptom_11))

 update 
 stg.D_dataset
 set Symptom_12=LTRIM((Symptom_12))

 update 
 stg.D_dataset
 set Symptom_13=LTRIM((Symptom_13))

 update 
 stg.D_dataset
 set Symptom_14=LTRIM((Symptom_14))

 update 
 stg.D_dataset
 set Symptom_15=LTRIM((Symptom_15))

 update 
 stg.D_dataset
 set Symptom_16=LTRIM((Symptom_16))

 update 
 stg.D_dataset
 set Symptom_17=LTRIM((Symptom_17))

 -------- Replacing null values 
 update stg.D_dataset
 set Symptom_1 = '0'
 Where Symptom_1 ='';

 update stg.D_dataset
 set Symptom_2 = '0'
 Where Symptom_2 = '';

 update stg.D_dataset
 set Symptom_3 = '0'
 Where Symptom_3 ='';

 update stg.D_dataset
 set Symptom_4 = '0'
 Where Symptom_4 = '';

 update stg.D_dataset
 set Symptom_5 = '0'
 Where Symptom_5 = '';

 update stg.D_dataset
 set Symptom_6 = '0'
 Where Symptom_6 = '';

 update stg.D_dataset
 set Symptom_7 = '0'
 Where Symptom_7 = '';

 update stg.D_dataset
 set Symptom_8 = '0'
 Where Symptom_8 = '';

 update stg.D_dataset
 set Symptom_9 = '0'
 Where Symptom_9 = '';

 update stg.D_dataset
 set Symptom_10 = '0'
 Where Symptom_10 = '';

 update stg.D_dataset
 set Symptom_11 = '0'
 Where Symptom_11 ='';

 update stg.D_dataset
 set Symptom_12 = '0'
 Where Symptom_12 ='';

 update stg.D_dataset
 set Symptom_13 = '0'
 Where Symptom_13 ='';

 update stg.D_dataset
 set Symptom_14 = '0'
 Where Symptom_14= '';

 update stg.D_dataset
 set Symptom_15 = '0'
 Where Symptom_15 ='';

 update stg.D_dataset
 set Symptom_16 = '0'
 Where Symptom_16 ='';

 update stg.D_dataset
 set Symptom_17 = '0'
 Where Symptom_17 ='';



 select d.Disease_id
        ,d.Disease
		,d.Symptom_1
		,iif(d.Symptom_1=s1.Symptom,s1.weight,0)as 'Symp1_weight'
		,d.Symptom_2
		,iif(d.Symptom_2=s2.Symptom,s2.weight,0)as 'Symp2_weight' 
		,d.Symptom_3
		,iif(d.Symptom_3=s3.Symptom,s3.weight,0)as 'Symp3_weight'
		,d.Symptom_4
		,iif(d.Symptom_4=s4.Symptom,s4.weight,0)as 'Symp4_weight'
		,d.Symptom_5
		,iif(d.Symptom_5=s5.Symptom,s5.weight,0)as 'Symp5_weight'
		,d.Symptom_6
		,iif(d.Symptom_6=s6.Symptom,s6.weight,0)as 'Symp6_weight'
		,d.Symptom_7
		,iif(d.Symptom_7=s7.Symptom,s7.weight,0)as 'Symp7_weight'
		,d.Symptom_8
		,iif(d.Symptom_8=s8.Symptom,s8.weight,0)as 'Symp8_weight'
		,d.Symptom_9
		,iif(d.Symptom_9=s9.Symptom,s9.weight,0)as 'Symp9_weight'
	     ,d.Symptom_10
		,iif(d.Symptom_10=s10.Symptom,s10.weight,0)as 'Symp10_weight'
		,d.Symptom_11
		,iif(d.Symptom_11=s11.Symptom,s11.weight,0)as 'Symp11_weight'
		,d.Symptom_12
	   ,iif(d.Symptom_12=s12.Symptom,s12.weight,0)as 'Symp12_weight'
	   ,d.Symptom_13
	   ,iif(d.Symptom_13=s13.Symptom,s13.weight,0)as 'Symp13_weight'
	   ,d.Symptom_14
	   ,iif(d.Symptom_14=s14.Symptom,s14.weight,0)as 'Symp14_weight'
	   ,d.Symptom_15
	   ,iif(d.Symptom_15=s15.Symptom,s15.weight,0)as 'Symp15_weight'
	   ,d.Symptom_16
	   ,iif(d.Symptom_16=s16.Symptom,s16.weight,0)as 'Symp16_weight'
	   ,d.Symptom_17
	   ,iif(d.Symptom_17=s17.Symptom,s17.weight,0)as 'Symp17_weight'
	 
	  ,case 
	          when d.Symp1_weight >=4 then '1'
			  when d.Symp2_weight >=4 then '1'
			  when d.Symp3_weight >=4 then '1'
			  when d.Symp4_weight >=4 then '1'
			  when d.Symp5_weight >=4 then '1'
			  when d.Symp6_weight >=4then '1'
			  when d.Symp7_weight >=4 then '1'
			  when d.Symp8_weight >=4 then '1'
			  when d.Symp9_weight >=4 then '1'
			  when d.Symp10_weight >=4 then '1'
			  when d.Symp11_weight >=4 then '1'
			  when d.Symp12_weight >=4 then '1'
			  when d.Symp13_weight >=4 then '1'
			  when d.Symp14_weight >=4 then '1'
			  when d.Symp15_weight >=4 then '1'
			  when d.Symp16_weight >=4 then '1'
			  when d.Symp17_weight >=4 then '1' 
			  else '0'
		end as 'Send_to_Doctor'
		
into stg.finaldataset	

---into stg.N_dataset
		
--- from stg.D_dataset d
 from [stg].[N_dataset] d
 inner join dbo.[Symptom-severity] s1
 on s1.Symptom=d.Symptom_1 
 inner join dbo.[Symptom-severity] s2 on
 s2.Symptom=d.Symptom_2
 inner join [dbo].[Symptom-severity] s3 on
 s3.Symptom = d.Symptom_3
 inner join [dbo].[Symptom-severity] s4 on
 s4.Symptom = d.Symptom_4
 inner join [dbo].[Symptom-severity] s5 on
 s5.Symptom = d.Symptom_5
  inner join [dbo].[Symptom-severity] s6 on
 s6.Symptom = d.Symptom_6
  inner join [dbo].[Symptom-severity] s7 on
 s7.Symptom = d.Symptom_7
  inner join [dbo].[Symptom-severity] s8 on
 s8.Symptom = d.Symptom_8
 inner join [dbo].[Symptom-severity] s9 on
 s9.Symptom = d.Symptom_9
 inner join [dbo].[Symptom-severity] s10 on
 s10.Symptom = d.Symptom_10
 inner join [dbo].[Symptom-severity] s11 on
 s11.Symptom = d.Symptom_11
 inner join [dbo].[Symptom-severity] s12 on
 s12.Symptom = d.Symptom_12
 inner join [dbo].[Symptom-severity] s13 on
 s13.Symptom = d.Symptom_13
 inner join [dbo].[Symptom-severity] s14 on
 s14.Symptom = d.Symptom_14
 inner join [dbo].[Symptom-severity] s15 on
 s15.Symptom = d.Symptom_15
 inner join [dbo].[Symptom-severity] s16 on
 s16.Symptom = d.Symptom_16
 inner join [dbo].[Symptom-severity] s17 on
 s17.Symptom = d.Symptom_17

 

 ----------- Creating ID FOR PRECAUTION TABLE 
 declare @uniquelet338 varchar(255)
set @uniquelet338 = 'D00'
SELECT *,

---iif (DISEASE=DISEASE,DISEASE,'noll') as 'getright',
IIF(DISEASE=DISEASE,concat(@uniquelet338,ROW_NUMBER()over(order by Disease )),'null')  as Disease_ID

into stg.Symptom_Precaution
from [dbo].[symptom_precaution]
---GROUP BY DISEASE,Description
ORDER BY 1;

 select *
 from dbo.symptom_precaution
 select *
 from [dbo].[Symptom-severity]
 order by 2
 SELECT DISTINCT(Symptom_10)
 FROM [stg].[D_dataset]

 select distinct(Disease),Send_to_Doctor
 from [stg].[finaldataset]