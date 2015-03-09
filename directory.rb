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

def print_students_march(students)
  students.each_with_index do |student, index|
    linewidth = 30
    if student[:cohort] == :march
    print "#{index + 1}. #{student[:name]} of #{student[:cohort]} cohort".ljust(linewidth)
    print "#{student[:hobby]} hobby".center(linewidth)
    print "and COB is #{student[:cob]}\n".rjust(linewidth)
    else
      next
    end
  end
end

def print_footer(names)
  names.length == 1 ? pluralize = "student" : pluralize = "students"
  print "Overall, we have #{names.length} great #{pluralize}\n"
end

def input_student_data
  print "Please enter the names of the student, their cohort, their hobby and country of birth seperated by ',' without any spaces\n"
  print "To finish, just hit enter twice\n"
  students = []
  name = gets.strip
  while !name.empty? do
    studary = name.split(",")
    students << {:name => studary[0], :cohort => studary[1].to_sym, :hobby => studary[2], :cob => studary[3]}
    students.length == 1 ? pluralize = "student" : pluralize = "students"
    print "Now we have #{students.length} #{pluralize}\n"
    name = gets.strip
  end
  students
end

# students = input_student_data
# print_header
# print_students(students)
# print_students_march(students)
# print_footer(students)

def interactive_menu
  students = []
  loop do
    #1
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    #2
    selection = gets.chomp
    #3
    case selection
      when "1"
      students = input_student_data
      when "2"
      print_header
      print_students(students)
      print_footer(students)
      when "9"
      exit
    else
      puts "I don't know what you meant, try again"
    end
  end
end

interactive_menu