-- Standardise date format

select *
from dbo.NashvilleData

select SaleDate, CONVERT(Date, SaleDate)
from CleaningSQLforPortfolio..NashvilleData

ALTER TABLE NashvilleData
ADD SalesDateConv Date;

UPDATE NashvilleData
SET SalesDateConv = CONVERT(Date, SaleDate)

select SalesDateConv, CONVERT(Date, SaleDate)
from CleaningSQLforPortfolio..NashvilleData