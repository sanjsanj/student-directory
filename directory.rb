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

print_header
print(students)
print_footer(students)
