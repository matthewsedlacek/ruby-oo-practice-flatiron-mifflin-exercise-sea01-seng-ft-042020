require 'pry'

class Employee
    attr_accessor :name, :salary, :manager_name

    @@all = []

    def initialize (name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name

        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary_amount)
        self.all.select {|employee| employee.salary >= salary_amount}
    end


    def self.find_by_department(department)
        department_found = Manager.all.find {|manager| manager.department == department}
        department_found.employees[0]
    end



end
