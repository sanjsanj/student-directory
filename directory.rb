# creating an array of students
students = [
  {:name => "Andrea Armiliato", :cohort => :march},
  {:name => "Caron Stace", :cohort => :march},
  {:name => "Maciej Kurek", :cohort => :march},
  {:name => "Paul Wallis", :cohort => :march},
  {:name => "Guillaume Bouffard", :cohort => :march},
  {:name => "George McGowan", :cohort => :march},
  {:name => "Sarah O'Connor", :cohort => :march},
  {:name => "Richard Lynch", :cohort => :march},
  {:name => "Max Weaver", :cohort => :march},
  {:name => "Phoebe Hugh", :cohort => :march},
  {:name => "Sanjay Purswani", :cohort => :march},
  ]

def print_header
  puts "The students of March 2015 cohort at Makers Academy"
  puts "--------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.length} great students"
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit enter twice"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat the code
  while !name.empty? do
    # add the students hash to the array
    students << {:name => name, :cohort => :march}
    puts "Now we have #{students.length} students"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

students = input_students
print_header
print(students)
print_footer(students)
