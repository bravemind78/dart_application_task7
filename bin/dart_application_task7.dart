class Employee {
  String? name;
  int? ssn;
  String? address;
  String? nationality;
  set nameEmployee(String value) => name = value;
  get nameEmployee2 => name;
  set addressEmployee(String value) => address = value;
  get addressEmployee2 => address;
  set nationalityEmployee(String value) => nationality = value;
  get nationalityEmployee2 => nationality;
}

class SalilredEmployee extends Employee {
  var bonus = 0;
  var deductions = 0;
  set salilredBonus(var value) => bonus = value;
  get sailredBonus2 => bonus;
  set salilreddeductions(var value) => deductions = value;
  get sailreddeductions2 => deductions;
  BaseplusCommEmp object_base1 = BaseplusCommEmp();
  dynamic salaryCalculator() {
    return (object_base1.base_salery + bonus + deductions);
  }
}

class HourlyEmployee extends Employee {
  var working_hours = 0;
  var hour_rate = 0;
  set workingHours(var value) => working_hours = value;
  get workingHours2 => working_hours;
  set hourRate(var value) => hour_rate = value;
  get hourRate2 => hour_rate;
  dynamic incomeCalculator() {
    return (working_hours * hour_rate);
  }
}

class CommEmployee extends Employee {
  double gross_sales = 0;
  double commision_rate = 0;
  set grossSales(double value) => gross_sales = value;
  get grossSales2 => gross_sales;
  set commisionRate(double value) => commision_rate = value;
  get commisionRate2 => commision_rate;
  dynamic commisionCalculator() {
    return (gross_sales * commision_rate);
  }
}

class BaseplusCommEmp extends CommEmployee {
  var base_salery = 0;
  set baseSalery(var value) => base_salery = value;
  get baseSalery2 => base_salery;
  dynamic totalSalaryCalculation() {
    return (baseSalery2 + commisionCalculator());
  }
}

class Displaydata extends BaseplusCommEmp {
  SalilredEmployee object_salilredEmployee1 = SalilredEmployee();
  HourlyEmployee object_hourlyEmployee1 = HourlyEmployee();
  Displaydata(
      String name,
      String address,
      String nationality,
      double commision_rate,
      double gross_sales,
      var bonus,
      var deduction,
      var working_hours,
      var hour_rate)
      : super() {
    this.name = name;
    this.address = address;
    this.nationality = nationality;
    this.commision_rate = commision_rate;
    this.gross_sales = gross_sales;
    object_salilredEmployee1.bonus = bonus;
    object_salilredEmployee1.deductions = deduction;
    object_hourlyEmployee1.working_hours = working_hours;
    object_hourlyEmployee1.hour_rate = hour_rate;
  }
  void printData_CommEmployee() {
    print(
        "the name of Employee is : ${this.name} \nthe address is ${this.address}\nthe nationalit is ${this.nationality}\nthe salary is ${commisionCalculator()}");
  }

  void printData_SalilredEmployee() {
    print(
        "the name of Employee is : ${this.name} \nthe address is ${this.address}\nthe nationality is ${this.nationality}\nthe salary is ${object_salilredEmployee1.salaryCalculator()}");
  }

  void printData_HourlyEmployee() {
    print(
        "the name of Employee is : ${this.name} \nthe address is ${this.address}\nthe nationality is ${this.nationality}\nthe salary is ${object_hourlyEmployee1.incomeCalculator()}");
  }
}

void main() {
  Displaydata employee_commEmploy =
      Displaydata("nader", "Madinty", "Egyptian", 0.1, 50000, 0, 0, 0, 0);
  employee_commEmploy.printData_CommEmployee();
  Displaydata employee_SalilredEmployee =
      Displaydata("Ahmed", "El Shrouk", "Egyptian", 0, 0, 2000, 250, 0, 0);
  print("*" * 20);
  employee_SalilredEmployee.printData_SalilredEmployee();
  Displaydata employee_hourlyEmployee =
      Displaydata("Samir", "Mansoura", "Egyptian", 0, 0, 0, 0, 400, 10);
  print("*" * 20);
  employee_hourlyEmployee.printData_HourlyEmployee();
}
