BULK INSERT MentalHealth
FROM 'C:\Users\ASUS\Desktop\git\Diploma-Work-Group-1-Social-Media\Mental_Health_and_Social_Media_Balance_Dataset_clean_v4.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    TABLOCK,
    KEEPNULLS
);
GO