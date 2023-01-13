require './lib/department'
require './lib/employee'

RSpec.describe Department do 
  describe 'Iteration #2' do
  let(:customer_service) { Department.new("Customer Service") }
  let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "100000"}) }
  let(:aaron) { Employee.new({name: "Aaron Tanaka", age: "25", salary: "90000"}) }

    it 'exists and has attributes' do
      expect(customer_service).to be_instance_of(Department)
      expect(customer_service.name).to eq("Customer Service")
    end

    it 'starts without #employees' do
      expect(customer_service.employees).to eq([])
    end

    it 'can #hire employees' do
      customer_service.hire(bobbi)
      customer_service.hire(aaron)
      expect(customer_service.employees).to eq([bobbi, aaron])
    end

    it 'starts without any #expenses' do
      expect(customer_service.expenses).to eq(0)
    end
  end
end