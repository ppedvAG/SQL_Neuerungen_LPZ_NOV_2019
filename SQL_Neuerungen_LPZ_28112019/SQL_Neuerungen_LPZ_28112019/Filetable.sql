

CREATE TABLE EmployeeContracts AS FILETABLE
  WITH
  (
    FILETABLE_DIRECTORY = 'Arbeitsvertr�ge'
  ) 
GO

select * from employeeContracts
