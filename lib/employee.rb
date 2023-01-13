class Employee
  attr_reader :name, 
              :age,
              :salary
  
  def initialize(info)
    @name = info[:name]
    @age = info[:age].to_i
    @salary = info[:salary].delete_prefix("$").to_i
  end

  def give_raise(amt)
    @salary += amt
  end
end