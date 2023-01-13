require './lib/budget'
require './lib/department'
require './lib/employee'

RSpec.describe Budget do
  describe 'Iteration #3' do
  let(:budget) { Budget.new("2023") }
  let(:customer_service) { Department.new("Customer Service") }
  let(:finance) { Department.new("Finance") }
    
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
  end 
end