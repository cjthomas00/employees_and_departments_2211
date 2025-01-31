require './lib/employee'

RSpec.describe Employee do
  describe 'Iteration #1' do
    let(:bobbi) { Employee.new({name: "Bobbi Jaeger", age: "30", salary: "$100000"})}

    it 'exists and has attributes' do
      expect(bobbi).to be_instance_of(Employee)
      expect(bobbi.name).to eq("Bobbi Jaeger")
      expect(bobbi.age).to eq(30)
      expect(bobbi.salary).to eq(100000)
    end

    it 'can #give_raise' do
      bobbi.give_raise(5000)
      expect(bobbi.salary).to eq(105000)
    end
  end
end