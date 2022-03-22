# Database-Management---Restuarant-Reviews
### Prerequisite
Microsoft SQL Server 

## Contents
## Project Description
Developed a database management system for Mexican Restaurants across College Park to store, manipulate and analyze customer data. Then designed an ER Model (entity relation model) to show specific relations that exsits between different entities, defined business rules to impose contraints on specific aspect of the database. Lastly I performed SQL queries and generated and analyzed reports using complex queries to track customer traffic and provide reviews and suggestions to college students.

## Basic Structure:
#### Functional requirements
1. When a restaurant is deleted from the database, the review information for that restaurant should be deleted from the database.
2. When the restaurant information is updated in the database, the review information for that restaurant should be updated accordingly.
3. When the user is deleted from the database, the review information of that user must be deleted from the database.
4. When the user is updated in the database, the review information for that user must be updated in the database.
5. When the user is deleted from the database, the suggestion information of that user must be deleted from the database.
6. When the user is updated in the database, the suggestion information for that user must be updated in the database.
7. When a restaurant is deleted from the database, the suggestion information for that restaurant should be deleted from the database.
8. When the restaurant information is updated in the database, the suggestion information for that restaurant should be updated accordingly.

#### Entity Relation (ER) diagram and constraints


#### Relational database schema
* Restaurant (resId, resName, resStreetAddress, resCity, resState, resPostalCode, resLatitude, resLongitude, resStars, resReviewCount, resIsOpen, resHasTakeout, resMondayTimings, resTuesdayTimings, resWednesdayTimings, resThursdayTimings, resFridayTimings, resSaturdayTimings, resSundayTimings)

* User (userId, userName, userReviewCount, userYelpingSince, userFriends, userUseful, userFunny, userCool, userFuns, userElite, userAverageStars)

* Review (revId, revStars, revDate, revText, revUpvotes, userId, resId)

* Suggest (sugId, sugText, sugDate, sugComplimentCount, userId, resId)

## Data Source:
We obtained our dataset from the yelp dataset website: https://www.yelp.com/dataset. The data dictionary for the above mentioned dataset can be found here: https://www.yelp.com/dataset/documentation/main. Due to the extremely large size of the dataset we were unable to parse through the data, therefore, as a solution we imported the dataset into python to parse through the data using the json library. Upon analyzing the data we realised that it did not contain any information regarding restaurants present in Maryland. As a result, we scraped the website yelp.com to obtain our final dataset.


## Implementation:
Creating tables
Created 4 tables for each of the entity by using Data Definition language. Also specified the contraints for each entity.

Inserting data
Interest respective data to the tables by using insert into function which is widely used in SQL as a Data Manipulation Language.

## Queries:
Performed queries for the following statements:
1. Find all the information regarding the restaurants in one single report.
2. Find the reviews for a particular restaurant.
3. Find suggestions for a particular restaurant.
4. Find the credibility of the reviewers by looking at the ratings received by each reviewer.

### Applications
Refer to the application document




