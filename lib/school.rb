# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student, grade)
    @add_student
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    # roster.sort {|grade, student| student <=> grade}
    roster.each do |student, grade|
      grade.sort!
    end
  end

end
