class Budget
  attr_reader :year,
              :departments

  def initialize(year)
    @year = year
    @departments = []
  end

  def add_department(dept)
    @departments << dept
  end

  def expenses_under(amt)
    @departments.find_all do |dept|
      dept.expenses < amt
    end
  end

  def employee_salaries
    salaries = @departments.map do |dept|
      dept.employees.map do |employee|
        employee.salary
      end 
    end.flatten
    salaries
  end
end