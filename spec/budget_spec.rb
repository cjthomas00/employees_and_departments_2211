require './lib/budget'
require './lib/department'
require './lib/employee'

RSpec.describe Budget do
  describe 'Iteration #3' do
  let(:budget) { Budget.new("2023") }
  let(:customer_service) { Department.new("Customer Service") }
  let(:finance) { Department.new("Finance") }
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"}) }
  let(:aaron) { Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) }
  let(:ricky) { Employee.new({name: "Ricky Bobby", age: "47", salary: "115000"}) }
  let(:gertrude) { Employee.new({name: "Gertrude Jones", age: "63", salary: "145000"}) }
    
    it 'exists and has attributes' do
      expect(budget).to be_instance_of(Budget)
      expect(budget.year).to eq("2023")
    end

    it 'starts w/o #departments' do
    expect(budget.departments).to eq([])
    end

    it 'can #add_department' do
      budget.add_department(customer_service)
      budget.add_department(finance)
      expect(budget.departments).to eq([customer_service, finance])
    end

    it 'can list depts with #expenses_under(amt)' do
      budget.add_department(customer_service)
      budget.add_department(finance)

      customer_service.expense(1000)
      finance.expense(250)

      expect(budget.expenses_under(500)).to eq([finance])
      
      finance.expense(250)
      expect(budget.expenses_under(500)).to eq([])
    end

    it 'can list #employee_salaries' do
      budget.add_department(customer_service)
      budget.add_department(finance)

      customer_service.hire(bobbi)
      customer_service.hire(aaron)
      finance.hire(ricky)
      finance.hire(gertrude)

      expect(budget.employee_salaries).to eq([bobbi.salary, aaron.salary, ricky.salary, gertrude.salary])
    end
  end 
end