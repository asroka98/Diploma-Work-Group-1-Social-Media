SELECT 
    mh.User_ID,
    mh.Days_Without_Social_Media AS [Days_Without_Social_Media],
    mh.Happiness_Index AS [Happiness_Index(1-10)],
    smp.Social_Media_Platform
FROM MentalHealth mh
JOIN SocialMediaPlatform smp
    ON mh.Platform_ID = smp.Platform_ID;
