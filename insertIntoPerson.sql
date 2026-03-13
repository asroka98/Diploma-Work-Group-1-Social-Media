BULK INSERT Person
FROM 'C:\Users\ASUS\Desktop\git\Diploma-Work-Group-1-Social-Media\Mental_Health_and_Social_Media_Balance_Dataset_clean_Person.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    KEEPNULLS
);