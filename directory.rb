def print_header
  print "The students of March 2015 cohort at Makers Academy\n"
  print "--------------\n"
end

def print_students(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student[:name]} (#{student[:cohort]} cohort) #{student[:hobby]} hobby and COB is #{student[:cob]}."
  end
end

def print_footer(names)
  print "Overall, we have #{names.length} great students\n"
end

def input_student_data
  print "Please enter the names of the student, their hobby and country of birth seperate by ',' without any spaces\n"
  print "To finish, just hit enter twice\n"
  students = []
  name = gets.chomp
  while !name.empty? do
    studary = name.split(",")
    students << {:name => studary[0], :cohort => :march, :hobby => studary[1], :cob => studary[2]}
    print "Now we have #{students.length} students\n"
    name = gets.chomp
  end
  students
end

students = input_student_data
print_header
print_students(students)
print_footer(students)
