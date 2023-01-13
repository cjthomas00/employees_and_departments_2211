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
end