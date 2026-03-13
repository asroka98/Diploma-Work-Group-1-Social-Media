SELECT 
    mh.User_ID,
    p.Age,
	p.Gender,
    smp.Social_Media_Platform,
	mh.Happiness_Index AS [Happiness_Index(1-10)]
FROM MentalHealth mh
JOIN SocialMediaPlatform smp
    ON mh.Platform_ID = smp.Platform_ID
Join Person p
	On mh.User_ID = p.User_ID;
