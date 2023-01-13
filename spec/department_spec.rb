require './lib/department'
require './lib/employee'

RSpec.describe Department do 
  describe 'Iteration #2' do
  let(:customer_service) { Department.new("Customer Service") }

    it 'exists and has attributes' do
      expect(customer_service).to be_instance_of(Department)
      expect(customer_service.name).to eq("Customer Service")
    end
  end
end