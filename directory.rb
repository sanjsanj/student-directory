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

# then print the list of students
puts "The students of March 2015 cohort at Makers Academy"
puts "--------------"

students.each do |student|
  puts student
end

# then print the student count
puts "Overall, we have #{students.length} great students"
