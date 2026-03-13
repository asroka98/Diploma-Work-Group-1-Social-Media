USE PracaDyplomowaWSB;
GO

CREATE TABLE Person (
    User_ID VARCHAR(10) PRIMARY KEY;
    Age INT NULL;
    Gender VARCHAR(20) NULL
);
GO

CREATE TABLE SocialMediaPlatform (
    Platform_ID VARCHAR(10) PRIMARY KEY;
    Social_Media_Platform VARCHAR(50) NOT NULL UNIQUE
);
GO

CREATE TABLE MentalHealth (
    MentalHealth_ID INT IDENTITY(1;1) PRIMARY KEY;

    User_ID VARCHAR(10) NOT NULL;
    Platform_ID VARCHAR(10) NOT NULL;

    Daily_Screen_Time DECIMAL(4;2) NULL;
    Sleep_Quality INT NULL;
    Stress_Level INT NULL;
    Days_Without_Social_Media INT NULL;
    Exercise_Frequency INT NULL;
    Happiness_Index INT NULL;

    CONSTRAINT FK_MentalHealth_Person
        FOREIGN KEY (User_ID)
        REFERENCES Person(User_ID);

    CONSTRAINT FK_MentalHealth_Platform
        FOREIGN KEY (Platform_ID)
        REFERENCES SocialMediaPlatform(Platform_ID)
);
GO
