
require_relative '../models/teacher'
require_relative '../models/student'
require_relative '../models/subject'

person = Teacher.where(id: 3)

puts person.first[:first_name].inspect
puts person.first[:email]


