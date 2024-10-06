using hr from '../db/employee-dbmodel';

service EmployeeManagement {

entity Employees as select from hr.employee.Employee;

}