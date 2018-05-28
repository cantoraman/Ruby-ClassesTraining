require ("minitest/autorun")
require_relative ("../students")

class StudentsTest < Minitest::Test

def test_student_name
student=Student.new("Can", "E22")
assert_equal("Can", student.get_student_name())
end

def test_cohort
  student=Student.new("Can", "E22")
  assert_equal("E22", student.get_student_cohort())
end

def test_set_student_name
student=Student.new("Can", "E22")
student.set_student_name("Haydar")
assert_equal("Haydar", student.get_student_name())
end

def test_set_cohort
  student=Student.new("Can", "E22")
  student.set_student_cohort("E0")
  assert_equal("E0", student.get_student_cohort())
end


def test_student_speaker
student=Student.new("Can", "E22")
assert_equal("I will talk", student.student_speaker())

end


def test_student_confessor
student=Student.new("Can", "E22")
assert_equal("c# is my fave!", student.student_confessor("c#"))
end

end
# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").
