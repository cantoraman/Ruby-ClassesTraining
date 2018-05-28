class Student

def initialize (student_name, cohort)
  @student_name = student_name
  @cohort = cohort
end

def get_student_name()
return @student_name
end

def get_student_cohort()
return @cohort
end

def set_student_name(new_name)
@student_name=new_name
end

def set_student_cohort(new_cohort)
@cohort=new_cohort
end

def student_speaker()
return "I will talk"
end


def student_confessor(language)
  return (language + " is my fave!")
end










end
