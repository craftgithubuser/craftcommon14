CREATE TABLE `mydb`.`customers` (
  `Cust_ID` INT NOT NULL,
  `Cust_FirstName` VARCHAR(45) NOT NULL,
  `Cust_LastName` VARCHAR(45) NOT NULL,
  `Cust_NickName` VARCHAR(45) NULL,
  `Cust_Age` INT NULL,
  `Cust_Gender` VARCHAR(45) NOT NULL,
  `Cust_Country` VARCHAR(45) NOT NULL,
  `Cust_Salary` DECIMAL(5) NULL COMMENT 'Schema_Mydb\nTable_ Customer \nFirst MySQL database',
  PRIMARY KEY (`Cust_ID`))
COMMENT = 'My First Schema database';