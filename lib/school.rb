class School
  attr_reader :name, :roster, :student


  def initialize(name)
    @name = name
    @student = student
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.each do |grade, students|
      roster[grade] = students.sort
    end
    roster
  end
end
