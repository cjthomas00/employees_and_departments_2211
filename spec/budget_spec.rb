require './lib/budget'
require './lib/department'
require './lib/employee'

RSpec.describe Budget do
  describe 'Iteration #3' do
  let(:budget) { Budget.new("2023") }
    
    it 'exists and has attributes' do
      expect(budget).to be_instance_of(Budget)
      expect(budget.year).to eq("2023")
    end

    it 'starts w/o #departments' do
    expect(budget.departments).to eq([])
    end
  end 
end