SELECT 
    mh.User_ID,
    mh.Exercise_Frequency AS [Exercise_Frequency(week)],
    mh.Sleep_Quality AS [Sleep_Quality(1-10)],
	mh.Stress_Level AS [Stress_Level(1-10)],
    smp.Social_Media_Platform
FROM MentalHealth mh
JOIN SocialMediaPlatform smp
    ON mh.Platform_ID = smp.Platform_ID;