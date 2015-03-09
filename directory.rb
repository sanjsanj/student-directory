def print_header
  print "The students of March 2015 cohort at Makers Academy\n"
  print "--------------\n"
end

def print_students(students)
  students.each_with_index do |student, index|
    linewidth = 30
    print "#{index + 1}. #{student[:name]} of #{student[:cohort]} cohort".ljust(linewidth)
    print "#{student[:hobby]} hobby".center(linewidth)
    print "and COB is #{student[:cob]}\n".rjust(linewidth)
  end
end

def print_footer(names)
  print "Overall, we have #{names.length} great students\n"
end

def input_student_data
  print "Please enter the names of the student, their cohort, their hobby and country of birth seperated by ',' without any spaces\n"
  print "To finish, just hit enter twice\n"
  students = Array.new
  name = gets.chomp
  while !name.empty? do
    studary = name.split(",")
    students << {:name => studary[0], :cohort => studary[1].to_sym, :hobby => studary[2], :cob => studary[3]}
    print "Now we have #{students.length} students\n"
    name = gets.chomp
  end
  students
end

students = input_student_data
print_header
print_students(students)
print_footer(students)
