# code here!
class School
attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(new_student, grade)
    roster[grade] ||= []
    roster[grade] << new_student
  end

  def grade(the_grade)
    roster[the_grade]
  end

  def sort
    result = {}
    roster.each do | grade, students |
      result[grade] = students.sort
    end
    result
  end
end
