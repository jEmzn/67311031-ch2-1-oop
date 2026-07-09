class Employee {
  void calculateSalary() {
    print("No salary calculation for base Employee class.");
  }
}

class PartTimeEmployee extends Employee {
  int daysWorked;
  PartTimeEmployee({this.daysWorked = 0});
  @override
  void calculateSalary() {
    print("Salary(PartTimeEmployee): ${daysWorked * 300.0} Baht for $daysWorked days worked.");
  }
}

class FullTimeEmployee extends Employee {
  int mounthWorked;
  FullTimeEmployee({this.mounthWorked = 0});
  @override
  void calculateSalary() {
    print("Salary(FullTimeEmployee): ${mounthWorked * 12000.0} Baht for $mounthWorked months worked.");
  }
}

void main() {
  List<Employee> employees = [
    Employee(),
    PartTimeEmployee(daysWorked: 20),
    FullTimeEmployee(mounthWorked: 3),
  ];
  for (var employee in employees) {
    employee.calculateSalary();
  }
}
