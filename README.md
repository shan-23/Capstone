# Problem Statement
I decided to embark on this assignment as a way of improving the medical system in my homeland, as we have far too many people dying from mild sicknesses such as (Asthma and Hypertension just to name a few). After careful analysis of the situation ,I realized that due to the overcrowding of our hospitals as well as a  lack of available health care professionals/ doctors patients who present with severe symptoms end up dying before even being examined by a doctor .It is my hopes that with the design of a prediction model software which records patient symptoms and make predictions as to the ailment which they might be suffering from ,As well as a weight system which would determine whether the patient should go directly to a doctor or if it is that the patient symptoms would only require them to  be seen by a nurse or a physician practitioner more lives will be saved . The proposed software would help   triage staff members to make a better assessment as to which patients should see the doctor immediately or which patient symptoms aren’t as severe hence, they can be treated by a nurse. This will result in many lives  being saved as  doctors will now be able to better care for the patients whom are severely ill .


# Project Scope 

This project will seek to alleviate the pressure/ congestion faced by hospitals in the area. This will be done through the development of a prediction software aided by  the use of a Graphic User Interface . This software will allow triage staff member to ascertain whether or not a presented patient symptoms indicates an emergency hence they would require to see a doctor urgently or if the patient’s symptoms aren’t as severe and would therefore only require the attention of a nurse practitioner. This would enable the more severe patients to have first preference to see a doctor which would in turn  alleviate / reduce  the high death toll seen by the hospitals in and around the area , As patients will now be ranked / classified based on their symptoms. In addition to this  the system will  also serve as an  unofficial means of informing triage members and new nursing staff as to a prediction of the patients ailments based on the symptoms they present. Even though this system will aid in the prediction of a patient’s disease it is advised that **A DOCTOR OR NURSE PRACTITIONER SIGNS OFF ON THE PATIENTS DISCHARGE FROM THE HOSPITAL AS THE SYSTEM CAN ONLY PREDICT WHAT IS WRONG WITH THE PATIENT AND AS WITH ANYTHING ELSE THERE IS THE POTENTIAL FOR SYSTEM ERRORS**

### Deliverable of Project 

* Collection of data/information to feed into the system. 
* Manipulation of data collected to build the prediction model 
* Design of a prototype to present to key stakeholders of the System.
* Sign off on the prototype designed by the key stakeholders of the project
* Training of staff/ Persons who will be using the system 
* Implementation of the system 
* Maintenance of the system – (this will include fixing any bugs discovered by the users of the system as well as improving the system by updating it with new diseases as well as new symptoms)



### Project stakeholders Register 
* ***Project Sponsor (Instructor/Patrick Dolinger)***
* ***Project Manager (Trainee/ Shaneil)***
* ***Data Analysts(Trainee/ Shaneil)***
* ***Programmer (Trainee/ Shaneil)***
* ***Users of the System (Trainee/ Shaneil)***




<img src="project signoff.PNG" >

# Milestone 

* ***Creation and sign off on the project Scope***
* ***Collection of data used to design the system***
* ***Data modification / wrangling***
* ***Design  and sign off of a prototype by  key stakeholders of the system***
* ***Implementation of the designed System***


# Deliverables of the Project 
The main deliverables of this project includes the following :

* ***A project Scope***
* ***Analysis of data collected***
* ***Project Work Breakdown Structure***
* ***Creation of a prototype of the System***
* ***System Documentation /Manual***
* ***Implementation of the system***
* ***System Maintenance***

# Information/Tools Used 

### Dataset 
The dataset which will be used to design the system may be found at https://www.kaggle.com/code/kunal2350/disease-prediction-with-gui and is made up of the following 4 csv files 
* ***Symptom-severity*** – which lists symptoms and assign them a weight 
* ***Dataset*** – This csv contains a list of diseases and their symptoms
* ***Symptom Description***  - Contains a list of diseases and a description of what the disease is 
* ***Symptom precaution*** – Lists various diseases and the precaution which on might take to avoid getting the disease.

### TOOLS USED 
* ***Microsoft SQL*** – This Software will be used to wrangle the data / clean up any inconsistencies which may be found within the data used in the project as well as store data/ information used in the Graphical User Interface
* ***Pycaret*** – Pycaret will be used within the project to make predictions based on the dataset csv file 
* ***Justinmind***- This software wil be used to create a prototype of the Graphical user interface which will be used in the project 
* ***Github*** – This software will be used to host the project documentation 
* ***Python*** – Python will be used to aid in the creation of the graphical interface 


### Link to First Draft  Video Below

https://clipchamp.com/watch/QRlTNOS8RV1


### PROJECT IMPLEMENTATION 
* ***Data cleansing in SSMS ***[link to ssms document](tester/new)
* ***Data prediction through the use of Pycaret /chart design through the use matplotlib and seaborne***
* ***Data prediction through the use of sklearn/chart design through the use of yellowbrick ***