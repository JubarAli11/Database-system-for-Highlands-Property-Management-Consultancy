CREATE TABLE `Branches` (
  `BranchesID` INT(),
  `Location` VARCHAR(50),
  `PostCode` VARCHAR(50),
  `OpeningTime` TIME(),
  `ClosingTIme` TIME(),
  PRIMARY KEY (`BranchesID`)
);

CREATE TABLE `Sales Department` (
  `SalesDepartmentID` INT(),
  `StaffID` INT(),
  `CustomerID` INT(),
  `ProductInformationID` INT(),
  `DateID` INT(),
  `BranchesID` INT(),
  `TotalSales` INT(),
  `GrandTotal` INT(),
  `AverageSale` INT(),
  PRIMARY KEY (`SalesDepartmentID`),
  KEY `FK` (`StaffID`, `CustomerID`, `ProductInformationID`, `DateID`, `BranchesID`)
);

CREATE TABLE `Staff` (
  `StaffID` INT(),
  `StaffRole` VARCHAR(50),
  `FirstName` VARCHAR(50),
  `Surname` VARCHAR(50),
  `Salary` DECIMAL(),
  PRIMARY KEY (`StaffID`)
);

CREATE TABLE `Product Information` (
  `ProductInformationID` INT(),
  `HouseType` VARCHAR(100),
  `Facilities` VARCHAR(100),
  `Rooms` VARCHAR(20),
  PRIMARY KEY (`ProductInformationID`)
);

CREATE TABLE `Customer` (
  `CustomerID` INT(),
  `FirstName` VARCHAR(50),
  `Surname` VARCHAR(50),
  `DOB` DATE(),
  `Gender` VARCHAR(50),
  `Telephone` VARCHAR(20),
  `Address` VARCHAR(50),
  `PostCode` VARCHAR(50),
  PRIMARY KEY (`CustomerID`)
);

CREATE TABLE `Date` (
  `DateID` INT(),
  `Date` DATE(),
  `Day` VARCHAR(10),
  `Month` VARCHAR(10),
  `Year` INT(4),
  PRIMARY KEY (`DateID`)
);

