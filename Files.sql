CREATE TABLE Files
(
FileId int primary key identity(1001,1),
Filecontent varbinary(max) NOT NULL,
Datecreated date 
)
