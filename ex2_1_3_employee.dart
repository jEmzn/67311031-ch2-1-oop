class Employee {

  void calculateSalary(int daysWorked) {
    print("Salary(Employee): ${daysWorked * 500.0} Baht");
  }
}

class PartTimeEmployee extends Employee {
  @override
  void calculateSalary(int daysWorked) {
    print("Salary(PartTimeEmployee): ${daysWorked * 300.0} Baht");
  }
}

class FullTimeEmployee extends Employee {
  @override
  void calculateSalary(int daysWorked) {
    print("Salary(FullTimeEmployee): ${daysWorked * 400.0} Baht");
  }
}

void main() {
  List<Employee> employees = [
    Employee(),
    PartTimeEmployee(),
    FullTimeEmployee(),
  ];
  for (var employee in employees) {
    employee.calculateSalary(10); // Example: 10 days worked
  }
}

