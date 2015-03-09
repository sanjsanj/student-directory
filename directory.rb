# creating an array of students
students = [
  "Andrea Armiliato",
  "Caron Stace",
  "Maciej Kurek",
  "Paul Wallis",
  "Guillaume Bouffard",
  "George McGowan",
  "Sarah O'Connor",
  "Richard Lynch",
  "Max Weaver",
  "Phoebe Hugh",
  "Sanjay Purswani"
  ]

def print_header
  puts "The students of March 2015 cohort at Makers Academy"
  puts "--------------"
end

def print(names)
  names.each do |name|
    puts name
  end
end

def print_footer(names)
  puts "Overall, we have #{names.length} great students"
end

print_header
print(students)
print_footer(students)
