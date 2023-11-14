use master
Go

Create database QuanlybanhangCoffee
Go

CREATE TABLE Account (
  Id INT PRIMARY KEY,
  Username VARCHAR(200) NOT NULL,
  Password VARCHAR(250)  NOT NULL,
  name VARCHAR(255)  NOT NULL
)
Go
INSERT INTO Account (Id, Username, Password, name)
VALUES  (1, 'admin', 'admin', 'Admin'),
        (2, 'cuong123', '123456', 'Cuong'),
        (3, 'thinh456', '123456', 'Thinh');
Go
Create Proc selectAcc
@Username VARCHAR(200)
As
Begin
  Select * From Account WHERE Username = @Username
End
Go 
Create Proc Login
@Username Varchar(200), @password Varchar(250)
As
begin
   Select *from Account
   where Username = @Username
   AND Password= @password
End
Go