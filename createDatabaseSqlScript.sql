USE PracaDyplomowaWSB;
GO
CREATE TABLE Person (
    UserID INT PRIMARY KEY,
    Age INT NULL,
    Gender VARCHAR(20) NULL
);

GO
CREATE TABLE SocialMediaPlatform (
    PlatformKey INT IDENTITY(1,1) PRIMARY KEY,
    PlatformName VARCHAR(50) NOT NULL UNIQUE
);

GO
CREATE TABLE MentalHealth (
    MentalHealthKey INT IDENTITY(1,1) PRIMARY KEY,

    UserID INT NOT NULL,
    PlatformKey INT NOT NULL,

    ScreenTimeHours DECIMAL(4,2) NULL,
    SleepQuality INT NULL,
    StressLevel INT NULL,
    ExerciseFrequency INT NULL,
    DaysWithoutSocialMedia INT NULL,
    HappinessIndex INT NULL,

    CONSTRAINT FK_MentalHealth_Person
        FOREIGN KEY (UserID)
        REFERENCES Person(UserID),

    CONSTRAINT FK_MentalHealth_Platform
        FOREIGN KEY (PlatformKey)
        REFERENCES SocialMediaPlatform(PlatformKey)
);
GO
