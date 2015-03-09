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
  print "The students of March 2015 cohort at Makers Academy\n"
  print "--------------\n"
end

def print_students(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_students_with_a(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)" if student[:name][0].downcase == "a"
  end
end

def print_students_shorter12(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].length < 12
  end
end

def print_students_noeach(students)
  i = 0
  while i < students.length do
    puts "#{i + 1}. #{students[i][:name]} (#{students[i][:cohort]} cohort)"
    i += 1
  end
end

def print_footer(names)
  print "Overall, we have #{names.length} great students\n"
end

def input_students
  print "Please enter the names of the students\n"
  print "To finish, just hit enter twice\n"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat the code
  while !name.empty? do
    # add the students hash to the array
    students << {:name => name, :cohort => :march}
    print "Now we have #{students.length} students\n"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

students = input_students
print_header
# print_students(students)
# print_students_with_a(students)
# print_students_shorter12(students)
print_students_noeach(students)
print_footer(students)
