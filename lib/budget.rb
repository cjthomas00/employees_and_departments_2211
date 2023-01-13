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
    salaries = []
    @departments.each do |dept|
      dept.employees.each do |employee|
        salaries << employee.salary
      end 
    end
    salaries
  end
end