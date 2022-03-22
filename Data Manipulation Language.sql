/****** Script for SelectTopNRows command from SSMS  ******/
SELECT *
  FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Restaurant];


  SELECT *
  FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Review];

    SELECT *
  FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Suggest];

      SELECT *
  FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.User];

  SELECT [resName] AS 'Restaurant Name', CONCAT([resStreetAddress],', ',[resCity],', ', [resState],', ',[resPostalCode]) AS 'Restaurant Address', 
  [resStars] AS 'Restaurant Rating', [resReviewCount] AS 'Number of reviews received',  CASE WHEN ( [resHasTakeout] =1 ) THEN 'YES' ELSE 'NO' END
   AS 'Offers Takeout', CONCAT('MONDAY: ',[resMondayTimings],'TUESDAY: ',[resTuesdayTimings],'WEDNESDAY: ',[resWednesdayTimings],'THURSDAY: ',[resThursdayTimings],
   'FRIDAY: ',[resFridayTimings], 'SATURDAY: ', [resSaturdayTimings], 'SUNDAY: ', [resSundayTimings]) AS 'Restaurant Timings'
   FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Restaurant];

   CREATE VIEW [Restaurant_Report] AS 
   SELECT [resName] AS 'Restaurant Name', CONCAT([resStreetAddress],', ',[resCity],', ', [resState],', ',[resPostalCode]) AS 'Restaurant Address', 
  [resStars] AS 'Restaurant Rating', [resReviewCount] AS 'Number of reviews received',  CASE WHEN ( [resHasTakeout] =1 ) THEN 'YES' ELSE 'NO' END
   AS 'Offers Takeout', CONCAT('MONDAY: ',[resMondayTimings],'TUESDAY: ',[resTuesdayTimings],'WEDNESDAY: ',[resWednesdayTimings],'THURSDAY: ',[resThursdayTimings],
   'FRIDAY: ',[resFridayTimings], 'SATURDAY: ', [resSaturdayTimings], 'SUNDAY: ', [resSundayTimings]) AS 'Restaurant Timings'
   FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Restaurant] res;

   SELECT res.[resName] AS 'Restaurant Name', rev.[revStars] AS 'Review Rating', rev.[revUpvotes] AS 'Review Upvotes', rev.[revDate] AS 'Date of Review', rev.[revText] AS 'Review' 
   FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Restaurant] res INNER JOIN [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Review] rev ON 
   res.[resId] = rev.[resId] ORDER BY res.[resName] ;

   CREATE VIEW [Review_Report] AS 
    SELECT res.[resName] AS 'Restaurant Name', rev.[revStars] AS 'Review Rating', rev.[revUpvotes] AS 'Review Upvotes', rev.[revDate] AS 'Date of Review', rev.[revText] AS 'Review' 
   FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Restaurant] res INNER JOIN [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Review] rev ON 
   res.[resId] = rev.[resId]  ;

   SELECT res.[resName] AS 'Restaurant Name', sug.[sugComplimentCount] AS 'Suggestion Upvotes', sug.[sugDate] AS 'Date of Suggestion', sug.[sugText] AS 'Suggestion' 
   FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Restaurant] res INNER JOIN [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Suggest] sug ON 
   res.[resId] = sug.[resId] ORDER BY res.[resName] ;

    CREATE VIEW [Suggestion_Report] AS  
	SELECT res.[resName] AS 'Restaurant Name', sug.[sugComplimentCount] AS 'Suggestion Upvotes', sug.[sugDate] AS 'Date of Suggestion', sug.[sugText] AS 'Suggestion' 
   FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Restaurant] res INNER JOIN [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.Suggest] sug ON 
   res.[resId] = sug.[resId];


   SELECT u.[userName] AS 'Name of the Reviewer', u.[userReviewCount] AS 'Number of reviews submitted by Reviewer', u.[userYelpingSince] AS 'When the Reviewer joined Terps & Burps',
   u.[userFriends] AS 'Number of friends', u.[userUseful] AS 'Count of users that found the review useful', u.[userAverageStars] AS 'The average rating of all ratings provided by Reviewer',
   CASE WHEN ((u.[userElite] = 1 ) and (u.[userFriends] >100) and (u.[userReviewCount] > 50) and (u.[userUseful] > 500)) THEN 'Highly Credible' ELSE 'Moderately Credible' END AS 'Reviewer Credibility'
   FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.User] u ORDER BY u.[userUseful] DESC;

   CREATE VIEW [User_Credibility_Report] AS  
   SELECT u.[userName] AS 'Name of the Reviewer', u.[userReviewCount] AS 'Number of reviews submitted by Reviewer', u.[userYelpingSince] AS 'When the Reviewer joined Terps & Burps',
   u.[userFriends] AS 'Number of friends', u.[userUseful] AS 'Count of users that found the review useful', u.[userAverageStars] AS 'The average rating of all ratings provided by Reviewer',
   CASE WHEN ((u.[userElite] = 1 ) and (u.[userFriends] >100) and (u.[userReviewCount] > 50) and (u.[userUseful] > 500)) THEN 'Highly Credible' ELSE 'Moderately Credible' END AS 'Reviewer Credibility'
   FROM [BUDT703_Project_0501_09].[dbo].[TerpsandBurps.User] u ;