@EndUserText.label: 'Employee Table'
@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.allowExtensions: true
define view entity ZI_EmployeeTable_BKR
  as select from zbkr_emp_tab
  association to parent ZI_EmployeeTable_SI as _EmployeeTableAll 
  on $projection.SingletonID = _EmployeeTableAll.SingletonID
{
  key empid as Empid,
  name as Name,
  department as Department,
  city as City,
  salary as Salary,
  currency as Currency,
  @Consumption.hidden: true
  1 as SingletonID,
  _EmployeeTableAll
}
