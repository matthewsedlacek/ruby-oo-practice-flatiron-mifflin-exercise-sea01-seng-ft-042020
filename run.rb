require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
matthew = Manager.new("Matthew","Engineering", 28)
bryan = Manager.new("Bryan","Accounting", 27)

matthew.hire_employee("jim",65000)
matthew.hire_employee("john", 40000)
bryan.hire_employee("Sean", 25000)


mike = Employee.new("Mike",45000, matthew)
david = Employee.new("David", 63899, bryan)

matthew.employees
Manager.average_age
Employee.paid_over(60000)
Employee.find_by_department("Engineering")

mike.tax_bracket

binding.pry
puts "done"
