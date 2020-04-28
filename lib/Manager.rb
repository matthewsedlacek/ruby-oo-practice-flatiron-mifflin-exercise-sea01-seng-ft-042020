require 'pry'

class Manager
    attr_accessor :name, :department, :age

    @@all = []

    def initialize (name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end
    
    def employees
        Employee.all.select {|employee| employee.manager_name ==self}
    end

    def hire_employee(name, salary)
        Employee.new(name,salary,self)
    end

    def self.all_departments
        binding.pry
        self.all.map {|manager| manager.department}
    end

    def self.all
        @@all
    end

    def self.manager_ages
        manager_ages = self.all.map {|manager| manager.age}
    end

    def self.number_of_managers
        number_of_managers = self.all.length
    end

    def self.average_age
        manager_ages.sum / number_of_managers
    end

end

